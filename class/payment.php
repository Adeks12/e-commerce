<?php

class Payment extends dbobject
{
    private $apiKey;
    private $secretKey;
    private $baseUrl;
    private $webhookSecret;
    
    public function __construct()
    {
        parent::__construct();
        // Load payment gateway configuration from database
        $settings = $this->getPaymentSettings();
        $this->apiKey = $settings['gateway_api_key'];
        $this->secretKey = $settings['gateway_secret_key'];
        $this->baseUrl = $settings['gateway_base_url'];
        $this->webhookSecret = $settings['gateway_webhook_secret'];
    }

    private function getPaymentSettings()
    {
        $settings = [];
        $result = $this->getrecordset('payment_settings', '1', '1');
        
        if ($result) {
            foreach ($result as $row) {
                $settings[$row['setting_key']] = $row['setting_value'];
            }
        }
        
        return $settings;
    }

    public function initializePayment($data)
    {
        try {
            // Validate required fields
            if (empty($data['amount']) || empty($data['email']) || empty($data['reference'])) {
                return json_encode([
                    'response_code' => 400,
                    'response_message' => 'Missing required fields'
                ]);
            }

            // Create payment record
            $paymentData = [
                'reference' => $data['reference'],
                'amount' => $data['amount'],
                'email' => $data['email'],
                'status' => 'pending',
                'payment_method' => $data['payment_method'] ?? 'card',
                'created' => date('Y-m-d H:i:s')
            ];

            $paymentId = $this->doDbTblInsert('payments', array_keys($paymentData), array_values($paymentData));

            if (!$paymentId) {
                return json_encode([
                    'response_code' => 500,
                    'response_message' => 'Failed to create payment record'
                ]);
            }

            // Initialize payment with gateway
            $response = $this->callPaymentGateway('POST', '/transactions/initialize', [
                'amount' => $data['amount'] * 100, // Convert to kobo/cents
                'email' => $data['email'],
                'reference' => $data['reference'],
                'callback_url' => $this->getCallbackUrl($data['reference'])
            ]);

            return $response;

        } catch (Exception $e) {
            return json_encode([
                'response_code' => 500,
                'response_message' => $e->getMessage()
            ]);
        }
    }

    public function verifyPayment($reference)
    {
        try {
            $response = $this->callPaymentGateway('GET', "/transactions/verify/{$reference}");
            
            if ($response['status'] === 'success') {
                // Update payment record
                $this->updatePaymentStatus($reference, 'completed', $response);

                // Create transaction record
                $this->createTransactionRecord($reference, $response);
            }

            return json_encode($response);

        } catch (Exception $e) {
            return json_encode([
                'response_code' => 500,
                'response_message' => $e->getMessage()
            ]);
        }
    }

    public function updatePaymentStatus($reference, $status, $response = null)
    {
        $updateData = [
            'status' => $status,
            'updated' => date('Y-m-d H:i:s')
        ];

        if ($response) {
            $updateData['gateway_response'] = json_encode($response);
        }

        return $this->doDbTblUpdate(
            'payments',
            array_keys($updateData),
            array_values($updateData),
            ['reference'],
            [$reference]
        );
    }

    public function updateTransferStatus($reference, $status, $response = null)
    {
        // Update transfer status in your transfer table
        // This is a placeholder - implement based on your transfer table structure
        return true;
    }

    public function verifyWebhookSignature($payload, $signature)
    {
        if (empty($signature)) {
            return false;
        }

        $computedSignature = hash_hmac('sha512', $payload, $this->webhookSecret);
        return hash_equals($computedSignature, $signature);
    }

    private function createTransactionRecord($reference, $paymentResponse)
    {
        $payment = $this->getrecordset('payments', 'reference', $reference);
        
        if (!$payment) {
            throw new Exception('Payment record not found');
        }

        $transactionData = [
            'payment_id' => $payment[0]['id'],
            'transaction_amount' => $payment[0]['amount'],
            'transaction_desc' => 'Payment for ' . $reference,
            'response_code' => $paymentResponse['status'] === 'success' ? '00' : '99',
            'response_message' => $paymentResponse['message'],
            'created' => date('Y-m-d H:i:s')
        ];

        return $this->doDbTblInsert('transaction_table', array_keys($transactionData), array_values($transactionData));
    }

    private function callPaymentGateway($method, $endpoint, $data = [])
    {
        $curl = curl_init();
        
        curl_setopt_array($curl, [
            CURLOPT_URL => $this->baseUrl . $endpoint,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CUSTOMREQUEST => $method,
            CURLOPT_HTTPHEADER => [
                "Authorization: Bearer " . $this->secretKey,
                "Content-Type: application/json"
            ]
        ]);

        if ($method === 'POST') {
            curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
        }

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
            throw new Exception("cURL Error: " . $err);
        }

        return json_decode($response, true);
    }

    private function getCallbackUrl($reference)
    {
        return "https://" . $_SERVER['HTTP_HOST'] . "/payment/callback.php?reference=" . $reference;
    }
} 
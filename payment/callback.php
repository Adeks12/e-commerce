<?php
include_once("../libs/dbfunctions.php");
include_once("../class/payment.php");

// Get the raw POST data
$payload = file_get_contents('php://input');
$signature = $_SERVER['HTTP_X_PAYSTACK_SIGNATURE'] ?? '';

// Verify webhook signature
$payment = new Payment();
$isValid = $payment->verifyWebhookSignature($payload, $signature);

if (!$isValid) {
    http_response_code(401);
    exit('Invalid signature');
}

// Parse the webhook payload
$event = json_decode($payload, true);

// Handle different event types
switch ($event['event']) {
    case 'charge.success':
        // Payment was successful
        $reference = $event['data']['reference'];
        $payment->verifyPayment($reference);
        break;

    case 'charge.failed':
        // Payment failed
        $reference = $event['data']['reference'];
        $payment->updatePaymentStatus($reference, 'failed', $event['data']);
        break;

    case 'transfer.success':
        // Transfer was successful
        $reference = $event['data']['reference'];
        $payment->updateTransferStatus($reference, 'completed', $event['data']);
        break;

    case 'transfer.failed':
        // Transfer failed
        $reference = $event['data']['reference'];
        $payment->updateTransferStatus($reference, 'failed', $event['data']);
        break;
}

// Return a 200 OK response
http_response_code(200);
echo 'Webhook processed successfully'; 
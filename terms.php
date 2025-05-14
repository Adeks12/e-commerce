<?php
session_start();
header("Cache-Control: no-cache;no-store, must-revalidate");
header_remove("X-Powered-By");
header_remove("Server");
header('X-Frame-Options: SAMEORIGIN');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Terms and Conditions">
    <meta http-equiv="Cache-control" content="no-cache;no-store">

    <title>Terms and Conditions - Vuvaa Lifestyle</title>

    <link rel="shortcut icon" href="img/icon.png" sizes="32x32">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&amp;display=swap" rel="stylesheet">
    <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Terms and Conditions</h1>
        <div class="mt-4">
            <h2>1. Introduction</h2>
            <p>Welcome to Vuvaa Lifestyle. By accessing and using our website and services, you agree to be bound by these Terms and Conditions.</p>

            <h2>2. Definitions</h2>
            <p>"Website" refers to Vuvaa Lifestyle<br>
            "User," "You," and "Your" refers to you, the person accessing this website<br>
            "Company," "We," "Our," and "Us" refers to Vuvaa Lifestyle</p>

            <h2>3. Account Registration</h2>
            <p>3.1. You must provide accurate, complete, and current information during registration.<br>
            3.2. You are responsible for maintaining the confidentiality of your account credentials.<br>
            3.3. You must immediately notify us of any unauthorized use of your account.</p>

            <h2>4. Products and Services</h2>
            <p>4.1. All product descriptions are accurate to the best of our knowledge.<br>
            4.2. We reserve the right to modify or discontinue products without notice.<br>
            4.3. Prices are subject to change without notice.</p>

            <h2>5. Orders and Payment</h2>
            <p>5.1. Orders are subject to acceptance and availability.<br>
            5.2. Payment must be made in full at the time of purchase.<br>
            5.3. We accept [various payment methods] as forms of payment.</p>

            <h2>6. Shipping and Delivery</h2>
            <p>6.1. Delivery times are estimates and not guaranteed.<br>
            6.2. Shipping costs are calculated based on delivery location and package specifications.<br>
            6.3. Risk of loss and title for items purchased pass to you upon delivery.</p>

            <h2>7. Returns and Refunds</h2>
            <p>7.1. Returns are accepted within 14 days of delivery.<br>
            7.2. Items must be unused and in original packaging.<br>
            7.3. Refunds will be processed within 7-14 business days.</p>

            <h2>8. Privacy Policy</h2>
            <p>8.1. Your use of our website is also governed by our Privacy Policy.<br>
            8.2. We collect and process your data in accordance with applicable laws.</p>

            <h2>9. Intellectual Property</h2>
            <p>9.1. All content on this website is our property or our licensors.<br>
            9.2. You may not use our intellectual property without prior written consent.</p>

            <h2>10. Limitation of Liability</h2>
            <p>10.1. We are not liable for any indirect, incidental, or consequential damages.<br>
            10.2. Our liability is limited to the amount paid for the product or service.</p>

            <h2>11. Modifications to Terms</h2>
            <p>11.1. We reserve the right to modify these terms at any time.<br>
            11.2. Continued use of the website constitutes acceptance of modified terms.</p>

            <h2>12. Governing Law</h2>
            <p>These terms are governed by and construed in accordance with applicable laws.</p>

            <h2>13. Contact Information</h2>
            <p>For questions about these Terms and Conditions, please contact us at [contact information].</p>
        </div>

        <div class="mt-4 mb-5">
            <p>Last updated: <?php echo date('F d, Y'); ?></p>
        </div>
    </div>

    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html> 
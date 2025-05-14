-- Payments table
CREATE TABLE IF NOT EXISTS `payments` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `reference` varchar(100) NOT NULL,
    `amount` decimal(10,2) NOT NULL,
    `email` varchar(255) NOT NULL,
    `status` enum('pending','completed','failed') NOT NULL DEFAULT 'pending',
    `payment_method` varchar(50) NOT NULL DEFAULT 'card',
    `gateway_response` text,
    `created` datetime NOT NULL,
    `updated` datetime DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `reference` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Payment methods table
CREATE TABLE IF NOT EXISTS `payment_methods` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `code` varchar(50) NOT NULL,
    `is_active` tinyint(1) NOT NULL DEFAULT '1',
    `created` datetime NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert default payment methods
INSERT INTO `payment_methods` (`name`, `code`, `is_active`, `created`) VALUES
('Credit Card', 'card', 1, NOW()),
('Bank Transfer', 'bank_transfer', 1, NOW()),
('USSD', 'ussd', 1, NOW());

-- Payment settings table
CREATE TABLE IF NOT EXISTS `payment_settings` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `setting_key` varchar(100) NOT NULL,
    `setting_value` text NOT NULL,
    `created` datetime NOT NULL,
    `updated` datetime DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `setting_key` (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert default payment settings
INSERT INTO `payment_settings` (`setting_key`, `setting_value`, `created`) VALUES
('gateway_api_key', 'YOUR_API_KEY', NOW()),
('gateway_secret_key', 'YOUR_SECRET_KEY', NOW()),
('gateway_base_url', 'https://api.payment-gateway.com/v1', NOW()),
('gateway_webhook_secret', 'YOUR_WEBHOOK_SECRET', NOW()); 
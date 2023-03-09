DROP DATABASE IF EXISTS `sql_indonate`;
CREATE DATABASE `sql_indonate`; 
USE `sql_indonate`;
SET NAMES utf8 ;
CREATE TABLE `users_roles` (
  `user_role_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
    `user_id` tinyint(4) NOT NULL AUTO_INCREMENT,
    `first_name` varchar(50) NOT NULL,
    `last_name` varchar(50) NOT NULL,
    `email` text NOT NULL,
    `phone` varchar(13) NOT NULL,
    `address` text,
    `created_at` date NOT NULL,
    `updated_at` date NOT NULL,
    `user_role_id`  tinyint(4) NOT NULL,
    PRIMARY KEY (`user_id`),
    KEY `FK_user_role_id` (`user_role_id`),
    CONSTRAINT `FK_user_role_id` FOREIGN KEY (`user_role_id`) REFERENCES `users_roles` (`user_role_id`) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
  
CREATE TABLE `campaign_statuses` (
  `campaign_status_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`campaign_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `campaign_categories` (
  `campaign_category_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`campaign_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `campaign_categories` VALUES (1,'Food');
INSERT INTO `campaign_categories` VALUES (2,'Education');
INSERT INTO `campaign_categories` VALUES (3,'Health');
INSERT INTO `campaign_categories` VALUES (4,'Education');
INSERT INTO `campaign_categories` VALUES (5,'Animals');
INSERT INTO `campaign_categories` VALUES (6,'Human Rights');
INSERT INTO `campaign_categories` VALUES (7,'Technology');

CREATE TABLE `campaigns` (
    `campaign_id` tinyint(4) NOT NULL AUTO_INCREMENT,
    `title` varchar(150) NOT NULL,
    `target_money` decimal(9,2) NOT NULL,
    `description` text,
    `campaign_status_id` tinyint(4) NOT NULL,
    `campaign_category_id` tinyint(4) NOT NULL,
    PRIMARY KEY (`campaign_id`),
    KEY `FK_campaign_status_id` (`campaign_status_id`),
     KEY `FK_campaign_category_id` (`campaign_category_id`),
    CONSTRAINT `FK_campaign_status_id` FOREIGN KEY (`campaign_status_id`) REFERENCES `campaign_statuses` (`campaign_status_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT `FK_campaign_category_id` FOREIGN KEY (`campaign_category_id`) REFERENCES `campaign_categories` (`campaign_category_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

    
CREATE TABLE `families` (
  `family_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
   `phone` varchar(13) NOT NULL,
  `address` text,
  PRIMARY KEY (`family_id`)
)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `capons`(
  `campaign_id` tinyint(4) NOT NULL,
  `family_id` tinyint(4) NOT NULL,
  `amount`  decimal(9,2) NOT NULL,
  PRIMARY KEY (`campaign_id`,`family_id`)
)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `donations`(
	  `donation_id` tinyint(4) NOT NULL,
	  `user_id` tinyint(4) NOT NULL,
	  `campaign_id` tinyint(4) NOT NULL,
	  `amount`  decimal(9,2) NOT NULL,
	  PRIMARY KEY (`donation_id`),
	  KEY `FK_user_id` (`user_id`),	
	  CONSTRAINT `FK_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
	   KEY `FK_campaign_id` (`campaign_id`),	
	   CONSTRAINT `FK_campaign_id` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`campaign_id`) ON DELETE RESTRICT ON UPDATE CASCADE
	)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    
INSERT INTO `users_roles` VALUES (1,'admin');
INSERT INTO `users_roles` VALUES (2,'donor');
 
 
INSERT INTO `users` (`first_name`, `last_name`, `email`, `phone`, `address`, `created_at`, `updated_at`, `user_role_id`)
VALUES 
  ('John', 'Doe', 'johndoe@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2),
  ('Jane', 'Doe', 'janedoe@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2),
  ('Bob', 'Smith', 'bobsmith@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2),
  ('Alice', 'Johnson', 'alicejohnson@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2),
  ('Sarah', 'Lee', 'sarahlee@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2),
  ('David', 'Brown', 'davidbrown@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2),
  ('Karen', 'Taylor', 'karentaylor@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2),
  ('Andrew', 'Wilson', 'andrewwilson@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2),
  ('Emily', 'Davis', 'emilydavis@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2),
  ('Kevin', 'Jones', 'kevinjones@example.com', '08123456789', '123 Main St, Anytown, USA', '2023-03-08', '2023-03-08', 2);
  
INSERT INTO `families` (`first_name`, `last_name`, `phone`, `address`) VALUES
('Emma', 'Johnson', '555-1234', '123 Main St'),
('Liam', 'Smith', '555-5678', '456 Elm St'),
('Olivia', 'Garcia', '555-9012', '789 Oak St'),
('Noah', 'Martinez', '555-3456', '321 Maple Ave'),
('Ava', 'Brown', '555-7890', '654 Pine St'),
('William', 'Davis', '555-2345', '987 Cedar Ln'),
('Sophia', 'Rodriguez', '555-6789', '246 Oakwood Dr'),
('James', 'Miller', '555-0123', '369 Cherry St'),
('Isabella', 'Wilson', '555-4567', '582 Maple Rd'),
('Benjamin', 'Anderson', '555-8901', '715 Birchwood Ln');

INSERT INTO `campaign_statuses` VALUES (1,'open');
INSERT INTO `campaign_statuses` VALUES (2,'closed');

INSERT INTO `campaigns` (`title`, `target_money`, `description`, `campaign_status_id`, `campaign_category_id`)
VALUES
    ('Education for underprivileged children', 5000.00, 'Help us provide education to underprivileged children in our community.', 1, 1),
    ('Healthcare for the Elderly', 7500.00, 'Support our campaign to provide healthcare services for the elderly in our community.', 1, 1),
    ('Warm Clothes for Winter', 3000.00, 'Help us provide warm clothes to people in need during the cold winter months.', 1, 1),
    ('Clean Water for Rural Communities', 10000.00, 'Join our campaign to provide access to clean drinking water for rural communities in our area.', 1, 1),
    ('Food Assistance for Low-Income Families', 5000.00, 'Help us provide food assistance to low-income families in our community.', 1, 1),
    ('Supporting Local Businesses', 10000.00, 'Support our campaign to help local businesses affected by the pandemic.', 1, 1),
    ('Emergency Relief for Disaster Victims', 20000.00, 'Join us in providing emergency relief for victims of natural disasters in our area.', 1, 1),
    ('Animal Shelter Support', 5000.00, 'Help us support our local animal shelter by donating to our campaign.', 1, 1),
    ('Mental Health Awareness', 7500.00, 'Join our campaign to raise awareness about mental health and support those in need in our community.', 1, 1),
    ('Renovating a Community Center', 15000.00, 'Support our campaign to renovate a community center that serves as a vital resource for our community.', 1, 1);
    
INSERT INTO `capons` (`campaign_id`, `family_id`, `amount`) VALUES
(1, 1, 100.00),
(1, 2, 50.00),
(1, 3, 75.00),
(2, 1, 200.00),
(2, 2, 150.00),
(2, 3, 175.00),
(3, 1, 300.00),
(3, 2, 250.00),
(3, 3, 275.00),
(4, 1, 400.00),
(4, 2, 350.00),
(4, 3, 375.00);

INSERT INTO donations (donation_id, user_id, campaign_id, amount)
VALUES (1, 1, 1, 50.00),
       (2, 2, 2, 25.00),
       (3, 3, 1, 100.00),
       (4, 4, 3, 75.00),
       (5, 1, 4, 10.00),
       (6, 2, 2, 50.00),
       (7, 3, 3, 20.00),
       (8, 4, 4, 200.00),
       (9, 1, 3, 30.00),
       (10, 2, 1, 15.00);


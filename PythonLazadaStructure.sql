-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lazadadb
-- ------------------------------------------------------
-- Server version	5.7.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `buyer_id` varchar(45) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`buyer_id`),
  UNIQUE KEY `buyer_id_UNIQUE` (`buyer_id`),
  UNIQUE KEY `buyer` (`first_name`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` varchar(45) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `payment_method` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `statuses` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `shipping_fee` decimal(10,0) DEFAULT NULL,
  `voucher_platform` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `voucher` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `warehouse_code` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `voucher_seller` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `voucher_code` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `gift_option` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `shipping_fee_discount_platform` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `customer_last_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `promised_shipping_times` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `national_registration_number` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `shipping_fee_original` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `customer_first_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `shipping_fee_discount_seller` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `branch_number` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tax_code` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `items_count` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `delivery_info` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `extra_attributes` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `gift_message` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_address_billing`
--

DROP TABLE IF EXISTS `order_address_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_address_billing` (
  `order_id` varchar(45) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `address3` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `phone2` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `address5` varchar(200) DEFAULT NULL,
  `address4` varchar(200) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_address_shipping`
--

DROP TABLE IF EXISTS `order_address_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_address_shipping` (
  `order_id` varchar(45) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `address3` varchar(200) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `phone2` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `address5` varchar(200) DEFAULT NULL,
  `address4` varchar(200) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_item_id` varchar(45) NOT NULL,
  `tax_amount` decimal(10,1) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `sla_time_stamp` varchar(45) DEFAULT NULL,
  `voucher_seller` varchar(45) DEFAULT NULL,
  `purchase_order_id` varchar(45) DEFAULT NULL,
  `voucher_code_seller` varchar(45) DEFAULT NULL,
  `voucher_code` varchar(45) DEFAULT NULL,
  `package_id` varchar(45) DEFAULT NULL,
  `buyer_id` varchar(45) DEFAULT NULL,
  `variation` varchar(500) DEFAULT NULL,
  `voucher_code_platform` varchar(45) DEFAULT NULL,
  `purchase_order_number` varchar(45) DEFAULT NULL,
  `sku` varchar(45) DEFAULT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `invoice_number` varchar(45) DEFAULT NULL,
  `cancel_return_initiator` varchar(45) DEFAULT NULL,
  `shop_sku` varchar(45) DEFAULT NULL,
  `is_reroute` int(11) DEFAULT NULL,
  `stage_pay_status` varchar(45) DEFAULT NULL,
  `sku_id` varchar(45) DEFAULT NULL,
  `tracking_code_pre` varchar(45) NOT NULL,
  `shop_id` varchar(45) DEFAULT NULL,
  `order_flag` varchar(45) DEFAULT NULL,
  `is_fbl` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `delivery_option_sof` varchar(45) DEFAULT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `paid_price` decimal(10,1) DEFAULT NULL,
  `product_main_image` varchar(200) DEFAULT NULL,
  `voucher_platform` varchar(45) DEFAULT NULL,
  `product_detail_url` varchar(200) DEFAULT NULL,
  `warehouse_code` varchar(45) DEFAULT NULL,
  `promised_shipping_time` varchar(45) DEFAULT NULL,
  `shipping_type` varchar(45) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `voucher_seller_lpi` varchar(45) DEFAULT NULL,
  `shipping_fee_discount_platform` varchar(45) DEFAULT NULL,
  `wallet_credits` int(11) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `currency` varchar(45) DEFAULT NULL,
  `shipping_provider_type` varchar(45) DEFAULT NULL,
  `shipping_fee_original` decimal(10,1) DEFAULT NULL,
  `voucher_platform_lpi` varchar(45) DEFAULT NULL,
  `is_digital` int(11) DEFAULT NULL,
  `item_price` decimal(10,1) DEFAULT NULL,
  `shipping_service_cost` int(11) DEFAULT NULL,
  `tracking_code` varchar(45) DEFAULT NULL,
  `shipping_fee_discount_seller` varchar(45) DEFAULT NULL,
  `shipping_amount` decimal(10,1) DEFAULT NULL,
  `reason_detail` varchar(500) DEFAULT NULL,
  `return_status` varchar(45) DEFAULT NULL,
  `shipment_provider` varchar(200) DEFAULT NULL,
  `voucher_amount` int(11) DEFAULT NULL,
  `digital_delivery_info` varchar(100) DEFAULT NULL,
  `extra_attributes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_trace`
--

DROP TABLE IF EXISTS `order_trace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_trace` (
  `order_id` varchar(45) NOT NULL,
  `ofc_package_id` varchar(45) DEFAULT NULL,
  `tracking_number` varchar(45) DEFAULT NULL,
  `status_code` varchar(45) DEFAULT NULL,
  `proof_images` varchar(500) DEFAULT NULL,
  `detail_type` varchar(45) DEFAULT NULL,
  `receive_time` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `event_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payout_status`
--

DROP TABLE IF EXISTS `payout_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payout_status` (
  `statement_number` varchar(45) NOT NULL,
  `subtotal2` decimal(10,2) DEFAULT NULL,
  `subtotal1` decimal(10,2) DEFAULT NULL,
  `shipment_fee_credit` decimal(10,2) DEFAULT NULL,
  `payout` varchar(45) DEFAULT NULL,
  `item_revenue` decimal(10,2) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `other_revenue_total` decimal(10,2) DEFAULT NULL,
  `fees_total` decimal(10,2) DEFAULT NULL,
  `refunds` varchar(45) DEFAULT NULL,
  `guarantee_deposit` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `fees_on_refunds_total` varchar(45) DEFAULT NULL,
  `closing_balance` decimal(10,2) DEFAULT NULL,
  `paid` varchar(45) DEFAULT NULL,
  `opening_balance` varchar(45) DEFAULT NULL,
  `shipment_fee` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`statement_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pickup_store_list`
--

DROP TABLE IF EXISTS `pickup_store_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickup_store_list` (
  `sellerId` varchar(45) NOT NULL,
  `pickUpStoreInfo` varchar(200) DEFAULT NULL,
  `class` char(200) DEFAULT NULL,
  PRIMARY KEY (`sellerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `item_id` varchar(45) CHARACTER SET latin1 NOT NULL,
  `created_time` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `updated_time` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `primary_category` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `status` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attributes` (
  `item_id` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_bin DEFAULT NULL,
  `material` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `brand` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `model` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `hazmat` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `clothing_material` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `sleeves` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `source` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_review` (
  `item_id` varchar(45) NOT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  `current` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `page_size` int(11) DEFAULT NULL,
  `create_time` varchar(45) DEFAULT NULL,
  `review_content` varchar(255) DEFAULT NULL,
  `seller_reply` varchar(255) DEFAULT NULL,
  `review_type` varchar(45) DEFAULT NULL,
  `seller_rating` int(11) DEFAULT NULL,
  `product_rating` int(11) DEFAULT NULL,
  `logistics_rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_sku`
--

DROP TABLE IF EXISTS `product_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sku` (
  `sku_id` varchar(45) NOT NULL,
  `item_id` varchar(45) DEFAULT NULL,
  `seller_sku` varchar(255) DEFAULT NULL,
  `shop_sku` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,1) DEFAULT NULL,
  `color_family` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `seller_id` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `verified` varchar(45) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `short_code` varchar(45) DEFAULT NULL,
  `cb` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seller_matrics`
--

DROP TABLE IF EXISTS `seller_matrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_matrics` (
  `seller_matrics_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_category_name` varchar(200) DEFAULT NULL,
  `response_time` varchar(45) DEFAULT NULL,
  `seller_id` varchar(45) DEFAULT NULL,
  `response_rate` varchar(45) DEFAULT NULL,
  `main_category_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seller_matrics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seller_performance`
--

DROP TABLE IF EXISTS `seller_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_performance` (
  `indicator_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_category_name` varchar(100) DEFAULT NULL,
  `seller_id` varchar(45) DEFAULT NULL,
  `main_category_id` varchar(45) DEFAULT NULL,
  `action_url` varchar(100) DEFAULT NULL,
  `score_format` varchar(45) DEFAULT NULL,
  `formatted_score` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `tip` varchar(1000) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `formatted_target` varchar(200) DEFAULT NULL,
  `target` varchar(45) DEFAULT NULL,
  `target_format` varchar(45) DEFAULT NULL,
  `target_respected` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`indicator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shipment_providers`
--

DROP TABLE IF EXISTS `shipment_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment_providers` (
  `shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `cod` varchar(45) DEFAULT NULL,
  `is_default` varchar(45) DEFAULT NULL,
  `api_integration` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`shipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaction_details`
--

DROP TABLE IF EXISTS `transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_details` (
  `order_no` varchar(45) NOT NULL,
  `transaction_date` varchar(45) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `paid_status` varchar(45) DEFAULT NULL,
  `shipping_provider` varchar(45) DEFAULT NULL,
  `WHT_included_in_amount` varchar(45) DEFAULT NULL,
  `lazada_sku` varchar(45) DEFAULT NULL,
  `transaction_type` varchar(45) DEFAULT NULL,
  `orderItem_no` varchar(45) DEFAULT NULL,
  `orderItem_status` varchar(45) DEFAULT NULL,
  `reference` varchar(45) DEFAULT NULL,
  `fee_name` varchar(45) NOT NULL,
  `shipping_speed` varchar(45) DEFAULT NULL,
  `WHT_amount` decimal(10,2) DEFAULT NULL,
  `transaction_number` varchar(45) NOT NULL,
  `seller_sku` varchar(45) DEFAULT NULL,
  `statement` varchar(45) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `VAT_in_amount` decimal(10,2) DEFAULT NULL,
  `shipment_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_no`,`fee_name`,`transaction_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-03 10:33:01

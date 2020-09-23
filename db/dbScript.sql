--  Create database
CREATE DATABASE  IF NOT EXISTS `delilah_resto`;
USE `delilah_resto`;

-- Table structure for table `users`
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `is_admin` tinyint unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Insert data to table `users`
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'goemca','holamundo','Gonzalo','Cano','Av. Siempre Viva 1234','gonzalocano@gmail.com','3513472994',1),(2,'simo','elloco22','Simon','Carpi ','Estrada Nva Cordoba','simon@yahoo.com','17707368031',0),(3,'kingarturo','elreyarturo','Arturo','Rivas','Santa Fe 225','kigarturo@live.com','123987654',1),(4,'lalotucan','superSegura','Lautaro','Rojas','Lavalleja 321','lautarojas@hotmail.com','351234432',0);
UNLOCK TABLES;

-- Table structure for table `orders`
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_status` enum('new','confirmed','preparing','delivering','delivered') NOT NULL DEFAULT 'new',
  `order_time` time NOT NULL,
  `order_description` varchar(45) NOT NULL,
  `order_amount` int unsigned NOT NULL,
  `payment_method` enum('cash','credit') NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `orders` WRITE;
UNLOCK TABLES;

-- Table structure for table `products`
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `product_price` int unsigned NOT NULL,
  `product_photo` varchar(500) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Insert data to table `products`
LOCK TABLES `products` WRITE;
INSERT INTO `products` VALUES (1,'Lime Pie',250,'[https://www.themealdb.com/images/media/meals/qpqtuu1511386216.jpg]'),(2,'Pescado Asado',480,'[https://www.themealdb.com/images/media/meals/uwxusv1487344500.jpg]'),(3,'Pollo Frito',320,'[https://www.themealdb.com/images/media/meals/xqusqy1487348868.jpg]'),(4,'Tarta de Manzana',230,'[https://www.themealdb.com/images/media/meals/qtqwwu1511792650.jpg]'),(5,'Salmon al Risotto',500,'[https://www.themealdb.com/images/media/meals/xxrxux1503070723.jpg]'),(6,'Souffles de Quesos',270,'[https://www.themealdb.com/images/media/meals/sxwquu1511793428.jpg]'),(7,'Spaghetti Bolognese',290,'[https://www.themealdb.com/images/media/meals/sutysw1468247559.jpg]'),(8,'Hamburguesas BBQ',360,'[https://www.themealdb.com/images/media/meals/atd5sh1583188467.jpg]'),(9,'Pollo Tandoori',430,'[https://www.themealdb.com/images/media/meals/qptpvt1487339892.jpg]');
UNLOCK TABLES;


-- Table structure for table `order_products`
DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE `orders_products` (
  `relationship_id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `product_quantity` int unsigned NOT NULL,
  PRIMARY KEY (`relationship_id`),
  KEY `order_id_idx` (`order_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `orders_products` WRITE;
UNLOCK TABLES;






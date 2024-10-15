/*
 Navicat Premium Data Transfer

 Source Server         : watson
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : sales_data

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 15/10/2024 22:36:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `order_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES (1, 'Laptop', 'Electronics', 3, 1200.00, '2023-01-15');
INSERT INTO `sales` VALUES (2, 'Smartphone', 'Electronics', 5, 800.00, '2023-01-18');
INSERT INTO `sales` VALUES (3, 'Headphones', 'Electronics', 10, 150.00, '2023-02-05');
INSERT INTO `sales` VALUES (4, 'Shoes', 'Fashion', 7, 100.00, '2023-02-12');
INSERT INTO `sales` VALUES (5, 'T-shirt', 'Fashion', 20, 20.00, '2023-03-01');

SET FOREIGN_KEY_CHECKS = 1;

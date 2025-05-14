/*
 Navicat Premium Data Transfer

 Source Server         : Connection
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : framework

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 23/01/2023 12:59:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks`  (
  `bank_code` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `bank_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bank_type` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bank_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES ('011', 'First Bank of Nigeria', 0);
INSERT INTO `banks` VALUES ('023', 'CitiBank', 0);
INSERT INTO `banks` VALUES ('030', 'Heritage', 0);
INSERT INTO `banks` VALUES ('032', 'Union Bank', 0);
INSERT INTO `banks` VALUES ('033', 'United Bank for Africa', 0);
INSERT INTO `banks` VALUES ('035', 'Wema Bank', 0);
INSERT INTO `banks` VALUES ('044', 'Access Bank', 0);
INSERT INTO `banks` VALUES ('050', 'Ecobank Plc', 0);
INSERT INTO `banks` VALUES ('057', 'Zenith Bank', 0);
INSERT INTO `banks` VALUES ('058', 'GTBank Plc', 0);
INSERT INTO `banks` VALUES ('063', 'Diamond Bank', 0);
INSERT INTO `banks` VALUES ('068', 'Standard Chartered Bank', 0);
INSERT INTO `banks` VALUES ('070', 'Fidelity Bank', 0);
INSERT INTO `banks` VALUES ('076', 'Skye Bank', 0);
INSERT INTO `banks` VALUES ('082', 'Keystone Bank', 0);
INSERT INTO `banks` VALUES ('084', 'Enterprise Bank', 0);
INSERT INTO `banks` VALUES ('100', 'SunTrust Bank', 0);
INSERT INTO `banks` VALUES ('214', 'First City Monument Bank', 0);
INSERT INTO `banks` VALUES ('215', 'Unity Bank', 0);
INSERT INTO `banks` VALUES ('221', 'Stanbic IBTC Bank', 0);
INSERT INTO `banks` VALUES ('232', 'Sterling Bank', 0);
INSERT INTO `banks` VALUES ('301', 'JAIZ Bank', 0);
INSERT INTO `banks` VALUES ('302', 'Eartholeum', 0);
INSERT INTO `banks` VALUES ('303', 'ChamsMobile', 0);
INSERT INTO `banks` VALUES ('304', 'Stanbic Mobile Money', 0);
INSERT INTO `banks` VALUES ('305', 'Paycom', 0);
INSERT INTO `banks` VALUES ('306', 'eTranzact', 0);
INSERT INTO `banks` VALUES ('307', 'EcoMobile', 0);
INSERT INTO `banks` VALUES ('308', 'FortisMobile', 0);
INSERT INTO `banks` VALUES ('309', 'FBNMobile', 0);
INSERT INTO `banks` VALUES ('311', 'ReadyCash (Parkway)', 0);
INSERT INTO `banks` VALUES ('313', 'Mkudi', 0);
INSERT INTO `banks` VALUES ('314', 'FET', 0);
INSERT INTO `banks` VALUES ('315', 'GTMobile', 0);
INSERT INTO `banks` VALUES ('317', 'Cellulant', 0);
INSERT INTO `banks` VALUES ('318', 'Fidelity Mobile', 0);
INSERT INTO `banks` VALUES ('319', 'TeasyMobile', 0);
INSERT INTO `banks` VALUES ('320', 'VTNetworks', 0);
INSERT INTO `banks` VALUES ('322', 'ZenithMobile', 0);
INSERT INTO `banks` VALUES ('323', 'Access Money', 0);
INSERT INTO `banks` VALUES ('324', 'Hedonmark', 0);
INSERT INTO `banks` VALUES ('325', 'MoneyBox', 0);
INSERT INTO `banks` VALUES ('326', 'Sterling Mobile', 0);
INSERT INTO `banks` VALUES ('327', 'Pagatech', 0);
INSERT INTO `banks` VALUES ('328', 'TagPay', 0);
INSERT INTO `banks` VALUES ('329', 'PayAttitude Online', 0);
INSERT INTO `banks` VALUES ('401', 'ASO Savings and & Loans', 0);
INSERT INTO `banks` VALUES ('402', 'Jubilee Life Mortgage Bank', 0);
INSERT INTO `banks` VALUES ('403', 'SafeTrust Mortgage Bank', 0);
INSERT INTO `banks` VALUES ('415', 'Imperial Homes Mortgage Bank', 0);
INSERT INTO `banks` VALUES ('501', 'Fortis Microfinance Bank', 0);
INSERT INTO `banks` VALUES ('523', 'Trustbond', 0);
INSERT INTO `banks` VALUES ('526', 'Parralex', 0);
INSERT INTO `banks` VALUES ('551', 'Covenant Microfinance Bank', 0);
INSERT INTO `banks` VALUES ('552', 'NPF MicroFinance Bank', 0);
INSERT INTO `banks` VALUES ('559', 'Coronation Merchant Bank', 0);
INSERT INTO `banks` VALUES ('560', 'Page MFBank', 0);
INSERT INTO `banks` VALUES ('601', 'FSDH', 0);
INSERT INTO `banks` VALUES ('990', 'Omoluabi Mortgage Bank', 0);
INSERT INTO `banks` VALUES ('999', 'NIP Virtual Bank', 0);

-- ----------------------------
-- Table structure for church_table
-- ----------------------------
DROP TABLE IF EXISTS `church_table`;
CREATE TABLE `church_table`  (
  `church_id` int(11) NOT NULL,
  `church_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `state` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `church_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`church_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of church_table
-- ----------------------------

-- ----------------------------
-- Table structure for church_type
-- ----------------------------
DROP TABLE IF EXISTS `church_type`;
CREATE TABLE `church_type`  (
  `id` int(11) NOT NULL,
  `church_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of church_type
-- ----------------------------

-- ----------------------------
-- Table structure for font_awsome
-- ----------------------------
DROP TABLE IF EXISTS `font_awsome`;
CREATE TABLE `font_awsome`  (
  `font_id` int(11) NOT NULL,
  `code` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`font_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of font_awsome
-- ----------------------------
INSERT INTO `font_awsome` VALUES (1, 'bi-pencil-square');
INSERT INTO `font_awsome` VALUES (2, 'bi-trash-fill');
INSERT INTO `font_awsome` VALUES (3, 'bi-list toggle-sidebar-btn');
INSERT INTO `font_awsome` VALUES (4, 'bi-search');
INSERT INTO `font_awsome` VALUES (5, ' bi-person');
INSERT INTO `font_awsome` VALUES (6, 'bi-box-arrow-right');
INSERT INTO `font_awsome` VALUES (7, 'bi-grid');
INSERT INTO `font_awsome` VALUES (8, 'bi-menu-button-wide');
INSERT INTO `font_awsome` VALUES (9, 'bi-circle');
INSERT INTO `font_awsome` VALUES (10, 'bi-chevron-down');
INSERT INTO `font_awsome` VALUES (11, 'bi-briefcase-fill');
INSERT INTO `font_awsome` VALUES (12, 'bi-border-width');
INSERT INTO `font_awsome` VALUES (13, 'bi-display');
INSERT INTO `font_awsome` VALUES (14, 'bi-gear-fill');
INSERT INTO `font_awsome` VALUES (15, 'bi-people-fill');
INSERT INTO `font_awsome` VALUES (16, 'bi-person-plus');
INSERT INTO `font_awsome` VALUES (17, 'bi-view-list');
INSERT INTO `font_awsome` VALUES (18, 'bi-house');

-- ----------------------------
-- Table structure for gendata
-- ----------------------------
DROP TABLE IF EXISTS `gendata`;
CREATE TABLE `gendata`  (
  `table_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gendata
-- ----------------------------
INSERT INTO `gendata` VALUES ('menu', 144);
INSERT INTO `gendata` VALUES ('transaction_table', 1);
INSERT INTO `gendata` VALUES ('users', 22);
INSERT INTO `gendata` VALUES ('staff', 95);
INSERT INTO `gendata` VALUES ('loans', 13);
INSERT INTO `gendata` VALUES ('allowance', 12);
INSERT INTO `gendata` VALUES ('designation', 4);
INSERT INTO `gendata` VALUES ('deduction', 22);
INSERT INTO `gendata` VALUES ('loan_setup', 148);
INSERT INTO `gendata` VALUES ('payroll', 26);
INSERT INTO `gendata` VALUES ('leave', 1);
INSERT INTO `gendata` VALUES ('staff_leave', 4);
INSERT INTO `gendata` VALUES ('role', 11);

-- ----------------------------
-- Table structure for lga
-- ----------------------------
DROP TABLE IF EXISTS `lga`;
CREATE TABLE `lga`  (
  `stateid` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `State` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Lga` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Lgaid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Lgaid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 827 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lga
-- ----------------------------
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Asaritoru', 2);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Aboh mbaise', 3);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Oluyole', 5);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Bekwara', 6);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Abeokuta east', 7);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Yemoji', 8);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Etsakor', 9);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ethiope west', 10);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Idemili', 11);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Ijumu iyara', 12);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Mopa-muro', 13);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Aba north', 14);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Aba south', 15);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Arochukwu', 16);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Bende', 17);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Ikwuano', 18);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Isiala-ngwa north', 19);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Isiala-ngwa south', 20);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Isukwuato', 21);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Obiomangwa', 22);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Ohafia', 23);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Osisioma ngwa', 24);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Ugwunagbo', 25);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Ukwa east', 26);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Ukwa west', 27);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Umuahia north', 28);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Umuahia south', 29);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Umu-nneochi', 30);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Demsa', 31);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Fufore', 32);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Ganye', 33);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Girei', 34);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Gombi', 35);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Guyuk', 36);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Hong', 37);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Jada', 38);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Lamurde', 39);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Madagali', 40);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Maiha', 41);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Mayo-belwa', 42);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Michika', 43);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Mubi north', 44);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Mubi south', 45);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Numan', 46);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Shelleng', 47);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Song', 48);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Toungo', 49);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Yola north', 50);
INSERT INTO `lga` VALUES ('002', 'ADAMAWA', 'Yola south', 51);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Abak', 52);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Eastern obolo', 53);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Eket', 54);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Esit eket', 55);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Essien udim', 56);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Etim ekpo', 57);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Etinan', 58);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Ibeno', 59);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Ibesikpo asutan', 60);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Ibiono ibom', 61);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Ika', 62);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Ikono', 63);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Ikot abasi', 64);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Ikot ekpene', 65);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Ini', 66);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Itu', 67);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Mbo', 68);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Mkpat enin', 69);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Nsit atai', 70);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Nsit ibom', 71);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Nsit ubium', 72);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Uruan', 73);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Urue-offong/oruko', 74);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Uyo', 75);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Aguata', 76);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Anambra east', 77);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Anambra west', 78);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Anaocha', 79);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Awka north', 80);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Awka south', 81);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Ayamelum', 82);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Dunukofia', 83);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Ekwusigo', 84);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Idemili north', 85);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Idemili south', 86);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Ihiala', 87);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Njikoka', 88);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Nnewi north', 89);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Obanliku', 90);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Obubra', 91);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Obudu', 92);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Odukpani', 93);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Ogoja', 94);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Yakurr', 95);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Yala', 96);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Aniocha north', 97);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Aniocha south', 98);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Bomadi', 99);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Burutu', 100);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ethiope east', 101);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ethiope west', 102);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ika north', 103);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ika south', 104);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Isoko north', 105);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Isoko south', 106);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ndokwa east', 107);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ndokwa west', 108);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Okpe', 109);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Oshimili north', 110);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Oshimili south', 111);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Patani', 112);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Sapele', 113);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Udu', 114);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ughelli north', 115);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ughelli south', 116);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Ukwuani', 117);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Uvwie', 118);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Warri north', 119);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Warri south', 120);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Warri south west', 121);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Abakaliki', 122);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Afikpo north', 123);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Afikpo south', 124);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Ebonyi', 125);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Ezza north', 126);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Ezza south', 127);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Ikwo', 128);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Ishielu', 129);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Ivo', 130);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Izzi', 131);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Ohaozara', 132);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Ohaukwu', 133);
INSERT INTO `lga` VALUES ('011', 'EBONYI', 'Onicha', 134);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Akoko-edo', 135);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Egor', 136);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Esan central', 137);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Esan north east', 138);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Esan south east', 139);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Esan west', 140);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Etsako central', 141);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Etsako east', 142);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Etsako west', 143);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Igueben', 144);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Ikpoba-okha', 145);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Oredo', 146);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Orhionmwon', 147);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Ovia north east', 148);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Ovia south west', 149);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Owan east', 150);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Owan west', 151);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Uhunmwonde', 152);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'ADK', 153);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'DEA', 154);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'EFY', 155);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'MUE', 156);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'LAW', 157);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'AMK', 158);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'EMR', 159);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'DEK', 160);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'JER', 161);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'KER', 162);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'KLE', 163);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'YEK', 164);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'GED', 165);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'SSE', 166);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'TUN', 167);
INSERT INTO `lga` VALUES ('013', 'EKITI', 'YEE', 168);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Aninri', 169);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Awgu', 170);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Enugu east', 171);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Enugu north', 172);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Enugu south', 173);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Ezeagu', 174);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Enugu', 175);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Igbo-etit', 176);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Igbo-eze north', 177);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Igho-eze south', 178);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Isi-uzo', 179);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Nkanu east', 180);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Nkanu west', 181);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Nnewi south', 182);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Ogbaru', 183);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Onitsha north', 184);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Onitsha south', 185);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Orumba north', 186);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Orumba south', 187);
INSERT INTO `lga` VALUES ('004', 'ANAMBRA', 'Oyi', 188);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Alkaleri', 189);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Bauchi', 190);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Bogoro', 191);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Damban', 192);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Darazo', 193);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Dass', 194);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Gamawa', 195);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Ganjuwa', 196);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Giade', 197);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Itas/gadau', 198);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Jama\'are', 199);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Katagun', 200);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Gusau', 201);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Kirfi', 202);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Misau', 203);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Ningi', 204);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Shira', 205);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Tafawa-balewa', 206);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Toro', 207);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Warji', 208);
INSERT INTO `lga` VALUES ('005', 'BAUCHI', 'Zaki', 209);
INSERT INTO `lga` VALUES ('006', 'BAYELSA', 'Brass', 210);
INSERT INTO `lga` VALUES ('006', 'BAYELSA', 'Ekeremor', 211);
INSERT INTO `lga` VALUES ('006', 'BAYELSA', 'Kolokuma/opokuma', 212);
INSERT INTO `lga` VALUES ('006', 'BAYELSA', 'Nembe', 213);
INSERT INTO `lga` VALUES ('006', 'BAYELSA', 'Ogbia', 214);
INSERT INTO `lga` VALUES ('006', 'BAYELSA', 'Sagbama', 215);
INSERT INTO `lga` VALUES ('006', 'BAYELSA', 'Southern ijaw', 216);
INSERT INTO `lga` VALUES ('006', 'BAYELSA', 'Yenegoa', 217);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Ado', 218);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Agatu', 219);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Apa', 220);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Buruku', 221);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Gboko', 222);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Guma', 223);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Gwer east', 224);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Gwer west', 225);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Katsina-ala', 226);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Konshisha', 227);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Kwande', 228);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Logo', 229);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Makurdi', 230);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Obi', 231);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Ogbadibo', 232);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Oju', 233);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Okpokwu', 234);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Ohimini', 235);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Oturkpo', 236);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Tarka', 237);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Ukum', 238);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Ushongo', 239);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Vandeikya', 240);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Abadam', 241);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Askira/uba', 242);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Bama', 243);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Bayo', 244);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Biu', 245);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Chibok', 246);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Damboa', 247);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Dikwa', 248);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Gubio', 249);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Guzamala', 250);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Gwoza', 251);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Hawul', 252);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Jere', 253);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Kaga', 254);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Kala/balge', 255);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Konduga', 256);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Kukawa', 257);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Kwaya kusar', 258);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Mafa', 259);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Magumeri', 260);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Maiduguri', 261);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Marte', 262);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Mobbar', 263);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Monguno', 264);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Ngala', 265);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Nganzai', 266);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Shani', 267);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Abi', 268);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Akamkpa', 269);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Akpabuyo', 270);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Bakassi', 271);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Bekwara', 272);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Biase', 273);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Boki', 274);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Calabar-municipal', 275);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Calabar south', 276);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Etung', 277);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Ikom', 278);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Nsukka', 279);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Oji-river', 280);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Udenu', 281);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Udi', 282);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Uzo-uwani', 283);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Akko', 284);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Balanga', 285);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Billiri', 286);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Dukku', 287);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Funakaye', 288);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Gombe', 289);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Kaltungo', 290);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Kwami', 291);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Nafada', 292);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Shomgom', 293);
INSERT INTO `lga` VALUES ('016', 'GOMBE', 'Yamaltu/deba', 294);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ahiazu-mbaise', 295);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ehime-mbano', 296);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ezinihitte', 297);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ideato north', 298);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ideato south', 299);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ihitte-uboma', 300);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ikeduru', 301);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Isiala mbano', 302);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Isu', 303);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Mbaitoli', 304);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ngor-okpala', 305);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Njaba', 306);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Nwangele', 307);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Nkwerre', 308);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Obowo', 309);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Oguta', 310);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ohaji/egbema', 311);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Okigwe', 312);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Orlu', 313);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Orsu', 314);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Oru east', 315);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Oru west', 316);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Owerri muni.', 317);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Owerri north', 318);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Owerri west', 319);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Onuimo', 320);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Auyo', 321);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Babura', 322);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Birnin kudu', 323);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Biriniwa', 324);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Buji', 325);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Dutse', 326);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Gagarawa', 327);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Garki', 328);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Gumel', 329);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Guri', 330);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Gwaram', 331);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Gwiwa', 332);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Hadejia', 333);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Jahun', 334);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Kafin', 335);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Hausa', 336);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Kaugama', 337);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Kazaure', 338);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Kiri kasamma', 339);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Kiyawa', 340);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Maigatari', 341);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Malam madori', 342);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Miga', 343);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Ringim', 344);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Roni', 345);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Sule-tankarkar', 346);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Taura', 347);
INSERT INTO `lga` VALUES ('018', 'JIGAWA', 'Yankwashi', 348);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Birnin-gwari', 349);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Chikun', 350);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Giwa', 351);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Igabi', 352);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Ikara', 353);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Jaba', 354);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Jema\'a', 355);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Kachia', 356);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Kaduna north', 357);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Kaduna south', 358);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Kagarko', 359);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Kajuru', 360);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Kaura', 361);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Kubau', 362);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Kudan', 363);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Lere', 364);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Makarfi', 365);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Sabon-gari', 366);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Sanga', 367);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Soba', 368);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Zangon-kataf', 369);
INSERT INTO `lga` VALUES ('019', 'KADUNA', 'Zaria', 370);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Ajingi', 371);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Albasu', 372);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Bagwai', 373);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Bebeji', 374);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Bichi', 375);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Bunkure', 376);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Dala', 377);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Dambatta', 378);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Dawakin kudu', 379);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Dawakin tofa', 380);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Doguwa', 381);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Fagge', 382);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Gabasawa', 383);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Garko', 384);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Garum mallarn', 385);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Gaya', 386);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Gezawa', 387);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Gwale', 388);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Gwarzo', 389);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Kabo', 390);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Kano municipal', 391);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Karaye', 392);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Kibiya', 393);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Kiru', 394);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Kumbotso', 395);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Kunchi', 396);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Kura', 397);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Madobi', 398);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Makoda', 399);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Minjibir', 400);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Nasarawa', 401);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Rano', 402);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Rimin gado', 403);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Rogo', 404);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Shanono', 405);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Sumaila', 406);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Takai', 407);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Tarauni', 408);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Tofa', 409);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Tsanyawa', 410);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Tudun wada', 411);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Ungogo', 412);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Warawa', 413);
INSERT INTO `lga` VALUES ('020', 'KANO', 'Wudil', 414);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Bakori', 415);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Batagarawa', 416);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Batsari', 417);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Baure', 418);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Bindawa', 419);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Charanchi', 420);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Dandume', 421);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Danja', 422);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Dan musa', 423);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Daura', 424);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Dutsi', 425);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Dutsin-ma', 426);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Faskari', 427);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Funtua', 428);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Ingawa', 429);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Jibia', 430);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Kafur', 431);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Kaita', 432);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Kankara', 433);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Kankia', 434);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Katsina', 435);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Kurfi', 436);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Kusada', 437);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Mai\'adua', 438);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Malumfashi', 439);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Mani', 440);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Mashi', 441);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Matazu', 442);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Musawa', 443);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Rimi', 444);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Sabuwa', 445);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Safana', 446);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Sandamu', 447);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Zongo', 448);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Aleiro', 449);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Arewa-dandi', 450);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Argungu', 451);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Augie', 452);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Bagudo', 453);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Birnin kebbi', 454);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Bunza', 455);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Dandi', 456);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Fakai', 457);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Gwandu', 458);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Jega', 459);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Kalgo', 460);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Koko/besse', 461);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Maiyama', 462);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Ngaski', 463);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Sakaba', 464);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Shanga', 465);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Suru', 466);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Wasagu/danko', 467);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Yauri', 468);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Zuru', 469);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Adavi', 470);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Ajaojuta', 471);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Ankpa', 472);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Bassa', 473);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Dekina', 474);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Ibaji', 475);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Igalamela-odolu', 476);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Ijumu', 477);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Ijumu', 478);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Kabba/bunu', 479);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Kogi', 480);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Lokoja', 481);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Mopa-muro', 482);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Ofu', 483);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Ogori/megongo', 484);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Okehi', 485);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Olamabolo', 486);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Omala', 487);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Yagba east', 488);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Yagba west', 489);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Asa', 490);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Baruten', 491);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Edu', 492);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Ekiti', 493);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Ifelodun', 494);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Ilorin south', 495);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Ilorin west', 496);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Irepodun', 497);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Isin', 498);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Kaiama', 499);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Moro', 500);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Offa', 501);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Oke-ero', 502);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Oyun', 503);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Pategi', 504);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Agege', 505);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Ajeromi-ifelodun', 506);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Alimosho', 507);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Amuwo-odofin', 508);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Apapa', 509);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Badagry', 510);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Epe', 511);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Eti-osa', 512);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Ibeju/lekki', 513);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Ifako-ijaye', 514);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Ikeja', 515);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Ikorodu', 516);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Kosofe', 517);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Lagos island', 518);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Lagos mainland', 519);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Mushin', 520);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Ojo', 521);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Oshodi-isolo', 522);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Shomolu', 523);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Surulere', 524);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Akwanga', 525);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Awe', 526);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Doma', 527);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Karu', 528);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Keana', 529);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Keffi', 530);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Kokona', 531);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Lafia', 532);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Nasarawa', 533);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Nasarawa-eggon', 534);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Obi', 535);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Toto', 536);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Wamba', 537);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Agaie', 538);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Agwara', 539);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Bida', 540);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Borgu', 541);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Bosso', 542);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Chanchaga', 543);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Edati', 544);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Gbako', 545);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Gurara', 546);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Katcha', 547);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Kontagora', 548);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Lapai', 549);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Lavun', 550);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Magama', 551);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Mariga', 552);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Mashegu', 553);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Mokwa', 554);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Muya', 555);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Paikoro', 556);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Rafi', 557);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Rajau', 558);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Shiroro', 559);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Suleja', 560);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Tafa', 561);
INSERT INTO `lga` VALUES ('027', 'NIGER', 'Wushishi', 562);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Abeokuta north', 563);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Abeokuta south', 564);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ado-odo/ota', 565);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Egbado north', 566);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Egbado south', 567);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ekwekoro', 568);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ifo', 569);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ijebu east', 570);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ijebu north', 571);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ijebu north east', 572);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ijebu-ode', 573);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ikenne', 574);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Imeko-afon', 575);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ipokia', 576);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Obafemi-owode', 577);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ogun waterside', 578);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Odeda', 579);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Odogbolu', 580);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Remo north', 581);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Shagamu', 582);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Akoko north east', 583);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Akoko north west', 584);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Akoko south east', 585);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Akoko south west', 586);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Akure north', 587);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Akuresouth', 588);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ese-odo', 589);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Idanre', 590);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ifedore', 591);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ilaje', 592);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ile-oluji-okeigbo', 593);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Irele', 594);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Odigbo', 595);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Okitipupa', 596);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ondo east', 597);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ondo west', 598);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ose-owo', 599);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Aiyedade', 600);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Aiyedire', 601);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Atakumosa east', 602);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Atakumose-west', 603);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Boluwaduro', 604);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Boripe', 605);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ede north', 606);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ede south', 607);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Egbedore', 608);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ejigbo', 609);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ife central', 610);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ife east', 611);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ife north', 612);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ife south', 613);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ifedayo', 614);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ifelodun', 615);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ila', 616);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ilasha east', 617);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ilesha west', 618);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Irepodun', 619);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Irewole', 620);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Isokan', 621);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Iwo', 622);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Obokun', 623);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Odo-otin', 624);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Ola-oluwa', 625);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Olorunda', 626);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Oriade', 627);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Orolu', 628);
INSERT INTO `lga` VALUES ('030', 'OSUN', 'Osogbo', 629);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Afijio', 630);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Akinyele', 631);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Atiba', 632);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Atigbo', 633);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Egbeda', 634);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ibadan central', 635);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ibadan north', 636);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ibadan north west', 637);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ibadan south west', 638);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ibadan south east', 639);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ibarapa central', 640);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ibarapa east', 641);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ibarapa north', 642);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ido', 643);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Irepo', 644);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Iseyin', 645);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Itesiwaju', 646);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Iwajowa', 647);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Kajola', 648);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Lagelu', 649);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ogbomoso north', 650);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ogbomoso south', 651);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ogo oluwa', 652);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Olorunsogo', 653);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Oluyole', 654);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ona-ara', 655);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Orelope', 656);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ori ire', 657);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Oyo east', 658);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Oyo west', 659);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Saki east', 660);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Saki west', 661);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Surelere', 662);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Barikin ladi', 663);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Bassa', 664);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Bokkos', 665);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Jos east', 666);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Jos north', 667);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Jos south', 668);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Kanam', 669);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Kanke', 670);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Langtang north', 671);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Langtang south', 672);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Mangu', 673);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Mikang', 674);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Pankshin', 675);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Qua\'an pan', 676);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Riyom', 677);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Shendam', 678);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Wase', 679);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Abua/odual', 680);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Ahoada east', 681);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Ahoada west', 682);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Akuku toru', 683);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Andoni', 684);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Asari-toru', 685);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Bonny', 686);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Degema', 687);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Emohua', 688);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Eleme', 689);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Etche', 690);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Gokana', 691);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Ikwerre', 692);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Khana', 693);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Obia/akpor', 694);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Ogba/egbema/ndoni', 695);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Ogu/bolo', 696);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Okrika', 697);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Omumma', 698);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Opobo/nkoro', 699);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Oyigbo', 700);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Port harcourt', 701);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Tai', 702);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Binji', 703);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Bodinga', 704);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Dange-shuni', 705);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Gada', 706);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Goronyo', 707);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Gudu', 708);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Gwadabawa', 709);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Illela', 710);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Isa', 711);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Kware', 712);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Kebbe', 713);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Rabah', 714);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Sabon birni', 715);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Shagari', 716);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Silame', 717);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Sokoto north', 718);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Sokoto south', 719);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Tambuwal', 720);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Tangaza', 721);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Tureta', 722);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Wamakko', 723);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Wurno', 724);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Yabo', 725);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Ardo-kola', 726);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Bali', 727);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Donga', 728);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Gashaka', 729);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Gassol', 730);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Ibi', 731);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Jalingo', 732);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Karim-lamido', 733);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Kurmi', 734);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Lau', 735);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Sarduana', 736);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Takum', 737);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Ussa', 738);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Wukari', 739);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Yorro', 740);
INSERT INTO `lga` VALUES ('035', 'TARABA', 'Zing', 741);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Bade', 742);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Bursari', 743);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Damaturu', 744);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Fika', 745);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Fune', 746);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Geidam', 747);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Gujba', 748);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Gulani', 749);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Jakusko', 750);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Karasuwa', 751);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Machina', 752);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Nangere', 753);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Nguru', 754);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Potiskum', 755);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Tarmua', 756);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Yunusari', 757);
INSERT INTO `lga` VALUES ('036', 'YOBE', 'Yusufari', 758);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Anka', 759);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Bakurna', 760);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Birnin magaji', 761);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Bukkuyum', 762);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Bungudu', 763);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Gummi', 764);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Kaura namoda', 765);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Maradun', 766);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Maru', 767);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Shinkafi', 768);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Talata', 769);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Mafara', 770);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Tsafe', 771);
INSERT INTO `lga` VALUES ('037', 'ZAMFARA', 'Zumi', 772);
INSERT INTO `lga` VALUES ('026', 'NASARAWA', 'Eggon', 773);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ile oluji', 774);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Sagamu', 775);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Opeji', 776);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ijebu ode', 777);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Ishan', 778);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ondo central', 779);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Otukpo', 780);
INSERT INTO `lga` VALUES ('015', 'FCT', 'Abaji', 781);
INSERT INTO `lga` VALUES ('015', 'FCT', 'Abuja Municipal', 782);
INSERT INTO `lga` VALUES ('015', 'FCT', 'Bwari', 783);
INSERT INTO `lga` VALUES ('015', 'FCT', 'Gwagwalada', 784);
INSERT INTO `lga` VALUES ('015', 'FCT', 'Kuje', 785);
INSERT INTO `lga` VALUES ('015', 'FCT', 'Kwali', 786);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ehime mbano', 787);
INSERT INTO `lga` VALUES ('014', 'ENUGU', 'Oji river', 788);
INSERT INTO `lga` VALUES ('031', 'OYO', 'Ogbomosho', 789);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Akure south', 790);
INSERT INTO `lga` VALUES ('009', 'CROSS RIVERS', 'Odupani', 791);
INSERT INTO `lga` VALUES ('017', 'IMO', 'Ngor okpala', 792);
INSERT INTO `lga` VALUES ('007', 'BENUE', 'Ador', 793);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Okobo', 794);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Idah', 795);
INSERT INTO `lga` VALUES ('001', 'ABIA', 'Ugwunagbor', 796);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Ogba/Egbem/Noom', 797);
INSERT INTO `lga` VALUES ('023', 'KOGI', 'Okene', 798);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Akoko', 799);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Owo', 800);
INSERT INTO `lga` VALUES ('022', 'KEBBI', 'Kamba', 801);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Water side', 802);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Egado South', 803);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Imeko Afon', 804);
INSERT INTO `lga` VALUES ('032', 'PLATEAU', 'Panilshin', 805);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ikalo', 806);
INSERT INTO `lga` VALUES ('025', 'LAGOS', 'Eredo', 807);
INSERT INTO `lga` VALUES ('021', 'KATSINA', 'Manufanoti', 808);
INSERT INTO `lga` VALUES ('034', 'SOKOTO', 'Kofa atiku', 809);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Onna', 811);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Udium', 812);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Ake', 813);
INSERT INTO `lga` VALUES ('012', 'EDO', 'Uromi', 814);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Oron', 815);
INSERT INTO `lga` VALUES ('003', 'AKWA IBOM', 'Oruk', 816);
INSERT INTO `lga` VALUES ('010', 'DELTA', 'Aniocha', 817);
INSERT INTO `lga` VALUES ('029', 'ONDO', 'Ose', 818);
INSERT INTO `lga` VALUES ('024', 'KWARA', 'Oro', 819);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Yewa', 820);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Yewa South', 821);
INSERT INTO `lga` VALUES ('028', 'OGUN', 'Yewa North', 822);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Opobo/Nkoro', 823);
INSERT INTO `lga` VALUES ('033', 'RIVERS', 'Onelga', 824);
INSERT INTO `lga` VALUES ('008', 'BORNO', 'Maiduguri .M.C', 826);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `menu_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_url` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `parent_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#',
  `parent_id2` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `menu_level` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `menu_order` int(3) NOT NULL DEFAULT 0,
  `status` int(1) NULL DEFAULT 0,
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('004', 'Adminstrative Tools', '#', '#', ' ', '0', '0000-00-00 00:00:00', 0, 0, 'fa fa-cogs');
INSERT INTO `menu` VALUES ('006', 'Role', 'role_list.php', '004', ' ', '1', '2018-02-15 14:55:23', 0, 0, NULL);
INSERT INTO `menu` VALUES ('007', 'Menu', 'menu_list.php', '004', ' ', '1', '2018-02-22 14:56:12', 0, 0, NULL);
INSERT INTO `menu` VALUES ('008', 'Setups', '#', '#', ' ', '0', '2018-01-27 15:31:54', 1, 1, 'fa fa-cogs');
INSERT INTO `menu` VALUES ('017', 'Change Password', 'change_password.php', '008', ' ', '1', '2018-04-10 14:34:40', 0, 0, NULL);
INSERT INTO `menu` VALUES ('028', 'Users', 'user_list.php', '004', ' ', '1', '2018-10-21 23:44:22', 0, 0, NULL);
INSERT INTO `menu` VALUES ('051', 'Staff', 'staff_list.php', '139', '', '1', '2018-12-11 11:50:18', 0, 0, NULL);
INSERT INTO `menu` VALUES ('054', 'Request Loan', 'loan_list.php', '140', '', '1', '2018-12-13 11:28:35', 0, 0, NULL);
INSERT INTO `menu` VALUES ('112', 'Loan Item', 'loan_item_list.php', '140', '', '1', '2018-12-13 21:41:44', 0, 0, NULL);
INSERT INTO `menu` VALUES ('130', 'Deduction List', 'deduction_list.php', '140', '', '1', '2018-12-14 11:48:27', 0, 0, NULL);
INSERT INTO `menu` VALUES ('131', 'Deduction Rate List', 'deduction_rate_list.php', '140', '', '1', '2018-12-14 11:49:31', 0, 0, NULL);
INSERT INTO `menu` VALUES ('132', 'Designation List', 'designation_list.php', '140', '', '1', '2018-12-14 11:50:03', 0, 0, NULL);
INSERT INTO `menu` VALUES ('133', 'Allowance List', 'allowance_list.php', '140', '', '1', '2018-12-14 11:50:50', 0, 0, NULL);
INSERT INTO `menu` VALUES ('134', 'Allowance Rate Setup', 'allowance_rate_list.php', '140', '', '1', '2018-12-14 11:51:32', 0, 0, NULL);
INSERT INTO `menu` VALUES ('139', 'Payroll', '#', '#', '', '0', '2018-12-14 13:09:59', 0, 0, NULL);
INSERT INTO `menu` VALUES ('140', 'Payroll Setup', '#', '#', '', '0', '2018-12-14 13:12:52', 0, 0, NULL);
INSERT INTO `menu` VALUES ('141', 'Payroll List', 'payroll_list.php', '139', '', '1', '2018-12-15 07:37:21', 0, 0, NULL);
INSERT INTO `menu` VALUES ('142', 'State Payroll', 'payroll_state.php', '143', '', '1', '2018-12-17 10:54:51', 0, 0, NULL);
INSERT INTO `menu` VALUES ('144', 'Employee Payroll', 'payroll_employee.php', '143', '', '1', '2018-12-17 10:56:31', 0, 0, NULL);
INSERT INTO `menu` VALUES ('145', 'Staff Movement', 'staff_movement_national.php', '008', ' ', '1', '2019-01-22 13:56:09', 0, 0, NULL);
INSERT INTO `menu` VALUES ('146', 'Staff Leave', 'leave_item_list.php', '140', ' ', '1', '2019-01-23 14:54:48', 0, 0, NULL);
INSERT INTO `menu` VALUES ('147', 'Manage Permissions', 'permissions_list.php', '004', '', '1', '2022-08-01 16:22:24', 0, 0, '');

-- ----------------------------
-- Table structure for menugroup
-- ----------------------------
DROP TABLE IF EXISTS `menugroup`;
CREATE TABLE `menugroup`  (
  `role_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 6144 kB; InnoDB free: 6144 kB; InnoDB free: 614' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menugroup
-- ----------------------------
INSERT INTO `menugroup` VALUES ('001', '004');
INSERT INTO `menugroup` VALUES ('001', '006');
INSERT INTO `menugroup` VALUES ('001', '007');
INSERT INTO `menugroup` VALUES ('001', '008');
INSERT INTO `menugroup` VALUES ('001', '017');
INSERT INTO `menugroup` VALUES ('001', '028');
INSERT INTO `menugroup` VALUES ('001', '051');
INSERT INTO `menugroup` VALUES ('001', '054');
INSERT INTO `menugroup` VALUES ('001', '112');
INSERT INTO `menugroup` VALUES ('001', '130');
INSERT INTO `menugroup` VALUES ('001', '131');
INSERT INTO `menugroup` VALUES ('001', '132');
INSERT INTO `menugroup` VALUES ('001', '133');
INSERT INTO `menugroup` VALUES ('001', '134');
INSERT INTO `menugroup` VALUES ('001', '139');
INSERT INTO `menugroup` VALUES ('001', '140');
INSERT INTO `menugroup` VALUES ('001', '141');
INSERT INTO `menugroup` VALUES ('001', '142');
INSERT INTO `menugroup` VALUES ('001', '143');
INSERT INTO `menugroup` VALUES ('001', '144');
INSERT INTO `menugroup` VALUES ('001', '145');
INSERT INTO `menugroup` VALUES ('001', '146');
INSERT INTO `menugroup` VALUES ('001', '147');
INSERT INTO `menugroup` VALUES ('002', '014');
INSERT INTO `menugroup` VALUES ('002', '144');
INSERT INTO `menugroup` VALUES ('002', '146');
INSERT INTO `menugroup` VALUES ('003', '004');
INSERT INTO `menugroup` VALUES ('003', '017');
INSERT INTO `menugroup` VALUES ('003', '131');
INSERT INTO `menugroup` VALUES ('003', '134');

-- ----------------------------
-- Table structure for parameter
-- ----------------------------
DROP TABLE IF EXISTS `parameter`;
CREATE TABLE `parameter`  (
  `parameter_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parameter_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `privilege_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parameter_description` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parameter
-- ----------------------------
INSERT INTO `parameter` VALUES ('working_hours', '00:00-23:59', '0', 'Allotted working hours of the day', '2009-10-31 00:00:00');
INSERT INTO `parameter` VALUES ('no_of_pin_misses', '5', '1', 'Available number of pin misses allowed', '2009-11-16 12:44:27');
INSERT INTO `parameter` VALUES ('password_expiry_days', '360', '1', 'Number of days for password expiry', '2009-12-04 13:05:30');
INSERT INTO `parameter` VALUES ('Convient Fee Setup', '500', '0', 'Convient Fee Setup', '2016-10-26 18:38:44');
INSERT INTO `parameter` VALUES ('ticket_reservation_holding_max_time', '5', '1', 'Minutes the a Ticket is to be left reserved for payment to be done otherwise opened for purchase', '2018-07-23 12:04:24');
INSERT INTO `parameter` VALUES ('teasypay_api_buygoods_soapaction', 'http://41.220.65.180:8080/axis2/services/HRestAPITSHA/buyGoods', '1', 'Teasy Pay Api URL', '2018-07-30 16:35:52');
INSERT INTO `parameter` VALUES ('teasypay_api_apipass', 'qQgGbv6Hj684p0', '1', 'Hash Key', '2018-07-30 18:15:41');
INSERT INTO `parameter` VALUES ('teasypay_api_apiuser', 'gWtIgw29tks1kz', '1', 'Api User', '2018-07-30 18:46:52');
INSERT INTO `parameter` VALUES ('teasypay_api_soapurl', 'http://41.220.65.180:8080/axis2/services/HRestAPITSHA?wsdl', NULL, NULL, NULL);
INSERT INTO `parameter` VALUES ('teasypay_api_balance_soapaction', 'http://41.220.65.180:8080/axis2/services/HRestAPITSHA/queryBalanceCustomer', NULL, NULL, NULL);
INSERT INTO `parameter` VALUES ('boarding_time_before_departure_time', '2000', NULL, 'Minutes to Allow For Booking before a schedule departure time', '2018-08-04 16:49:30');
INSERT INTO `parameter` VALUES ('login_keep_alive', '300', '1', 'Expiration time for a keep alive of user session', '2018-08-06 18:17:28');
INSERT INTO `parameter` VALUES ('softcom_api_push_ticket', 'https://abuja-metro.appspot.com/api/v1/tickets/new', NULL, 'Send New Tickets to the Validation System', '2018-08-14 16:56:35');
INSERT INTO `parameter` VALUES ('site_local_url', 'http://localhost:85/access_framework/demo/', '0', 'Page Live Url', '2022-08-15 22:11:11');
INSERT INTO `parameter` VALUES ('site_live_url', 'https://vpurse.vuvaa.com/', '0', 'Page Local URL', '2022-08-15 22:12:54');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `label` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `operation_type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `posted_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `posted_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `posted_userid` bigint(20) NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NULL DEFAULT 0,
  `lastmodified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'Role.role_list', 'Role List', 'all_op', '', '2022-07-14 04:30:04', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (2, 'Role.delete_role', 'Delete Role', 'all_op', '', '2022-07-14 04:34:17', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (3, 'Role.saveRole', 'Save New Role', 'new', 'User Role Creation', '2022-07-14 04:35:11', 'sam@mail.com', '127.0.0.1', NULL, 0, '2022-09-28 03:23:28');
INSERT INTO `permissions` VALUES (4, 'Role.saveRole', 'Update Role', 'edit', '', '2022-07-14 04:36:08', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (5, 'Permissions.savePermissions', 'Save New Permissions', 'new', '', '2022-07-14 04:47:34', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (6, 'Permissions.savePermissions', 'Update Permissions', 'edit', '', '2022-07-14 04:48:04', 'adakj', '127.0.0.1', NULL, 0, '2022-07-14 04:48:39');
INSERT INTO `permissions` VALUES (13, 'Permissions.permission_list', 'Permissions List', 'all_op', '', '2022-07-15 10:56:44', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (14, 'Permissions.loadPermissions', 'Load Permissions', 'all_op', 'Load Permissions', '2022-07-15 10:57:31', 'adakj', '127.0.0.1', NULL, 0, '2022-07-15 11:04:07');
INSERT INTO `permissions` VALUES (15, 'Permissions.saveActions', 'Save Permission Map', 'all_op', 'Save Permission Map', '2022-07-15 10:58:15', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (16, 'Permissions.deletePermission', 'Delete Permissions', 'all_op', 'Delete Permissions', '2022-07-15 11:00:05', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (17, 'Permissions.inVisibleActions', 'Load Visible Permissions', 'all_op', 'Load Visible Permissions', '2022-07-15 11:01:28', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (18, 'Permissions.visibleActions', 'Load Invisible Permissions', 'all_op', 'Load Invisible Permissions', '2022-07-15 11:02:31', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (19, 'Menu.loadmenus', 'Load Menus', 'all_op', NULL, '2022-07-15 12:33:14', 'nnpcretail', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (20, 'users.getActivityLog', 'Activity Logs', 'all_op', 'Load All Activities', '2022-07-15 13:04:17', 'nnpcretail', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (23, 'Users.userlist', 'User List', 'all_op', 'Load User List', '2022-07-15 13:55:34', 'nnpcretail', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (25, 'menu.saveMenu', 'Save Menu', 'new', 'Save Menu', '2022-07-15 13:59:39', 'nnpcretail', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (27, 'Users.saveUser', 'Save User', 'new', 'Save User', '2022-07-15 15:34:07', 'nnpcretail', '41.242.60.178', NULL, 0, '2022-07-15 03:49:59');
INSERT INTO `permissions` VALUES (28, 'Menu.generateMenu', 'Generate Navigation Menu', 'all_op', 'Generate Navigation Menu', '2022-07-15 12:53:14', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (29, 'Menu.saveMenu', 'Update Menu', 'edit', 'Update Menu', '2022-07-15 12:55:07', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (30, 'Menu.loadParentMenu', 'Load Parent Menu', 'all_op', '', '2022-07-15 01:16:14', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (31, 'Menu.deleteMenu', 'Delete Menu', 'all_op', '', '2022-07-15 01:17:17', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (32, 'Menu.menuList', 'Menu List', 'all_op', 'Menu List', '2022-07-15 01:18:13', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (33, 'Menu.visibleMenus', 'Load Visible Menu', 'all_op', 'Load Invisible Menu', '2022-07-15 01:23:44', 'adakj', '127.0.0.1', NULL, 0, '2022-07-15 01:25:11');
INSERT INTO `permissions` VALUES (34, 'Menu.inVisibleMenus', 'Load Invisible Menu', 'all_op', '', '2022-07-15 01:25:51', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (35, 'Menu.saveMenuGroup', 'Save Menu Group', 'all_op', '', '2022-07-15 02:19:49', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (78, 'Role.generateInvoice', 'Generate Invoice', 'all_op', '', '2022-07-15 04:41:28', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (116, 'Users.saveUser', 'Update User Profile', 'edit', '', '2022-07-15 06:59:16', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (117, 'Users.confirmCurrent', 'Confirm Current Password', 'all_op', '', '2022-07-15 07:02:42', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (120, 'Users.resetPassword', 'Users Reset Password', 'all_op', '', '2022-07-15 07:32:59', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (121, 'Users.doForgotPasswordChange', 'User Forgot Password Change', 'all_op', '', '2022-07-15 07:34:52', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (122, 'Users.generatePwdLink', 'Generate Password Link', 'all_op', '', '2022-07-15 07:36:12', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (123, 'Users.verifyLink', 'Verify Password Link', 'all_op', '', '2022-07-15 07:37:00', 'adakj', '127.0.0.1', NULL, 0, '2022-07-15 07:39:05');
INSERT INTO `permissions` VALUES (124, 'Users.getLgas', 'Get All LGAs', 'all_op', '', '2022-07-15 07:40:43', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (125, 'Users.profileEdit', 'User Profile Edit', 'edit', '', '2022-07-15 07:44:37', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (126, 'Users.emailPasswordReset', 'User Email Password Reset', 'all_op', '', '2022-07-15 08:00:09', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (127, 'Users.changeUserStatus', 'Disable/Enable Users', 'all_op', '', '2022-07-15 08:01:46', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (128, 'Users.unLockUser', 'Unlock Users Account', 'all_op', '', '2022-07-15 08:02:26', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (129, 'Users.passwordChange', 'Users Change Password', 'all_op', '', '2022-07-15 08:03:40', 'adakj', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (133, 'Users.userProfileUpdate', 'All User Profile Update ', 'edit', 'All User Profile Update', '2022-07-25 06:54:24', 'one@demo.com', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (134, 'Dashboard.carousel', 'Dashboard Carousel', 'all_op', '', '2022-08-01 07:56:11', '', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (135, 'Dashboard.remittance', 'Dashboard Remittance', 'all_op', '', '2022-08-01 07:57:42', '', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (136, 'Dashboard.topFiveChurches', 'Dashboard Top Churches', 'all_op', '', '2022-08-01 07:58:21', '', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (137, 'Users.sackUser', 'Sack Users', 'all_op', '', '2022-08-05 11:29:45', '', '127.0.0.1', NULL, 0, NULL);
INSERT INTO `permissions` VALUES (138, 'Users.sackUsers', 'Sack Usersrrr', 'edit', 'test', '2022-08-05 11:41:55', 'sam@mail.com', '127.0.0.1', NULL, 1, NULL);
INSERT INTO `permissions` VALUES (139, 'Users.doPasswordChange', 'User Password Change', 'all_op', '', '2022-08-06 08:23:48', 'sam@mail.com', '127.0.0.1', NULL, 0, NULL);

-- ----------------------------
-- Table structure for permissions_map
-- ----------------------------
DROP TABLE IF EXISTS `permissions_map`;
CREATE TABLE `permissions_map`  (
  `role_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `posted_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `posted_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `posted_userid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `permission_id_fk`(`permission_id`) USING BTREE,
  CONSTRAINT `permission_id_fk` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of permissions_map
-- ----------------------------
INSERT INTO `permissions_map` VALUES ('001', 1, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 2, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 3, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 4, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 5, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 6, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 13, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 14, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 15, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 16, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 17, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 18, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 19, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 20, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 23, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 25, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 27, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 28, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 29, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 30, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 31, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 32, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 33, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 34, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 35, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 78, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 116, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 117, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 120, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 121, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 122, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 123, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 124, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 125, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 126, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 127, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 128, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 129, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 133, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 134, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 135, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 136, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 137, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('001', 139, '2022-08-06 08:24:11', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('0011', 134, '2022-09-14 11:49:16', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('0011', 136, '2022-09-14 11:49:16', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('002', 134, '2022-08-11 04:02:26', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('005', 134, '2022-08-15 11:37:03', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('005', 135, '2022-08-15 11:37:03', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('006', 6, '2022-09-14 11:54:35', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('006', 15, '2022-09-14 11:54:35', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('006', 18, '2022-09-14 11:54:35', 'sam@mail.com', '127.0.0.1', NULL);
INSERT INTO `permissions_map` VALUES ('006', 78, '2022-09-14 11:54:35', 'sam@mail.com', '127.0.0.1', NULL);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `role_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_enabled` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('001', 'Super Administrator', '', '2009-10-31 18:54:57');
INSERT INTO `role` VALUES ('0010', 'Church Choir', '1', '2022-08-11 03:56:56');
INSERT INTO `role` VALUES ('0011', 'User', '1', '2022-08-05 10:36:43');
INSERT INTO `role` VALUES ('002', 'Accountant', '', '2016-10-26 16:47:09');
INSERT INTO `role` VALUES ('003', 'Pastor', '', '2016-10-26 16:47:28');
INSERT INTO `role` VALUES ('004', 'Head Usher', NULL, '2019-09-25 20:57:34');
INSERT INTO `role` VALUES ('005', 'Head Quarters Administrator', NULL, '2019-10-29 16:22:52');
INSERT INTO `role` VALUES ('006', 'State Administrator', NULL, '2019-10-29 16:23:11');
INSERT INTO `role` VALUES ('007', 'Regional Administrator', NULL, NULL);
INSERT INTO `role` VALUES ('008', 'Head Monitoring Unit', NULL, NULL);
INSERT INTO `role` VALUES ('009', 'Church Usher', '1', '2022-08-01 05:45:06');
INSERT INTO `role` VALUES ('010', 'Church Admin', '1', '2022-08-18 09:34:00');
INSERT INTO `role` VALUES ('011', 'Student Admin', '1', '2022-08-18 09:35:15');

-- ----------------------------
-- Table structure for transaction_table
-- ----------------------------
DROP TABLE IF EXISTS `transaction_table`;
CREATE TABLE `transaction_table`  (
  `transaction_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `source_acct` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `destination_acct` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trans_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transaction_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `transaction_amount` decimal(50, 2) NULL DEFAULT NULL,
  `response_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payment_mode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `posted_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `posted_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchant_category` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settlement_status` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  `settlement_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `session_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `debit_flag` int(11) NOT NULL,
  `debit_flag_date` date NOT NULL,
  `reversal_flag` int(11) NOT NULL,
  `reversal_flag_date` date NOT NULL,
  `trans_query_id` int(11) NULL DEFAULT NULL,
  `merchant_commission` decimal(50, 2) NULL DEFAULT NULL,
  `chargefee` decimal(50, 2) NULL DEFAULT NULL,
  `response_message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `charge_currency` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payment_gateway` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_reversal` tinyint(1) NULL DEFAULT 0,
  `reversal_request_date` datetime NULL DEFAULT NULL,
  `reversal_approval_date` datetime NULL DEFAULT NULL,
  `reversal_approved_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_processed` tinyint(1) NULL DEFAULT 0,
  `merchant_trans_id` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ussd_code` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `revenue` decimal(50, 2) NULL DEFAULT NULL,
  `church_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`transaction_id`) USING BTREE,
  INDEX `typeT`(`trans_type`) USING BTREE,
  INDEX `RCI`(`response_code`) USING BTREE,
  INDEX `cDai`(`created`) USING BTREE,
  INDEX `PuI`(`posted_user`) USING BTREE,
  INDEX `mCI`(`merchant_category`) USING BTREE,
  INDEX `SSi`(`settlement_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 4096 kB; InnoDB free: 3072 kB; InnoDB free: 307' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction_table
-- ----------------------------
INSERT INTO `transaction_table` VALUES ('000000036181031012110', 'chimalupaul@gmail.com', 'USS-VUVAA000000036', '', 'Purchase of GLO airtime', 200.00, '00', 'USSD', NULL, '2018-10-31 13:21:10', NULL, NULL, 1, 'SETL-181031015243', 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, 0.00, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000323', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000036181031012802', 'chimalupaul@gmail.com', 'USS-VUVAA000000036', '', 'Purchase of GLO airtime', 200.00, '99', 'USSD', NULL, '2018-10-31 13:28:03', NULL, NULL, 1, 'SETL-181031015243', NULL, 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, 0.00, 'Intialized', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 'ACC00000423', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000036181031012847', 'chimalupaul@gmail.com', 'USS-VUVAA000000036', '', 'Purchase of MTN airtime', 200.00, '99', 'USSD', NULL, '2018-10-31 13:28:47', NULL, NULL, 1, 'SETL-181031015243', NULL, 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, 0.00, 'Intialized', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 'ACC00000523', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000036181031015058', 'chimalupaul@gmail.com', 'USS-VUVAA000000036', '', 'Purchase of GLO airtime', 500.00, '00', 'USSD', NULL, '2018-10-31 13:50:58', NULL, NULL, 1, 'SETL-181031015243', 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, 0.00, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000723', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000036181031060239', 'chimalupaul@gmail.com', 'USS-VUVAA000000036', '', 'Purchase of GLO airtime', 200.00, '99', 'USSD', NULL, '2018-10-31 18:02:40', NULL, NULL, 0, NULL, NULL, 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, 0.00, 'Intialized', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 'ACC00001823', 0.00, NULL);
INSERT INTO `transaction_table` VALUES ('000000036181031111901', 'chimalupaul@gmail.com', 'USS-VUVAA000000036', '', 'Purchase of MTN airtime', 500.00, '00', 'USSD', NULL, '2018-10-31 11:19:02', NULL, NULL, 1, 'SETL-181031015243', 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000223', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181023034733', 'okon@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of GLO airtime', 200.00, '99', 'USSD', NULL, '2018-10-29 10:29:35', NULL, NULL, 0, NULL, NULL, 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Intialized', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 'ACC00000802', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181023055759', 'okon@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of GLO airtime', 200.00, '00', 'USSD', NULL, '2018-10-24 13:40:00', NULL, NULL, 0, NULL, '477383uss', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181023070027', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of GLO airtime', 200.00, '99', 'USSD', NULL, '2018-10-23 19:00:27', NULL, NULL, 0, NULL, NULL, 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Intialized', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181024022011', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of GLO airtime', 200.00, '00', 'USSD', NULL, '2018-10-29 14:20:12', NULL, NULL, 0, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181024031325', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of GLO airtime', 200.00, '00', 'USSD', NULL, '2018-10-29 15:34:25', NULL, NULL, 0, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181024040127', 'chimalupaul@gmail.com', 'ACC-OPMHT000000087', '', 'Purchase of MTN airtime', 200.00, '00', 'USSD', NULL, '2018-10-29 16:01:28', NULL, NULL, 1, 'SETL-181031104315', 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181024042836', 'chimalupaul@gmail.com', 'USS-VUVAA000000036', '', 'Purchase of MTN airtime', 500.00, '00', 'USSD', NULL, '2018-10-29 16:28:36', NULL, NULL, 1, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181025083508', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of MTN airtime', 200.00, '99', 'USSD', NULL, '2018-10-25 20:35:10', NULL, NULL, 0, NULL, NULL, 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Intialized', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 'ACC102', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181025083849', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of GLO airtime', 200.00, '99', 'USSD', NULL, '2018-10-25 20:38:50', NULL, NULL, 0, NULL, NULL, 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Intialized', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 'ACC00000002', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181025084033', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of GLO airtime', 200.00, '00', 'USSD', NULL, '2018-10-25 20:40:34', NULL, NULL, 0, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000102', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181025084913', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of MTN airtime', 200.00, '00', 'USSD', NULL, '2018-10-25 20:49:14', NULL, NULL, 0, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000202', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181025085006', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of MTN airtime', 200.00, '00', 'USSD', NULL, '2018-10-25 20:50:06', NULL, NULL, 0, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000302', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181025085115', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of GLO airtime', 200.00, '00', 'USSD', NULL, '2018-10-25 20:51:15', NULL, NULL, 0, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000402', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181025085159', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of ZAIN airtime', 100.00, '00', 'USSD', NULL, '2018-10-25 20:51:59', NULL, NULL, 0, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000502', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181025085446', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of MTN airtime', 100.00, '00', 'USSD', NULL, '2018-10-25 20:54:46', NULL, NULL, 0, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000602', NULL, NULL);
INSERT INTO `transaction_table` VALUES ('000000086181025085550', 'chimalupaul@gmail.com', 'ACC-OPMHT000000086', '', 'Purchase of GLO airtime', 100.00, '00', 'USSD', NULL, '2018-10-25 20:55:50', NULL, NULL, 0, NULL, 'jhhbjv7cff', 0, '0000-00-00', 0, '0000-00-00', NULL, NULL, NULL, 'Successful', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 'ACC00000702', NULL, NULL);

-- ----------------------------
-- Table structure for userdata
-- ----------------------------
DROP TABLE IF EXISTS `userdata`;
CREATE TABLE `userdata`  (
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `firstname` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastname` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passchg_logon` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass_expire` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass_dateexpire` date NULL DEFAULT NULL,
  `pass_change` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `user_disabled` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `user_locked` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `day_1` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `day_2` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `day_3` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `day_4` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `day_5` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `day_6` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `day_7` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pin_missed` int(2) NOT NULL DEFAULT 0,
  `last_used` datetime NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `modified` datetime NULL DEFAULT NULL,
  `authorize_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `user_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hint_question` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hint_answer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `override_wh` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extend_wh` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `super_agent_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `office_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `posted_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `office_state` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `office_lga` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reg_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `church_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parish_pastor` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `modified_date` datetime NULL DEFAULT NULL,
  `photo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reset_pwd_link` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`username`) USING BTREE,
  INDEX `US2`(`password`) USING BTREE,
  INDEX `US3`(`pass_expire`) USING BTREE,
  INDEX `US4`(`role_id`) USING BTREE,
  INDEX `US5`(`user_locked`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userdata
-- ----------------------------
INSERT INTO `userdata` VALUES ('abuja_accountant@mail.com', '0x86a2db382977b94e', '002', '', 'Abujas', 'accountant', 'abuja_accountant@mail.com', '0705555542', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-02 06:34:00', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-020015', '1', '2022-08-11 04:02:02', NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('abuja_monitoring@mail.com', '0xa2c109e258d028c7', '008', '', 'abuja', 'monitoring unit', 'abuja_monitoring@mail.com', '0800055578', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-02 06:35:18', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-020015', '1', '2022-02-02 01:01:28', NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('abuja_pastor@mail.com', '0x650ac6b0e9a96483', '003', '', 'abuja', 'pastor', 'abuja_pastor@mail.com', '07068855214', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 1, NULL, '2019-11-02 06:23:27', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0045512298', 'MALU JOSEPH UGO', NULL, NULL, NULL, '044', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-020015', '0', NULL, NULL, '');
INSERT INTO `userdata` VALUES ('abuja_usher@mail.com', '0xad25c399450175f5', '004', '', 'abuja', 'usher', 'abuja_usher@mail.com', '08073624675', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-02 06:34:39', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'abuja_pastor@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-020015', '0', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('acc@mail.com', '0x13bf1080493306b1', '002', '', 'Ikechukwu', 'Chimalu', 'acc@mail.com', '08073624675', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-10-16 05:36:57', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'chimalupaul@gmail.com', NULL, NULL, '0', NULL, '1', 'male', 'TLC-011003', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('chaza_accountant@mail.com', '0xa2712594b6a54fc9', '002', '', 'chaza', 'accountant', 'chaza_accountant@mail.com', '07888855556', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-01 07:11:33', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'chaza_pastor@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-019015', '0', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('chaza_monitoring_unit@mail.com', '0xf059a56617a96729', '008', '', 'Chaza', 'monitoring unit', 'chaza_monitoring_unit@mail.com', '07055555448', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-01 07:17:58', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'chaza_pastor@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-019015', '0', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('chaza_pastor@mail.com', '0x147f73f90b66d0b8', '003', '', 'chaza', 'pastor', 'chaza_pastor@mail.com', '07060464666', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-01 07:03:39', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0045512298', 'MALU JOSEPH UGO', NULL, NULL, NULL, '044', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-019015', '0', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('chaza_usher@mail.com', '0x5720b8e7008bfc1e', '004', '', 'chaza', 'usher', 'chaza_usher@mail.com', '07060760508899', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-01 07:16:33', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'chaza_pastor@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-019015', '0', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('chimalupaul@gmail.com', '0x04ea295aeb2b2ef1', '003', '', 'Ikechukwu', 'Chimalu', 'chimalupaul@gmail.com', '08073624675', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-10-16 05:36:07', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0045512298', 'MALU JOSEPH UGO', NULL, NULL, NULL, '044', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-011003', '1', '2019-10-23 12:51:18', 'chimalupaul@gmail.com.jpg', '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('chimalupaul@gmail.comaa', '0xee18b6ee64267792', '005', '', 'Ikechukwu', 'Chimalu', 'chimalupaul@gmail.comaa', '08073624675', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2020-05-06 11:02:47', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', NULL, '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('holla@mail.com', '0xd9baa11df92eddd6', '003', '', 'Ikechukwu', 'Chimalu', 'holla@mail.com', '08073624675', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-10-29 09:51:47', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0045512298', 'MALU JOSEPH UGO', NULL, NULL, NULL, '044', 'hq@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-015003', '0', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('hq@mail.com', '0xfa2754e5206604bd', '005', '', 'hqadmin', 'hqadmin', 'hq@mail.com', '08065555471', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-10-29 04:33:46', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-013003', '0', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('monitoring@mail.com', '0xc1139f37be3e7d7a', '008', '', 'Ikechukwu', 'Chimalu', 'monitoring@mail.com', '08073624675', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-01 03:28:36', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'chimalupaul@gmail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-011003', '0', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('okon@mail.com', '0x0b69394d5a8e0eb5', '003', '', 'Ikechukwu', 'Chimalu', 'okon@mail.com', '08073624675', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-10-18 11:37:47', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', '99', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('sam@mail.com', '0x3dd8ba2b49be532d', '001', '', 'Sam', 'James', 'sam@mail.com', '08035153080', '0', NULL, '2024-07-18', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, '2018-04-06 16:59:19', '2018-03-09 16:32:05', '2022-08-05 19:00:40', NULL, NULL, 'jddjjjd', 'jdjdjjdd', '0', '1', NULL, '09874625477', 'jdjdjd', '', 'skajjs', 'hdhdhhf', 'GTB', 'sam@mail.com', 'FCT', 'AMAC', '1', '0001', '0', 'male', NULL, '', NULL, 'sam@mail.com.jpg', '');
INSERT INTO `userdata` VALUES ('sam@mail.comm', '0x3dd8ba2b49be532d', '006', NULL, 'Name', 'Empty', 'sam@mail.comm', '0349393939', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2022-08-18 09:39:47', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '<br />\r\n<b>Notice</b>:  Undefined variable: user in <b>C:\\laragon\\www\\access_framework\\setup\\pastor.php</b> on line <b>72</b><br />\r\n<br />\r\n<b>Notice</b>:  Trying to access array offset on value of type null in <b>C:\\laragon\\www\\access_framework\\setup\\pastor.php</b> on line <b>72</b><br />\r\n<br />\r\n<b>Notice</b>:  Trying to access array offset on value of type null in <b>C:\\laragon\\www\\access_framework\\setup\\pastor.php</b> on line <b>72</b><br />\r\n', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', NULL, '1', NULL, NULL, NULL);
INSERT INTO `userdata` VALUES ('sam_prosper@mail.com', '0x22770ec5b051cb39', '006', NULL, 'Prosper', 'Adakole', 'sam_prosper@mail.com', '90393939393', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2022-08-05 07:01:32', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '<br />\r\n<b>Warning</b>:  Undefined variable $user in <b>C:\\laragon\\www\\framework\\framework\\setup\\pastor.php</b> on line <b>73</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\laragon\\www\\framework\\framework\\setup\\pastor.php</b> on line <b>73</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\laragon\\www\\framework\\framework\\setup\\pastor.php</b> on line <b>73</b><br />\r\n', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', NULL, '1', NULL, NULL, NULL);
INSERT INTO `userdata` VALUES ('sasssm@mail.com', '0x3a46391500cbf610', '005', NULL, 'Mercy', 'John', 'sasssm@mail.com', '0904949494', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2023-01-23 12:49:46', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', NULL, '1', NULL, NULL, NULL);
INSERT INTO `userdata` VALUES ('state_admin@mail.com', '0x036e826be07ed7c5', '006', '', 'Ikechukwu', 'Chimalu', 'state_admin@mail.com', '08073624675', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-10-30 09:26:55', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-013003', '0', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('test1@mail.com', '0x6e1d02c9bd721da3', '002', '', 'adsfdgfg', 'sdfgg', 'test1@mail.com', '025852222226', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-12-03 11:11:34', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'tlc01220pastor@tlc.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-047012', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('test2@mail.com', '0x82e70b4331819111', '004', '', 'jh', 'gcfhvj', 'test2@mail.com', '0581052', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-12-03 11:12:22', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'tlc01220pastor@tlc.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-047012', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('test3@mail.com', '0x82e70b4331819111', '008', '', 'ghjkl,mn', 'ghjknbvghj', 'test3@mail.com', '0205841205', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-12-03 11:12:55', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'tlc01220pastor@tlc.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-047012', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc00110pastor@tlc.com', '0x204379ec193a4e10', '003', '', 'default_name', 'default_name', 'tlc00110pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:48:42', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-036001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc00111pastor@tlc.com', '0x8e70a90ba86bcb6d', '003', '', 'default_name', 'default_name', 'tlc00111pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:49:09', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-037001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc00112pastor@tlc.com', '0x2a3ada1f153940ef', '003', '', 'default_name', 'default_name', 'tlc00112pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:49:20', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-038001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc00113pastor@tlc.com', '0x24dd930d4556d90d', '003', '', 'default_name', 'default_name', 'tlc00113pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 08:24:26', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-040001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc00116pastor@tlc.com', '0xb77aa57fe03465b2', '003', '', 'default_name', 'default_name', 'tlc00116pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-15 02:30:24', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-043001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc00117pastor@tlc.com', '0x41357be1ca2a5b82', '003', '', 'default_name', 'default_name', 'tlc00117pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-15 02:35:33', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-044001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc0013pastor@tlc.com', '0x253502bd56f0ea3163486462e0d6ab7b', '003', '', 'default_name', 'default_name', 'tlc0013pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:07:24', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-029001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc0015pastor@tlc.com', '0xd646e5cd6187e92f66e01a5d9cdf2b64', '003', '', 'default_name', 'default_name', 'tlc0015pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:14:32', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-031001', '1', '2019-11-13 06:42:05', NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc0016pastor@tlc.com', '0xb5e02f133489bfb6ed202ca628d9c98a', '003', '', 'default_name', 'default_name', 'tlc0016pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:44:05', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-032001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc0017pastor@tlc.com', '0x8ef9621cd75d9641bd852d8e9406509e', '003', '', 'default_name', 'default_name', 'tlc0017pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:47:01', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-033001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc0019pastor@tlc.com', '0x387db30f4ab25f9c', '003', '', 'default_name', 'default_name', 'tlc0019pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:48:21', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-035001', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc00214pastor@tlc.com', '0x9703deb303769b8f', '003', '', 'default_name', 'default_name', 'tlc00214pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-13 09:26:17', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', 'unknown', NULL, NULL, NULL, '', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-042002', '1', '2019-11-13 07:12:09', NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc00218pastor@tlc.com', '0xa2868718743504a2', '003', '', 'default_name', 'default_name', 'tlc00218pastor@tlc.com', '07060000000', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-15 02:37:24', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0045512298', 'MALU JOSEPH UGO', NULL, NULL, NULL, '044', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-045002', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc00219pastor@tlc.com', '0xa2868718743504a2', '003', '', 'default_name', 'default_name', 'tlc00219pastor@tlc.com', '07060000000', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-15 05:38:29', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0045512298', 'MALU JOSEPH UGO', NULL, NULL, NULL, '044', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-046002', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc0021pastor@tlc.com', '0x2814d4a3425d8e82686a8036d2fec454', '003', '', 'default_name', 'default_name', 'tlc0021pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:05:44', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-027002', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc0022pastor@tlc.com', '0xb15fca6d59033b0da652162c3d383c7f', '003', '', 'default_name', 'default_name', 'tlc0022pastor@tlc.com', '07060000000', '1', NULL, NULL, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:06:03', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', 'unknown', NULL, NULL, NULL, '00', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'm', 'TLC-028002', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc0034pastor@tlc.com', '0x2eeb5a211c6b4afc24e0dafacd161199', '003', '', 'ugo c ugo', 'default_name', 'tlc0034pastor@tlc.com', '0706999999999', '1', NULL, NULL, '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-11-12 07:09:30', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0045512298', 'MALU JOSEPH UGO', NULL, NULL, NULL, '044', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-030003', '1', '2020-03-18 03:06:32', NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('tlc01220pastor@tlc.com', '0x143604d46bd69e23', '003', '', 'Joe', 'malu', 'tlc01220pastor@tlc.com', '07066665842', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-12-03 06:33:24', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0045512298', 'Could not resolve host: live.moneywaveapi.coUnable to verify account, try again.', NULL, NULL, NULL, '044', 'sam@mail.com', NULL, NULL, '0', NULL, '0', 'male', 'TLC-047012', '1', NULL, '', '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');
INSERT INTO `userdata` VALUES ('wleader@mail.com', '0xc20f668ff50fd07d', '004', '', 'women', 'leader', 'wleader@mail.com', '07060760578', '0', NULL, NULL, '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', 0, NULL, '2019-10-22 02:46:39', '2022-08-05 19:00:40', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'chimalupaul@gmail.com', NULL, NULL, '0', NULL, '0', 'female', 'TLC-011003', '1', NULL, NULL, '0xf2adcf9db6eb6ce291c4f9c7e1c29aeda09aae3a0b23bb39a51e1ccb63b2c955abd285015048a913ec2c7b4a161608e591426ec6c9de62b9');

SET FOREIGN_KEY_CHECKS = 1;

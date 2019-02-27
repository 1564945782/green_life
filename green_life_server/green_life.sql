/*
MySQL Data Transfer
Source Host: localhost
Source Database: green_life
Target Host: localhost
Target Database: green_life
Date: 2019/2/27 ������ 10:14:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `type` char(15) NOT NULL DEFAULT '花卉' COMMENT '商品类型，例如：多肉、花卉、仿生植物',
  `name` char(30) NOT NULL DEFAULT '暂未命名' COMMENT '商品的详细名字，例如：多肉的红覆伦锦名字',
  `description` varchar(255) NOT NULL DEFAULT '暂无描述' COMMENT '卖家对商品的描述',
  `small_imgs` text NOT NULL COMMENT '存储的是小图片的地址',
  `big_imgs` text NOT NULL COMMENT '存的是大图片的地址',
  `del_price` float(20,0) NOT NULL DEFAULT '1' COMMENT '原价',
  `ins_price` float(20,0) NOT NULL DEFAULT '1' COMMENT '现价',
  `inventory` int(6) NOT NULL DEFAULT '100' COMMENT '库存量（件）',
  `sells` int(6) NOT NULL DEFAULT '10' COMMENT '销量',
  `breed_ways` text NOT NULL COMMENT '培育方式',
  `publish_time` char(30) NOT NULL DEFAULT '2019-02-26 09:32:15' COMMENT '商品上架时间',
  `delete` char(255) NOT NULL DEFAULT 'false' COMMENT '是否删除，布尔值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `name` char(3) NOT NULL COMMENT '账号',
  `password` char(3) NOT NULL COMMENT '密码',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nickname` char(30) DEFAULT NULL COMMENT '用户昵称',
  `tel` char(11) NOT NULL COMMENT '电话号码',
  `pwd` char(16) NOT NULL COMMENT '登录密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `goods_info` VALUES ('15', '多肉', '红覆伦锦', '法师三仙翡翠冰嘉年华梅花柏迪红覆伦锦圣诞节多肉', 'https://gd3.alicdn.com/imgextra/i1/4006138594/O1CN012DM6GRaofW8fiGm_!!4006138594.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/4006138594/O1CN01oqhinY2DM6GSzdrTj_!!4006138594.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/4006138594/O1CN012DM6GRaYLyrF8eq_!!4006138594.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/4006138594/O1CN017p6Uq32DM6GPRwNxJ_!!4006138594.jpg_50x50.jpg_.webp', 'https://gd3.alicdn.com/imgextra/i1/4006138594/O1CN012DM6GRaofW8fiGm_!!4006138594.jpg,https://gd2.alicdn.com/imgextra/i2/4006138594/O1CN01oqhinY2DM6GSzdrTj_!!4006138594.jpg,https://gd4.alicdn.com/imgextra/i4/4006138594/O1CN012DM6GRaYLyrF8eq_!!4006138594.jpg,https://gd2.alicdn.com/imgextra/i2/4006138594/O1CN017p6Uq32DM6GPRwNxJ_!!4006138594.jpg', '33', '16', '10', '0', '法师三仙翡翠冰嘉年华梅花柏迪红覆伦锦圣诞节多肉', '2019-02-26 10:33:04', 'false');
INSERT INTO `goods_info` VALUES ('16', '多肉', '镜绿', '多肉植物组合盆栽新手套餐室内绿植花卉含花盆含土送木托盘', 'https://img.alicdn.com/imgextra/i4/2534275607/TB1xIjmblyWBuNkSmFPXXXguVXa_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/2534275607/TB2TcZveYuWBuNjSszgXXb8jVXa_!!2534275607.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/2534275607/TB23GsQe41YBuNjy1zcXXbNcXXa_!!2534275607.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/2534275607/TB2bnsBe7OWBuNjSsppXXXPgpXa_!!2534275607.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i4/2534275607/TB1xIjmblyWBuNkSmFPXXXguVXa_!!0-item_pic.jpg,https://img.alicdn.com/imgextra/i1/2534275607/TB2TcZveYuWBuNjSszgXXb8jVXa_!!2534275607.jpg,https://img.alicdn.com/imgextra/i4/2534275607/TB23GsQe41YBuNjy1zcXXbNcXXa_!!2534275607.jpg,https://img.alicdn.com/imgextra/i2/2534275607/TB2bnsBe7OWBuNjSsppXXXPgpXa_!!2534275607.jpg', '64', '32', '100', '20', '暂无培育方式介绍', '2019-02-26 10:42:56', 'false');
INSERT INTO `goods_info` VALUES ('17', '多肉', '雅乐之舞', '多肉植物金枝玉叶花卉盆栽室内观花植物四季常青净化空气\r\n金枝玉叶 绚丽多姿', 'https://img.alicdn.com/imgextra/i2/2986651903/O1CN01gJhcis1PvcD9gPDuF_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/2986651903/O1CN014reirs1PvcD9zRPhh_!!2986651903.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/2986651903/TB2aJCRdxjaK1RjSZKzXXXVwXXa_!!2986651903.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/2986651903/TB2yKr4zmBYBeNjy0FeXXbnmFXa_!!2986651903.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i2/2986651903/O1CN01gJhcis1PvcD9gPDuF_!!0-item_pic.jpg,https://img.alicdn.com/imgextra/i4/2986651903/O1CN014reirs1PvcD9zRPhh_!!2986651903.jpg,https://img.alicdn.com/imgextra/i4/2986651903/TB2aJCRdxjaK1RjSZKzXXXVwXXa_!!2986651903.jpg,https://img.alicdn.com/imgextra/i1/2986651903/TB2yKr4zmBYBeNjy0FeXXbnmFXa_!!2986651903.jpg', '32', '28', '100', '50', '暂无培育方式介绍', '2019-02-26 10:48:44', 'false');
INSERT INTO `goods_info` VALUES ('18', '花卉', '栀子花', '栀子花盆栽带花苞四季开花观花植物室内好养常年开花的盆栽花绿植\r\n植株高大翠绿清新带花苞发货', 'https://img.alicdn.com/imgextra/i2/1113401174/TB2F.LHhOQnBKNjSZFmXXcApVXa_!!1113401174.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/1113401174/TB25C9nDXuWBuNjSszbXXcS7FXa_!!1113401174.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/1113401174/TB2uqASmACWBuNjy0FaXXXUlXXa_!!1113401174.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/1113401174/TB2up3munmWBKNjSZFBXXXxUFXa_!!1113401174.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i2/1113401174/TB2F.LHhOQnBKNjSZFmXXcApVXa_!!1113401174.jpg,https://img.alicdn.com/imgextra/i4/1113401174/TB25C9nDXuWBuNjSszbXXcS7FXa_!!1113401174.jpg,https://img.alicdn.com/imgextra/i2/1113401174/TB2uqASmACWBuNjy0FaXXXUlXXa_!!1113401174.jpg,https://img.alicdn.com/imgextra/i4/1113401174/TB2up3munmWBKNjSZFBXXXxUFXa_!!1113401174.jpg', '33', '28', '100', '30', '暂无培育方式介绍', '2019-02-26 17:33:43', 'false');
INSERT INTO `goods_info` VALUES ('19', '花卉', '金枝玉叶', '盆栽室内客厅花卉观花绿植雅乐之舞四季常青盆景\r\n粉嘟嘟的花朵簇簇拥拥 圆润叶片可爱度爆表', 'https://img.alicdn.com/imgextra/i2/2460919140/O1CN012HOAVkPLWffq3H0_!!2460919140.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/2460919140/O1CN012HOAVjmiTNQXxBm_!!2460919140.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/2460919140/O1CN012HOAVi0K2y8kprD_!!2460919140.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/2460919140/O1CN012HOAVkPL3ZJkxxu_!!2460919140.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i2/2460919140/O1CN012HOAVkPLWffq3H0_!!2460919140.jpg,https://img.alicdn.com/imgextra/i4/2460919140/O1CN012HOAVjmiTNQXxBm_!!2460919140.jpg,https://img.alicdn.com/imgextra/i1/2460919140/O1CN012HOAVi0K2y8kprD_!!2460919140.jpg,https://img.alicdn.com/imgextra/i1/2460919140/O1CN012HOAVkPL3ZJkxxu_!!2460919140.jpg', '39', '33', '100', '30', '暂无培育方式介绍', '2019-02-26 17:36:45', 'false');
INSERT INTO `goods_info` VALUES ('20', '花卉', '蔷薇花', '蔷薇花苗藤本月季大花浓香庭院爬藤植物花卉盆栽阳台玫瑰爬墙四季\r\n天猫正品保证 花期带花苞 养不活补发', 'https://img.alicdn.com/imgextra/i4/3384077686/O1CN01UdnuJJ26eEeFHSC8g_!!3384077686.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/3384077686/O1CN01FSXWsq26eEey8EEz5_!!3384077686.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/3384077686/O1CN01t8lOt226eEey89TV9_!!3384077686.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/3384077686/O1CN01fwq7Ia26eEeFzuBgR_!!3384077686.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i4/3384077686/O1CN01UdnuJJ26eEeFHSC8g_!!3384077686.jpg,https://img.alicdn.com/imgextra/i1/3384077686/O1CN01FSXWsq26eEey8EEz5_!!3384077686.jpg,https://img.alicdn.com/imgextra/i3/3384077686/O1CN01t8lOt226eEey89TV9_!!3384077686.jpg,https://img.alicdn.com/imgextra/i2/3384077686/O1CN01fwq7Ia26eEeFzuBgR_!!3384077686.jpg', '23', '19', '100', '30', '暂无培育方式介绍', '2019-02-26 17:39:36', 'false');
INSERT INTO `goods_info` VALUES ('21', '花卉', '木香花', '木香花苗七里香盆栽爬藤植物浓香四季甜蜜红木香花苗蔷薇攀援花卉', 'https://img.alicdn.com/imgextra/i3/3350445541/TB2PKpUXCzqK1RjSZFLXXcn2XXa_!!3350445541.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/3350445541/TB2N.lWXq6qK1RjSZFmXXX0PFXa_!!3350445541.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/3350445541/TB26sFVXxTpK1RjSZFGXXcHqFXa_!!3350445541.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/3350445541/TB2SRlTXwHqK1RjSZFEXXcGMXXa_!!3350445541.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i3/3350445541/TB2PKpUXCzqK1RjSZFLXXcn2XXa_!!3350445541.jpg,https://img.alicdn.com/imgextra/i3/3350445541/TB2N.lWXq6qK1RjSZFmXXX0PFXa_!!3350445541.jpg,https://img.alicdn.com/imgextra/i4/3350445541/TB26sFVXxTpK1RjSZFGXXcHqFXa_!!3350445541.jpg,https://img.alicdn.com/imgextra/i4/3350445541/TB2SRlTXwHqK1RjSZFEXXcGMXXa_!!3350445541.jpg', '34', '30', '10', '50', '暂无培育方式介绍', '2019-02-26 18:24:02', 'false');
INSERT INTO `goods_info` VALUES ('22', '花卉', '长寿花', '重瓣花苗带花包邮 四季花卉植物净化空气吸甲醛（盆栽、花苗）', 'https://img.alicdn.com/imgextra/i4/3543774004/O1CN01tzEkmR1fRsLDvDIZX_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/3543774004/O1CN01wZ3p481fRsLKlJqlE_!!3543774004.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/3543774004/O1CN01PncdO41fRsLIKE1pE_!!3543774004.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/3543774004/O1CN01iNryXN1fRsLLOuUyu_!!3543774004.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i4/3543774004/O1CN01tzEkmR1fRsLDvDIZX_!!0-item_pic.jpg,https://img.alicdn.com/imgextra/i4/3543774004/O1CN01wZ3p481fRsLKlJqlE_!!3543774004.jpg,https://img.alicdn.com/imgextra/i1/3543774004/O1CN01PncdO41fRsLIKE1pE_!!3543774004.jpg,https://img.alicdn.com/imgextra/i2/3543774004/O1CN01iNryXN1fRsLLOuUyu_!!3543774004.jpg', '13', '10', '0', '120', '暂无培育方式介绍', '2019-02-26 18:27:01', 'false');
INSERT INTO `goods_info` VALUES ('23', '花卉', '蝴蝶兰花', '蝴蝶兰花苗四季带花苞花剑花卉观花绿植物室内客厅阳台盆栽君子兰', 'https://img.alicdn.com/imgextra/i3/3895433888/O1CN017qxIdr1eakOuC4QtJ_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/3895433888/O1CN01ehzAmM1eakOsavKlx_!!3895433888.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/3895433888/O1CN01wLVpuv1eakOquqYZJ_!!3895433888.png_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/3895433888/O1CN01IjFHfz1eakOqw9j09_!!3895433888.png_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i3/3895433888/O1CN017qxIdr1eakOuC4QtJ_!!0-item_pic.jpg,https://img.alicdn.com/imgextra/i2/3895433888/O1CN01ehzAmM1eakOsavKlx_!!3895433888.jpg,https://img.alicdn.com/imgextra/i4/3895433888/O1CN01wLVpuv1eakOquqYZJ_!!3895433888.png,https://img.alicdn.com/imgextra/i1/3895433888/O1CN01IjFHfz1eakOqw9j09_!!3895433888.png', '17', '14', '0', '210', '暂无培育方式介绍', '2019-02-26 18:30:11', 'false');
INSERT INTO `goods_info` VALUES ('24', '仿生植物', '天竺葵', '北欧家居室内天竺葵仿真植物盆栽摆件大型落地客厅餐厅绿植装饰品', 'https://img.alicdn.com/imgextra/i1/2211015121/TB2DekekGmWBuNjy1XaXXXCbXXa_!!2211015121.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/2211015121/TB2F52ikHGYBuNjy0FoXXciBFXa_!!2211015121.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/2211015121/TB2z0HCkL5TBuNjSspcXXbnGFXa_!!2211015121.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2211015121/TB2ZUF0n5AKL1JjSZFoXXagCFXa_!!2211015121.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2211015121/TB2DekekGmWBuNjy1XaXXXCbXXa_!!2211015121.jpg,https://img.alicdn.com/imgextra/i2/2211015121/TB2F52ikHGYBuNjy0FoXXciBFXa_!!2211015121.jpg,https://img.alicdn.com/imgextra/i1/2211015121/TB2z0HCkL5TBuNjSspcXXbnGFXa_!!2211015121.jpg,https://img.alicdn.com/imgextra/i3/2211015121/TB2ZUF0n5AKL1JjSZFoXXagCFXa_!!2211015121.jpg', '129', '10', '20', '66', '暂无培育方式介绍', '2019-02-26 18:33:00', 'false');
INSERT INTO `goods_info` VALUES ('25', '仿生植物', '橄榄树', '西西里ins北欧仿真绿植盆栽橄榄树大树植物家居办公橱窗装饰摆件', 'https://gd3.alicdn.com/imgextra/i2/109306325/TB2dHkRs_lYBeNjSszcXXbwhFXa_!!109306325.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/109306325/TB2MJ4NgtcnBKNjSZR0XXcFqFXa_!!109306325.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/109306325/TB2WQiAJYSYBuNjSspiXXXNzpXa_!!109306325.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/109306325/TB2rMbBs21TBuNjy0FjXXajyXXa_!!109306325.jpg_50x50.jpg_.webp', 'https://gd3.alicdn.com/imgextra/i2/109306325/TB2dHkRs_lYBeNjSszcXXbwhFXa_!!109306325.jpg,https://gd3.alicdn.com/imgextra/i3/109306325/TB2MJ4NgtcnBKNjSZR0XXcFqFXa_!!109306325.jpg,https://gd4.alicdn.com/imgextra/i4/109306325/TB2WQiAJYSYBuNjSspiXXXNzpXa_!!109306325.jpg,https://gd1.alicdn.com/imgextra/i1/109306325/TB2rMbBs21TBuNjy0FjXXajyXXa_!!109306325.jpg', '168', '158', '32', '29', '暂无培育方式介绍', '2019-02-26 18:38:54', 'false');
INSERT INTO `goods_info` VALUES ('26', '仿生植物', '绿植墙', '仿真植物墙绿植墙草坪人造草皮塑料假草装饰兰客厅橱窗壁挂装饰', 'https://gd3.alicdn.com/imgextra/i3/2893138815/TB2O3fudYAlyKJjSZFwXXXtqpXa_!!2893138815.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/2893138815/TB2x6S7cXkkyKJjSszfXXbdiFXa_!!2893138815.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/2893138815/TB2R9exbAZkyKJjy0FnXXXveFXa_!!2893138815.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/2893138815/TB2Mz7OXFHM8KJjSZFwXXcibXXa_!!2893138815.jpg_50x50.jpg_.webp', 'https://gd3.alicdn.com/imgextra/i3/2893138815/TB2O3fudYAlyKJjSZFwXXXtqpXa_!!2893138815.jpg,https://gd1.alicdn.com/imgextra/i1/2893138815/TB2x6S7cXkkyKJjSszfXXbdiFXa_!!2893138815.jpg,https://gd3.alicdn.com/imgextra/i3/2893138815/TB2R9exbAZkyKJjy0FnXXXveFXa_!!2893138815.jpg,https://gd1.alicdn.com/imgextra/i1/2893138815/TB2Mz7OXFHM8KJjSZFwXXcibXXa_!!2893138815.jpg', '5', '3', '1540', '1024', '暂无培育方式介绍', '2019-02-26 18:42:00', 'false');
INSERT INTO `goods_info` VALUES ('27', '仿生植物', '小绿萝', '仿真植物假植物绿植室内外装饰小清新盆栽小绿萝盆栽仿真花草植物', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/615679236/TB2aF_Tt7OWBuNjSsppXXXPgpXa_!!615679236.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/615679236/TB2OIDotYGYBuNjy0FoXXciBFXa_!!615679236.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/615679236/TB29.86lNuTBuNkHFNRXXc9qpXa_!!615679236.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/615679236/TB21jAvt4WYBuNjy1zkXXXGGpXa_!!615679236.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/615679236/TB2aF_Tt7OWBuNjSsppXXXPgpXa_!!615679236.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/615679236/TB2OIDotYGYBuNjy0FoXXciBFXa_!!615679236.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/615679236/TB29.86lNuTBuNkHFNRXXc9qpXa_!!615679236.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/615679236/TB21jAvt4WYBuNjy1zkXXXGGpXa_!!615679236.jpg', '29', '25', '87', '128', '暂无培育方式介绍', '2019-02-26 18:43:42', 'false');
INSERT INTO `manager` VALUES ('001', '001');
INSERT INTO `manager` VALUES ('002', '002');
INSERT INTO `manager` VALUES ('003', '003');
INSERT INTO `user_info` VALUES ('1', '别样的感动', '18483221518', '111');

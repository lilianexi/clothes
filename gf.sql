-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-03-17 12:01:08
-- 服务器版本： 10.1.36-MariaDB
-- PHP 版本： 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `gf`
--

-- --------------------------------------------------------

--
-- 表的结构 `gf_cart`
--

CREATE TABLE `gf_cart` (
  `id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_cart`
--

INSERT INTO `gf_cart` (`id`, `count`, `price`, `pid`, `uid`) VALUES
(30, 2, 459, 16, 3),
(31, 1, 128, 1, 3),
(37, 1, 128, 7, 1),
(38, 3, 128, 8, 1),
(39, 3, 800, 27, 1),
(40, 3, 789, 26, 1),
(41, 1, 362, 28, 1),
(42, 1, 300, 30, 1),
(43, 1, 1000, 32, 1),
(44, 1, 666, 31, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gf_family`
--

CREATE TABLE `gf_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_family`
--

INSERT INTO `gf_family` (`fid`, `fname`) VALUES
(1, '清朝系列'),
(2, '汉服系列'),
(3, '古装系列'),
(4, '仙女系列');

-- --------------------------------------------------------

--
-- 表的结构 `gf_goods`
--

CREATE TABLE `gf_goods` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `size_x` varchar(32) DEFAULT NULL,
  `size_s` varchar(32) DEFAULT NULL,
  `size_l` varchar(32) DEFAULT NULL,
  `size_xl` varchar(32) DEFAULT NULL,
  `size_xxl` varchar(32) DEFAULT NULL,
  `img_url` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_goods`
--

INSERT INTO `gf_goods` (`lid`, `family_id`, `title`, `subtitle`, `price`, `promise`, `color`, `lname`, `size_x`, `size_s`, `size_l`, `size_xl`, `size_xxl`, `img_url`) VALUES
(1, 1, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', '大气之韵，品牌之选', '128.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', '	\r\nhttp://gufeng.applinzi.com/img/list/tang1.jpg'),
(2, 1, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', '大气之韵，品牌之选', '128.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://gufeng.applinzi.com/img/list/tang1.jpg'),
(3, 1, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', '大气之韵，品牌之选', '128.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://gufeng.applinzi.com/img/list/tang1.jpg'),
(4, 1, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', '大气之韵，品牌之选', '128.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://gufeng.applinzi.com/img/list/tang1.jpg'),
(5, 1, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝', '大气之韵，品牌之选', '128.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://gufeng.applinzi.com/img/list/tang1.jpg'),
(6, 1, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', '大气之韵，品牌之选', '128.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://gufeng.applinzi.com/img/list/tang1.jpg'),
(7, 1, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝', '大气之韵，品牌之选', '128.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://gufeng.applinzi.com/img/list/tang1.jpg'),
(8, 1, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', '大气之韵，品牌之选', '128.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://gufeng.applinzi.com/img/list/tang1.jpg'),
(9, 2, '汉尚华莲立春传统汉服女刺绣对襟上襦搭配一片式穿孔褶裙日常套装', '大气之韵，品牌之选', '89.00', '7天无理由', '', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/han/han1.jpg'),
(10, 2, '女古装宫锁清秋秀禾服 民国夫人装唐装汉服小姐装 清朝福晋格格装', '大气之韵，品牌之选', '128.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/han/han2.jpg'),
(11, 2, '影楼摄影主题女古装影视剧延禧攻略秦岚同款清朝服装富察皇后常服', '大气之韵，品牌之选', '360.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/han/han3.jpg'),
(12, 2, '古装服装 古代披风斗篷女清朝格格秋冬款甄嬛传步步惊心加厚凤尾', '大气之韵，品牌之选', '188.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/han/han4.jpg'),
(13, 2, '影楼摄影写真女古装主题清朝格格性感旗袍贵妃表演演出服装妃倾城', '大气之韵，品牌之选', '266.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/han/han5.jpg'),
(14, 2, '影楼写真女古装主题延禧攻略同款服装清朝皇后旗服富察皇后服装', '大气之韵，品牌之选', '199.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/han/han6.jpg'),
(15, 2, '影楼摄影甄嬛传清朝写真服装女古装皇后装格格旗装演出服宫锁沉香', '大气之韵，品牌之选', '399.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/han/han7.jpg'),
(16, 2, '古装清朝服装皇帝龙袍皇后服装中国风演出服 宫廷装甄嬛传小品男', '大气之韵，品牌之选', '459.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/han/han8.jpg'),
(17, 3, '古装皇后服装拖尾贵妃汉服唐朝公主古代仙女裙新款古筝舞台演出服', '大气之韵，品牌之选', '230.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/min/xian1.jpg'),
(18, 3, '原创画罗裙青玉案汉服女明制大袖衫竖领衫古装仙女超仙轻纱裙女装', '大气之韵，品牌之选', '985.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/min/xian2.jpg'),
(19, 3, '锦觅同款古装女仙女飘逸汉服公主清新淡雅中国风轻纱学生古风日常', '大气之韵，品牌之选', '756.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/min/xian3.jpg'),
(20, 3, '香蜜沉沉烬如霜锦觅同款古装女仙女飘逸清新淡雅轻纱古筝舞蹈服装', '大气之韵，品牌之选', '258.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/min/xian4.jpg'),
(21, 3, '汉服古装仙女服亲子中国风古代公主飘逸轻纱古筝演奏舞蹈演出礼服', '大气之韵，品牌之选', '756.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/min/xian5.jpg'),
(22, 3, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', '大气之韵，品牌之选', '456.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang1.jpg'),
(23, 3, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装玉叶金枝', '大气之韵，品牌之选', '5000.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang2.jpg'),
(24, 3, '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', '大气之韵，品牌之选', '300.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang3.jpg'),
(25, 4, '新品影楼摄影写真女古装主题复古中国风民国素雅演出服装纳兰词', '大气之韵，品牌之选', '798.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang4.jpg'),
(26, 4, '香蜜沉沉烬如霜杨紫锦觅同款古装 轻纱仙女裙飘逸写真摄影cos汉服', '大气之韵，品牌之选', '789.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang5.jpg'),
(27, 4, '复古女装民国中国风改良旗袍少女盘扣上衣唐装连衣裙中式汉服套装', '大气之韵，品牌之选', '800.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang6.jpg'),
(28, 4, '古装服装 古代披风斗篷女清朝格格秋冬款甄嬛传步步惊心加厚凤尾', '大气之韵，品牌之选', '362.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang7.jpg'),
(29, 4, '唐装女中国风女装改良旗袍女古风外套古装汉服大衣冬装女中式民国', '大气之韵，品牌之选', '582.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang8.jpg'),
(30, 4, '汉服秋装女改良襦裙中国风汉元素古装服装日常套装民国风复古女装', '大气之韵，品牌之选', '300.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang9.jpg'),
(31, 4, '女士唐装连衣裙复古改良旗袍两件套民国风女装中国风套装汉服茶服', '大气之韵，品牌之选', '666.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang10.jpg'),
(32, 4, '汉服夏装女改良唐装中国风女装古装民国复古盘扣中式刺绣旗袍上衣', '大气之韵，品牌之选', '1000.00', '7天无理由', '图片色', ' 玉叶金枝', 'x', 's', 'l', 'xl', 'xxl', 'http://127.0.0.1:3000/img/index/tang/tang11.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `gf_index`
--

CREATE TABLE `gf_index` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_nav` varchar(128) DEFAULT NULL,
  `title_nav` varchar(128) DEFAULT NULL,
  `img_content` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gf_index_carousel`
--

CREATE TABLE `gf_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_content` varchar(128) NOT NULL,
  `family_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_index_carousel`
--

INSERT INTO `gf_index_carousel` (`cid`, `img`, `title`, `img_content`, `family_id`) VALUES
(1, 'http://127.0.0.1:3000/img/index/carousel/carousel1.jpg', '汉唐精选', 'http://127.0.0.1:3000/img/index/han/han1.jpg', 1),
(2, 'http://127.0.0.1:3000/img/index/carousel/carousel4.jpg', '清风徐徐', 'http://127.0.0.1:3000/img/index/han/han12.jpg', 2),
(3, 'http://127.0.0.1:3000/img/index/carousel/carousel5.jpg', '仙气飘飘', 'http://127.0.0.1:3000/img/index/min/xian4.jpg', 3),
(4, 'http://127.0.0.1:3000/img/index/carousel/carousel7.jpg', '倾国倾城', 'http://127.0.0.1:3000/img/index/tang/tang14.jpg', 4);

-- --------------------------------------------------------

--
-- 表的结构 `gf_index_nav`
--

CREATE TABLE `gf_index_nav` (
  `cid` int(11) NOT NULL,
  `img_nav` varchar(128) DEFAULT NULL,
  `title_nav` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_index_nav`
--

INSERT INTO `gf_index_nav` (`cid`, `img_nav`, `title_nav`) VALUES
(1, 'http://127.0.0.1:3000/img/home/女装.png', '女装'),
(2, 'http://127.0.0.1:3000/img/home/鞋靴.png', '鞋靴'),
(3, 'http://127.0.0.1:3000/img/home/包包.png', '包包'),
(4, 'http://127.0.0.1:3000/img/home/饰品.png', '饰品'),
(5, 'http://127.0.0.1:3000/img/home/周边.png', '周边');

-- --------------------------------------------------------

--
-- 表的结构 `gf_index_product`
--

CREATE TABLE `gf_index_product` (
  `pid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_index_product`
--

INSERT INTO `gf_index_product` (`pid`, `img`, `title`, `details`, `price`) VALUES
(1, 'http://127.0.0.1:3000/img/index/汉.jpg', '汉唐精选', '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', 128),
(2, 'http://127.0.0.1:3000/img/index/唐.jpg', '清风徐徐', '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', 321),
(3, 'http://127.0.0.1:3000/img/index/明.jpg', '仙气飘逸', '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', 486),
(4, 'http://127.0.0.1:3000/img/index/清.jpeg', '民国女神', '女古装影楼摄影写真主题复古清朝民国秀禾服走秀演出服装', 1800);

-- --------------------------------------------------------

--
-- 表的结构 `gf_login`
--

CREATE TABLE `gf_login` (
  `id` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_login`
--

INSERT INTO `gf_login` (`id`, `uname`, `upwd`) VALUES
(1, 'dingding', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `gf_myhome`
--

CREATE TABLE `gf_myhome` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `detail` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_myhome`
--

INSERT INTO `gf_myhome` (`cid`, `img`, `title`, `detail`) VALUES
(0, 'http://127.0.0.1:3000/img/myhome/待付款.png', 'pay', '待付款'),
(0, 'http://127.0.0.1:3000/img/myhome/待收货.png', 'pay', '待收货'),
(0, 'http://127.0.0.1:3000/img/myhome/待发货.png', 'pay', '待发货'),
(0, 'http://127.0.0.1:3000/img/myhome/评价.png', 'pay', '评价'),
(0, 'http://127.0.0.1:3000/img/myhome/退款.png', 'pay', '退款'),
(0, 'http://127.0.0.1:3000/img/myhome/野生.png', 'life', '野生小伙伴'),
(0, 'http://127.0.0.1:3000/img/myhome/领劵.png', 'life', '领劵中心'),
(0, 'http://127.0.0.1:3000/img/myhome/换钱.png', 'life', '闲置换钱'),
(0, 'http://127.0.0.1:3000/img/myhome/客服小米.png', 'life', '客服小蜜'),
(0, 'http://127.0.0.1:3000/img/myhome/阿里.png', 'life', '阿里宝卡'),
(0, 'http://127.0.0.1:3000/img/myhome/评价我的.png', 'life', '我的评价'),
(0, 'http://127.0.0.1:3000/img/myhome/主体.png', 'life', '主题换肤'),
(0, 'http://127.0.0.1:3000/img/myhome/更多.png', 'life', '更多');

-- --------------------------------------------------------

--
-- 表的结构 `gf_pic`
--

CREATE TABLE `gf_pic` (
  `pid` int(11) NOT NULL,
  `clothes_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL,
  `iscarousel` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gf_user`
--

CREATE TABLE `gf_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_user`
--

INSERT INTO `gf_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', 1),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', 1),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', 1),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', 0);

--
-- 转储表的索引
--

--
-- 表的索引 `gf_cart`
--
ALTER TABLE `gf_cart`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `gf_family`
--
ALTER TABLE `gf_family`
  ADD PRIMARY KEY (`fid`);

--
-- 表的索引 `gf_goods`
--
ALTER TABLE `gf_goods`
  ADD PRIMARY KEY (`lid`);

--
-- 表的索引 `gf_index`
--
ALTER TABLE `gf_index`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `gf_index_carousel`
--
ALTER TABLE `gf_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `gf_index_nav`
--
ALTER TABLE `gf_index_nav`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `gf_index_product`
--
ALTER TABLE `gf_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- 表的索引 `gf_login`
--
ALTER TABLE `gf_login`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `gf_pic`
--
ALTER TABLE `gf_pic`
  ADD PRIMARY KEY (`pid`);

--
-- 表的索引 `gf_user`
--
ALTER TABLE `gf_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `gf_cart`
--
ALTER TABLE `gf_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- 使用表AUTO_INCREMENT `gf_family`
--
ALTER TABLE `gf_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `gf_goods`
--
ALTER TABLE `gf_goods`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用表AUTO_INCREMENT `gf_index`
--
ALTER TABLE `gf_index`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `gf_index_carousel`
--
ALTER TABLE `gf_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `gf_index_nav`
--
ALTER TABLE `gf_index_nav`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `gf_index_product`
--
ALTER TABLE `gf_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `gf_login`
--
ALTER TABLE `gf_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `gf_pic`
--
ALTER TABLE `gf_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `gf_user`
--
ALTER TABLE `gf_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

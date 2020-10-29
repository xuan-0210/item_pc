SET NAMES UTF8;
DROP DATABASE IF EXISTS floor;
CREATE DATABASE floor CHARSET=UTF8;
USE floor;
CREATE TABLE `floor_user`(
  `fid` INT PRIMARY KEY,
  `fname` VARCHAR(12) UNIQUE NOT NULL,
  `fupwd` VARCHAR(12) NOT NULL 
);

INSERT INTO floor_user VALUES(1,'admin',123456);
INSERT INTO floor_user VALUES(2,'admin1',123456);
INSERT INTO floor_user VALUES(3,'admin2',123456);
INSERT INTO floor_user VALUES(4,'admin3',123456);
INSERT INTO floor_user VALUES(5,'admin4',123456);

CREATE TABLE floor_category(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  ctype VARCHAR(10) NOT NULL,
  ctype_id SMALLINT NOT NULL
);

INSERT INTO floor_category VALUES(1,'全部',1);
INSERT INTO floor_category VALUES(NULL,'爱情鲜花',1);
INSERT INTO floor_category VALUES(NULL,'生日鲜花',1);
INSERT INTO floor_category VALUES(NULL,'问候鲜花',1);
INSERT INTO floor_category VALUES(NULL,'周年鲜花',1);
INSERT INTO floor_category VALUES(NULL,'求婚鲜花',1);
INSERT INTO floor_category VALUES(NULL,'生日鲜花',1);
INSERT INTO floor_category VALUES(NULL,'问候鲜花',1);
INSERT INTO floor_category VALUES(NULL,'问候鲜花',1);
INSERT INTO floor_category VALUES(NULL,'全部',2);
INSERT INTO floor_category VALUES(NULL,'恋人',2);
INSERT INTO floor_category VALUES(NULL,'朋友',2);
INSERT INTO floor_category VALUES(NULL,'父母',2);
INSERT INTO floor_category VALUES(NULL,'同事',2);
INSERT INTO floor_category VALUES(NULL,'长辈',2);
INSERT INTO floor_category VALUES(NULL,'老师',2);
INSERT INTO floor_category VALUES(NULL,'领导',2);
INSERT INTO floor_category VALUES(NULL,'客户',2);
INSERT INTO floor_category VALUES(NULL,'病人',2);
INSERT INTO floor_category VALUES(NULL,'全部',3);
INSERT INTO floor_category VALUES(NULL,'玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'红玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'蓝玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'粉玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'香槟玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'白玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'紫玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'黄玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'七彩玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'金箔玫瑰',3);
INSERT INTO floor_category VALUES(NULL,'玫瑰+百合',3);
INSERT INTO floor_category VALUES(NULL,'百合',3);
INSERT INTO floor_category VALUES(NULL,'康乃馨',3);
INSERT INTO floor_category VALUES(NULL,'玫瑰+康乃馨',3);
INSERT INTO floor_category VALUES(NULL,'向日葵',3);
INSERT INTO floor_category VALUES(NULL,'向日葵+百合',3);
INSERT INTO floor_category VALUES(NULL,'扶郎花',3);
INSERT INTO floor_category VALUES(NULL,'康乃馨+百合',3);
INSERT INTO floor_category VALUES(NULL,'满天星',3);
INSERT INTO floor_category VALUES(NULL,'忽忘我',3);
INSERT INTO floor_category VALUES(NULL,'忽忘我',3);
INSERT INTO floor_category VALUES(NULL,'混搭',3);
INSERT INTO floor_category VALUES(NULL,'绣球',3);
INSERT INTO floor_category VALUES(NULL,'马蹄莲',3);
INSERT INTO floor_category VALUES(NULL,'郁金香',3);
INSERT INTO floor_category VALUES(NULL,'菊花',3);
INSERT INTO floor_category VALUES(NULL,'全部',4);
INSERT INTO floor_category VALUES(NULL,'1支',4);
INSERT INTO floor_category VALUES(NULL,'3支',4);
INSERT INTO floor_category VALUES(NULL,'4支',4);
INSERT INTO floor_category VALUES(NULL,'5支',4);
INSERT INTO floor_category VALUES(NULL,'7支',4);
INSERT INTO floor_category VALUES(NULL,'8支',4);
INSERT INTO floor_category VALUES(NULL,'9支',4);
INSERT INTO floor_category VALUES(NULL,'10支',4);
INSERT INTO floor_category VALUES(NULL,'11支',4);
INSERT INTO floor_category VALUES(NULL,'12支',4);
INSERT INTO floor_category VALUES(NULL,'16支',4);
INSERT INTO floor_category VALUES(NULL,'19支',4);
INSERT INTO floor_category VALUES(NULL,'21支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'33支',4);
INSERT INTO floor_category VALUES(NULL,'36支',4);
INSERT INTO floor_category VALUES(NULL,'51支',4);
INSERT INTO floor_category VALUES(NULL,'66支',4);
INSERT INTO floor_category VALUES(NULL,'1其他',4);
INSERT INTO floor_category VALUES(NULL,'19支',4);
INSERT INTO floor_category VALUES(NULL,'19支',4);
INSERT INTO floor_category VALUES(NULL,'19支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'29支',4);
INSERT INTO floor_category VALUES(NULL,'99支',4);
INSERT INTO floor_category VALUES(NULL,'99支以上',4);
INSERT INTO floor_category VALUES(NULL,'高端精品',5);
INSERT INTO floor_category VALUES(NULL,'花束',5);
INSERT INTO floor_category VALUES(NULL,'花盒',5);
INSERT INTO floor_category VALUES(NULL,'组合鲜花',5);
INSERT INTO floor_category VALUES(NULL,'韩式花束',5);
INSERT INTO floor_category VALUES(NULL,'手提花篮',5);
INSERT INTO floor_category VALUES(NULL,'瓶花/家居鲜花',5);
INSERT INTO floor_category VALUES(NULL,'会议桌花',5);
INSERT INTO floor_category VALUES(NULL,'讲台花',5);
INSERT INTO floor_category VALUES(NULL,'手捧花',5);
INSERT INTO floor_category VALUES(NULL,'红色',6);
INSERT INTO floor_category VALUES(NULL,'粉色',6);
INSERT INTO floor_category VALUES(NULL,'香槟',6);
INSERT INTO floor_category VALUES(NULL,'白色',6);
INSERT INTO floor_category VALUES(NULL,'蓝色',6);
INSERT INTO floor_category VALUES(NULL,'紫色',6);
INSERT INTO floor_category VALUES(NULL,'黄色',6);
INSERT INTO floor_category VALUES(NULL,'混色',6);



CREATE TABLE floor_lists(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  lname VARCHAR(10) NOT NULL,
  lprice SMALLINT NOT NULL,
  lsold SMALLINT NOT NULL,
  limg VARCHAR(100) NOT NULL,
  ltype_id SMALLINT NOT NULL
);

INSERT INTO floor_lists VALUES(1,'心中的爱-32支精品混色玫瑰',1314,1314,'239_thumb_G_1500952370993.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'心中的爱-32支精品混色玫瑰',1314,1314,'239_thumb_G_1500952370993.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'心中的爱-32支精品混色玫瑰',1314,1314,'239_thumb_G_1500952370993.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'心中的爱-32支精品混色玫瑰',1314,1314,'239_thumb_G_1500952370993.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'心中的爱-32支精品混色玫瑰',1314,1314,'239_thumb_G_1500952370993.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',1);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',1);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',1);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',1);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',1);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',1);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',1);

INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);
INSERT INTO floor_lists VALUES(NULL,'钟情一生-11支精品红玫瑰',1314,1314,'605_thumb_G_1501468789004.jpg',2);

INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);
INSERT INTO floor_lists VALUES(NULL,'真挚问候-5支多头白百合',1314,1314,'60_thumb_G_1498802730870.jpg',3);

INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);
INSERT INTO floor_lists VALUES(NULL,'我们的爱-33支精品红玫瑰',1314,1314,'788_thumb_G_1500880624162.png',4);


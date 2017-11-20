SET NAMES UTF8;
DROP DATABASE IF EXISTS yoka;
CREATE DATABASE yoka CHARSET UTF8;
USE yoka;

#用户表：记录注册后的信息
CREATE TABLE yoka_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32) NOT NULL UNIQUE,
	upwd VARCHAR(32) NOT NULL,
	email VARCHAR(64),
	phone VARCHAR(16) NOT NULL,
	gender VARCHAR(8),
	avatar VARCHAR(128)
);
INSERT INTO yoka_user VALUES
	(1,"童可可","tkk123","tkk@qq.com","13691234567","女","img/tkk.jpg"),
	(2,"阿悄","aq123","aq@163.com","13529787421","女","img/aq.jpg"),
	(3,"夏后","xh123","aq@tedu.com","13529787421","女","img/xh.jpg"),
	(4,"印子月","yzy123","yzy@tedu.com","13529787421","女","img/yzy.jpg"),
	(5,"徐良","xl123","xl@tedu.com","13529787421","男","img/xl.jpg"),
	(6,"汪苏泷","wsl123","wsl@qq.com","13529787421","男","img/wsl.jpg"),
	(7,"金毛狮王","jmsw123","jmsw@qq.com","13529787421","男","img/jmsw.jpg"),
	(8,"翠山.张","zcs123","zcs@qq.com","13529787421","男","img/zcs.jpg"),
	(9,"无忌.张","zwj123","zwj@qq.com","13529787421","男","img/zwj.jpg"),
	(10,"素素.殷","yss123","yss@qq.com","13529787421","女","img/yss.jpg");

#用户地址
CREATE TABLE yoka_receiver_address(
	aid INT PRIMARY KEY AUTO_INCREMENT,
	receiver VARCHAR(32) DEFAULT NULL,
	province VARCHAR(32) DEFAULT NULL,
	city VARCHAR(32) DEFAULT NULL,
	county VARCHAR(16) DEFAULT NULL,
	address VARCHAR(128) DEFAULT NULL,
	cellphone VARCHAR(16) DEFAULT NULL,
	fixedphone VARCHAR(16) DEFAULT NULL,
	postcode CHAR(6) DEFAULT NULL
);
INSERT INTO yoka_receiver_address VALUES
	(NULL,"可可","北京","海淀区","海淀区","万寿路33号","13691234567",NULL,"100166"),
	(NULL,"悄悄","北京","丰台区","丰台区","万寿路33号","13691234567",NULL,"100123"),
	(NULL,"夏夏","北京","朝阳区","朝阳区","万寿路33号","13691234567",NULL,"107516"),
	(NULL,"月月","北京","东城区","东城区","万寿路33号","13691234567",NULL,"100456"),
	(NULL,"良良","北京","宣武区","宣武区","万寿路33号","13691234567",NULL,"101166"),
	(NULL,"笼笼","北京","门头沟区","门头沟区","万寿路33号","13691234567",NULL,"100166"),
	(NULL,"狮子","北京","密云区","密云区","万寿路33号","13691234567",NULL,"105416"),
	(NULL,"翠山","北京","怀柔区","怀柔区","万寿路33号","13691234567",NULL,"135266"),
	(NULL,"无忌","北京","西城区","西城区","万寿路33号","13691234567",NULL,"101476"),
	(NULL,"素素","北京","延庆区","延庆区","万寿路33号","13691234567",NULL,"109856");
#化妆品家族表
CREATE TABLE yoka_product_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	fname VARCHAR(32)
)
INSERT INTO yoka_product_family VALUES
	(1,'迪奥'),
	(2,'香奈儿'),
	(3,'兰蔻')
#化妆品表
CREATE TABLE yoka_product_list(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	family_id INT,				#所属家族id
	title VARCHAR(128),		#标题
	info VARCHAR(128),		#详情
	spec VARCHAR(128),		#规格
	price DECIMAL(10,2),		#价格
	pic VARCHAR(128)			#图片
)
INSERT INTO yoka_product_list VALUES
	(1,1,'迪奥真我香水','J adore真我香水以玫瑰和大马士革梅的花果香调，极其女性气质的表达','50ml','750','images/b34_c8a33d39-751d-42b2-b530-4b858086f52f.jpg'),
	(2,1,'迪奥眼部密集修护精华露','Dior迪奥美妍科学中心凭藉专业技术，以及对眼周肌肤老化过程机理的全新解析，将卓...','15ml','600','images/b34_9b1ca7b7-7da3-4d24-88ab-0abf7a850dc7.jpg'),
	(3,1,'迪奥紫恋魅惑淡香水','感性、和谐、集宠爱于一身的花香调。由Dior迪奥首席调香师Fran?ois D...','100ml','1150','images/b34_b626589b-1805-45f9-a26b-e47ba2582dd5.jpg'),
	(4,2,'香奈儿邂逅清新淡香水','不断运行的星群香调结构，结合清新香调、花香调、辛辣香调，彼此互相环绕，不断流动，...','50ml','790','images/b34_5cd55088-af46-457f-a025-f539a64ad337.jpg'),
	(5,2,'香奈儿No.5 五号香水','N°5发挥它强烈的神奇魔力，以低调典雅与世故的香气环绕着女人。随时喷上这款香水，...','50ml','780','images/b34_ceb940e8-f01e-4dbc-98c1-9aa05269a275.jpg'),
	(6,2,'香奈儿男士极限运动淡香水','全速奔驰的心跳狂飙的肾上腺素攀越巅峰的专注体验飞跃的畅快阳刚之美如今超...','50ml','685','images/b34_423d9235-d3a3-4bf1-bf93-c7fdd1b0f3e6.jpg'),
	(7,3,'兰蔻新精华肌底液（小黑瓶）','2015年上半年中国高档护肤单品热销排行榜榜首肌肤问题源于肌底受损，深层修护...','30ml','760','images/b340_144792224285.jpg'),
	(8,3,'兰蔻清滢柔肤水(干性)','乳状的化妆水能徹底清洁却不刺激脆弱敏感的肌肤。同时能给予肌肤滋润，帮助后续保养品...','200ml','320','images/b34_79646a3d-ee49-4885-a238-83579f5a196c.jpg'),
	(9,3,'兰蔻精华眼膜霜','2009年，Lancôme兰蔻震撼推出融合10年研发心血与7项美肤专利...','15ml','560','images/b34_5ebd8bfa-0ab0-4fee-9c83-751d6c71d762.jpg');
	(10,3,'兰蔻珍爱午夜玫瑰香水','由新生代女王艾玛·沃森（Emma Watson）倾情代言，随兴清新，却又俏皮灵动...','30ml','530','images/b34_563a310a-73c1-4a4a-93d2-09f8067b1fc1.jpg')

/* 用关系除法运算进行购物篮分析 */
CREATE TABLE Items
(item VARCHAR(16) PRIMARY KEY);
 
CREATE TABLE ShopItems
(shop VARCHAR(16),
 item VARCHAR(16),
    PRIMARY KEY(shop, item));

INSERT INTO Items VALUES('啤酒');
INSERT INTO Items VALUES('纸尿裤');
INSERT INTO Items VALUES('自行车');

INSERT INTO ShopItems VALUES('仙台',  '啤酒');
INSERT INTO ShopItems VALUES('仙台',  '纸尿裤');
INSERT INTO ShopItems VALUES('仙台',  '自行车');
INSERT INTO ShopItems VALUES('仙台',  '窗帘');
INSERT INTO ShopItems VALUES('东京',  '啤酒');
INSERT INTO ShopItems VALUES('东京',  '纸尿裤');
INSERT INTO ShopItems VALUES('东京',  '自行车');
INSERT INTO ShopItems VALUES('大阪',  '电视');
INSERT INTO ShopItems VALUES('大阪',  '纸尿裤');
INSERT INTO ShopItems VALUES('大阪',  '自行车');
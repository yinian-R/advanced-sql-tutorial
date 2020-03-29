--查询重叠的时间区间
CREATE TABLE Reservations
(reserver    VARCHAR(30) PRIMARY KEY,
 start_date  DATE  NOT NULL,
 end_date    DATE  NOT NULL);

INSERT INTO Reservations VALUES('木村', '2006-10-26', '2006-10-27');
INSERT INTO Reservations VALUES('荒木', '2006-10-28', '2006-10-31');
INSERT INTO Reservations VALUES('堀',   '2006-10-31', '2006-11-01');
INSERT INTO Reservations VALUES('山本', '2006-11-03', '2006-11-04');
INSERT INTO Reservations VALUES('内田', '2006-11-03', '2006-11-05');
INSERT INTO Reservations VALUES('水谷', '2006-11-06', '2006-11-06');

--山本的入住日期为4日时
DELETE FROM Reservations WHERE reserver = '山本';
INSERT INTO Reservations VALUES('山本', '2006-11-04', '2006-11-04');
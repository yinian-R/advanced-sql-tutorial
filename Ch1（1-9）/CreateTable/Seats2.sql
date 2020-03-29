--¿¼ÂÇ×ùÎ»µÄÕÛ·µ
CREATE TABLE Seats2
 ( seat   INTEGER NOT NULL  PRIMARY KEY,
   row_id CHAR(1) NOT NULL,
   status CHAR(6) NOT NULL
     CHECK (status IN ('Î´Ô¤¶©', 'ÒÑÔ¤¶©')) ); 

INSERT INTO Seats2 VALUES (1, 'A', 'ÒÑÔ¤¶©');
INSERT INTO Seats2 VALUES (2, 'A', 'ÒÑÔ¤¶©');
INSERT INTO Seats2 VALUES (3, 'A', 'Î´Ô¤¶©');
INSERT INTO Seats2 VALUES (4, 'A', 'Î´Ô¤¶©');
INSERT INTO Seats2 VALUES (5, 'A', 'Î´Ô¤¶©');
INSERT INTO Seats2 VALUES (6, 'B', 'ÒÑÔ¤¶©');
INSERT INTO Seats2 VALUES (7, 'B', 'ÒÑÔ¤¶©');
INSERT INTO Seats2 VALUES (8, 'B', 'Î´Ô¤¶©');
INSERT INTO Seats2 VALUES (9, 'B', 'Î´Ô¤¶©');
INSERT INTO Seats2 VALUES (10,'B', 'Î´Ô¤¶©');
INSERT INTO Seats2 VALUES (11,'C', 'Î´Ô¤¶©');
INSERT INTO Seats2 VALUES (12,'C', 'Î´Ô¤¶©');
INSERT INTO Seats2 VALUES (13,'C', 'Î´Ô¤¶©');
INSERT INTO Seats2 VALUES (14,'C', 'ÒÑÔ¤¶©');
INSERT INTO Seats2 VALUES (15,'C', 'Î´Ô¤¶©');
--Èý¸öÈËÄÜ×øµÃÏÂÂð£¿
CREATE TABLE Seats
 ( seat   INTEGER NOT NULL  PRIMARY KEY,
   status CHAR(6) NOT NULL
     CHECK (status IN ('Î´Ô¤¶©', 'ÒÑÔ¤¶©')) ); 

INSERT INTO Seats VALUES (1,  'ÒÑÔ¤¶©');
INSERT INTO Seats VALUES (2,  'ÒÑÔ¤¶©');
INSERT INTO Seats VALUES (3,  'Î´Ô¤¶©');
INSERT INTO Seats VALUES (4,  'Î´Ô¤¶©');
INSERT INTO Seats VALUES (5,  'Î´Ô¤¶©');
INSERT INTO Seats VALUES (6,  'ÒÑÔ¤¶©');
INSERT INTO Seats VALUES (7,  'Î´Ô¤¶©');
INSERT INTO Seats VALUES (8,  'Î´Ô¤¶©');
INSERT INTO Seats VALUES (9,  'Î´Ô¤¶©');
INSERT INTO Seats VALUES (10,  'Î´Ô¤¶©');
INSERT INTO Seats VALUES (11,  'Î´Ô¤¶©');
INSERT INTO Seats VALUES (12,  'ÒÑÔ¤¶©');
INSERT INTO Seats VALUES (13,  'ÒÑÔ¤¶©');
INSERT INTO Seats VALUES (14,  'Î´Ô¤¶©');
INSERT INTO Seats VALUES (15,  'Î´Ô¤¶©');
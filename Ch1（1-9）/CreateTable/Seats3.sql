--×î¶àÄÜ×øÏÂ¶àÉÙÈË£¿
CREATE TABLE Seats3
 ( seat   INTEGER NOT NULL  PRIMARY KEY,
   status CHAR(6) NOT NULL
     CHECK (status IN ('Î´Ô¤¶©', 'ÒÑÔ¤¶©')) ); 

INSERT INTO Seats3 VALUES (1,  'ÒÑÔ¤¶©');
INSERT INTO Seats3 VALUES (2,  'Î´Ô¤¶©');
INSERT INTO Seats3 VALUES (3,  'Î´Ô¤¶©');
INSERT INTO Seats3 VALUES (4,  'Î´Ô¤¶©');
INSERT INTO Seats3 VALUES (5,  'Î´Ô¤¶©');
INSERT INTO Seats3 VALUES (6,  'ÒÑÔ¤¶©');
INSERT INTO Seats3 VALUES (7,  'Î´Ô¤¶©');
INSERT INTO Seats3 VALUES (8,  'ÒÑÔ¤¶©');
INSERT INTO Seats3 VALUES (9,  'Î´Ô¤¶©');
INSERT INTO Seats3 VALUES (10, 'Î´Ô¤¶©');

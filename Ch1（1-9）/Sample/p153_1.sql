/* 生成序列视图（包含0到999） */
CREATE VIEW Sequence (seq)
AS SELECT D1.digit + (D2.digit * 10) + (D3.digit * 100)
     FROM Digits D1, Digits D2, Digits D3;
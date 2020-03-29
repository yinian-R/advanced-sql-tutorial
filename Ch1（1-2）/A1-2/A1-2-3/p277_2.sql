/* 练习题1-2-3：可用于Oracle、SQL Server、PostgreSQL */
UPDATE DistrictProducts2
   SET ranking =
         (SELECT P1.ranking
            FROM (SELECT district , name ,
                         RANK() OVER(PARTITION BY district
                                     ORDER BY price DESC) AS ranking
                    FROM DistrictProducts2) P1
                   WHERE P1.district = DistrictProducts2.district
                     AND P1.name = DistrictProducts2.name);
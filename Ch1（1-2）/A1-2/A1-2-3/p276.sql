/* 练习题1-2-3：更新位次 */
UPDATE DistrictProducts2 P1
   SET ranking = (SELECT COUNT(P2.price) + 1
                    FROM DistrictProducts2 P2
                   WHERE P1.district = P2.district
                     AND P2.price > P1.price);

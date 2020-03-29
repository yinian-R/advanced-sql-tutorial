/* 寻找相等的子集 */
SELECT SP1.sup, SP2.sup
  FROM SupParts SP1, SupParts SP2 
 WHERE SP1.sup < SP2.sup              /* 生成供应商的全部组合 */
   AND SP1.part = SP2.part            /* 条件1：经营同种类型的零件 */
GROUP BY SP1.sup, SP2.sup 
HAVING COUNT(*) = (SELECT COUNT(*)    /* 条件2：经营的零件种类数相同 */
                     FROM SupParts SP3 
                    WHERE SP3.sup = SP1.sup)
   AND COUNT(*) = (SELECT COUNT(*) 
                     FROM SupParts SP4 
                    WHERE SP4.sup = SP2.sup);
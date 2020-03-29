/* 用CHECK约束定义多个列的条件关系 */
/* 逻辑与 */
CONSTRAINT check_salary CHECK
( sex = '2' AND salary <= 200000 )
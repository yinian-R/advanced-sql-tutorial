/* 表的匹配：使用IN谓词 */
SELECT CM.course_name,
       CASE WHEN CM.course_id IN 
                    (SELECT course_id FROM OpenCourses 
                      WHERE month = 200706) THEN '○'
            ELSE '×' END AS "6月",
       CASE WHEN CM.course_id IN 
                    (SELECT course_id FROM OpenCourses
                      WHERE month = 200707) THEN '○'
            ELSE '×' END AS "7月",
       CASE WHEN CM.course_id IN 
                    (SELECT course_id FROM OpenCourses
                      WHERE month = 200708) THEN '○'
            ELSE '×' END  AS "8月"
  FROM CourseMaster CM;

/* 表的匹配：使用EXISTS谓词 */
SELECT CM.course_name,
       CASE WHEN EXISTS
                    (SELECT course_id FROM OpenCourses OC
                      WHERE month = 200706
                        AND CM.course_id = OC.course_id) THEN '○'
            ELSE '×' END AS "6月",
       CASE WHEN EXISTS
                    (SELECT course_id FROM OpenCourses OC
                      WHERE month = 200707
                        AND CM.course_id = OC.course_id) THEN '○'
            ELSE '×' END AS "7月",
       CASE WHEN EXISTS
                    (SELECT course_id FROM OpenCourses OC
                      WHERE month = 200708
                        AND CM.course_id = OC.course_id) THEN '○'
            ELSE '×' END  AS "8月"
  FROM CourseMaster CM;
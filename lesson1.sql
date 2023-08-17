SELECT *FROM lesson_1.student;
SELECT name,course_name FROM student;
-- * - это вывод всего -- 
SELECT * FROM student WHERE course_name = "Математика";
SELECT * FROM student WHERE course_name LIKE "м%"; -- % -это любая буква,цифра ПОСЛЕ может быть-- -- _ это любая цифра,буква ПЕРЕД может юбыть любой--  
-- dept - это фильтр  
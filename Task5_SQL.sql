show databases;
use intern_training_db;

SELECT COUNT(*) AS total_students
FROM students2;



SELECT age, COUNT(*) AS student_count
FROM students2
GROUP BY age;

SELECT age, AVG(marks) AS average_marks
FROM students2
GROUP BY age;

SELECT 
    MAX(marks) AS highest_marks,
    MIN(marks) AS lowest_marks
FROM students2;

SELECT city, COUNT(*) AS total_students
FROM students2
GROUP BY city;



SELECT age, COUNT(*) AS student_count
FROM students2
GROUP BY age
HAVING COUNT(*) > 2;






#WHERE (Before GROUP BY)
SELECT age, COUNT(*) AS student_count
FROM students2
WHERE marks > 50
GROUP BY age;



#HAVING (After GROUP BY)
SELECT age, COUNT(*) AS student_count
FROM students2
GROUP BY age
HAVING AVG(marks) > 60;


#SUM – Total Marks Age-wise
SELECT age, SUM(marks) AS total_marks
FROM students2
GROUP BY age;

#COUNT & NULL Handling
SELECT COUNT(email) AS email_count
FROM students2;

SELECT COUNT(*) FROM students2;


#Combined Analysis Query
SELECT age,
    COUNT(*) AS total_students,
    AVG(marks) AS avg_marks,
    MAX(marks) AS top_marks
FROM students2
GROUP BY age
HAVING AVG(marks) >= 60;




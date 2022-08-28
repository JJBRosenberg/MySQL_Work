-- Dsplay all your grades
# SELECT * FROM students;

-- what grades did you get perfect?
# SELECT * FROM students
# WHERE grade = 10;

-- what average have you had per year?
# SELECT year, AVG(grade) 
# FROM students
# Group BY year;

-- what is your average per teacher?
# SELECT teacher, AVG(grade)
# FROM students
# GROUP BY teacher;


-- Order your classes by grade
# SELECT * FROM students
# ORDER BY grade ASC;

-- Find a subject by teacher name and order by grades
# SELECT * FROM students
# WHERE teacher = 'Max Klostermann'
# ORDER by grade DESC;

-- What is your average grade overall?
# SELECT AVG(grade)
# FROM students;

-- What subjects did you pass with?
# SELECT * FROM students
# WHERE grade BETWEEN 6 AND 10;


-- Search for any subject with the word 'Personal' anywhere in it
# SELECT * FROM students
# WHERE subject_name LIKE '%Personal%';

-- Display just your top 3 grades
# SELECT 
# CONCAT("One of your best classes is ", subject_name ), grade
# AS best_classes
# FROM students
# ORDER BY grade DESC
# LIMIT 3;

-- Display just your bottom 3 grades
# SELECT 
# CONCAT("One of your best classes is ", subject_name ), grade
# AS best_classes
# FROM students
# ORDER BY grade ASC
# LIMIT 3;


-- Discuss how you feel about the teachers with the highest and lowest average score given

# SELECT teacher, grade,
# 	CASE
#     	WHEN grade < 6 
#         THEN CONCAT(teacher, " failed me")
        
#         WHEN grade = 6
#         THEN CONCAT(teacher, " thought i was juuuuust good enough!")
        
#         WHEN grade = 7
#         THEN CONCAT(teacher, " thought I had potential")
        
#         WHEN grade = 8
#         THEN CONCAT(teacher, " saw I did well")
        
#         WHEN grade = 9
#         THEN CONCAT(teacher, " thinks im amazing!")
        
#         WHEN grade = 10
#         THEN CONCAT(teacher, " thought I was perfect!")
        
#         ELSE ''
        
#         END AS teacher_opinion
        
#         FROM students;



-- show grades ordered by year then quareter if quarter is the same

# SELECT subject_name, grade, quarter, teacher, year
# 	FROM students
# 	ORDER BY year, quarter;



-- Update all grades with a certain criteria 

# UPDATE students SET teacher = 'Meanie'
# WHERE grade < 6;



-- Delete entries from the tableALTER

# DELETE 
# FROM students 
# WHERE teacher = 'Hans Wichman';


-- Look for subjects with 12 charactrs in the name

# SELECT * FROM students
# WHERE subject_name
# LIKE '____________';



-- Add up the total number of points given by each teacher

# SELECT teacher, SUM(grade)
# FROM students
# GROUP BY teacher;



-- Check the average of grades between a certain period of time

# SELECT grade, teacher, quarter, year
# FROM students
# WHERE (quarter BETWEEN 2 AND 4) && (year = 1);



-- Give all the even grades

# SELECT id, grade, teacher, quarter 
# FROM students
# WHERE grade % 2 = 0;


-- Check your grades average in specific quarters

SELECT subject_name, grade, quarter
FROM students
WHERE quarter IN(1, 3);
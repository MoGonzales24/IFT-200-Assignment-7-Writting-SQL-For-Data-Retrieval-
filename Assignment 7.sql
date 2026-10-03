-- Question 1
Select Name 
From Student
Where Class = 4
And Major = 'CS';
-- Question 2
Select Course_number
From Section 
Where Instructor = 'King'
AND Year In ('07', '08');
-- Question 3
Select Grade 
From Grade_Report
Where Student_number = 8;
-- Question 4
Select Prerequisite_Number
From Prerequisite
Where Course_number = 'CS3380';
-- Question 5
Select *
From Course
Where Department = 'CS';

-- Question 6
SELECT S.Course_number, S.Semester, S.Year,
       COUNT(G.Student_number) AS Number_of_students
FROM SECTION S
LEFT JOIN GRADE_REPORT G
    ON S.Section_identifier = G.Section_identifier
WHERE S.Instructor = 'King'
GROUP BY S.Section_identifier, S.Course_number, S.Semester, S.Year;

-- Question 7
SELECT ST.Student_number,
       ST.Name,
       C.Course_name,
       C.Course_number,
       C.Credit_hours,
       S.Semester,
       S.Year,
       G.Grade
FROM STUDENT ST
JOIN GRADE_REPORT G
    ON ST.Student_number = G.Student_number
JOIN SECTION S
    ON G.Section_identifier = S.Section_identifier
JOIN COURSE C
    ON S.Course_number = C.Course_number
WHERE ST.Class = 2
AND ST.Major = 'CS';

-- Question 8
SELECT S.Course_number
FROM SECTION S
JOIN GRADE_REPORT G
    ON S.Section_identifier = G.Section_identifier
WHERE G.Student_number = 8
AND S.Semester = 'Fall'
AND S.Year = '08';

-- Question 9
SELECT ST.Name
FROM STUDENT ST
JOIN GRADE_REPORT G
    ON ST.Student_number = G.Student_number
JOIN SECTION S
    ON G.Section_identifier = S.Section_identifier
WHERE S.Course_number = 'CS1310'
AND G.Grade = 'A';

-- Question 10
Select Count(*) AS Total_students
From Student;

-- Question 11
Select Max(credit_hours) AS Max_credits
From Course;

-- Question 12
Select Count(*) AS Total_three_credit_courses
From Course 
Where Credit_hours = 3;

--  Question 13
SELECT DISTINCT Course_number
FROM SECTION
WHERE Instructor = 'Anderson';

--  Question 14
SELECT DISTINCT C.Course_name
FROM COURSE C
JOIN SECTION S
    ON C.Course_number = S.Course_number
WHERE S.Instructor = 'Anderson';

-- Question 15
SELECT COUNT(DISTINCT G.Student_number) AS Total_students
FROM GRADE_REPORT G
JOIN SECTION S
    ON G.Section_identifier = S.Section_identifier
WHERE S.Course_number = 'MATH2410'
AND G.Grade = 'A';
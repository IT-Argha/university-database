

-- 1.	Find the names of all instructors.

SELECT name
FROM instructor;

 


-- 2.	Find the department names of all instructors.

SELECT dept_name
FROM instructor;
 

--3.	Find the unique department names of all instructors.

SELECT DISTINCT dept_name
FROM instructor;
 


--4.	Find the names of all instructors in the Computer Science department who have salary greater than $70,000.
SELECT name
FROM instructor
WHERE dept_name = 'Comp. Sci.' 
AND salary > 70000;
 


--5.	Retrieve the names of all instructors, along with their department names and department building name (without using natural join).
SELECT i.name AS instructor_name, i.dept_name, d.building AS department_building
FROM instructor i
JOIN department d ON i.dept_name = d.dept_name;
 

--6.	find instructor names and course identifiers for instructors in the Computer Science department (without using natural join).
SELECT i.name AS instructor_name, t.course_id
FROM instructor i
JOIN teaches t ON i.ID = t.ID
JOIN course c ON t.course_id = c.course_id
WHERE i.dept_name = 'Comp. Sci.';
 

--7.	For all instructors in the university who have taught some course, find their names and the course ID of all courses they taught.
SELECT i.name AS instructor_name, t.course_id
FROM instructor i
JOIN teaches t ON i.ID = t.ID;
 


--8.	List the names of instructors along with the titles of courses that they teach.
SELECT i.name AS instructor_name, c.title AS course_title
FROM instructor i
JOIN teaches t ON i.ID = t.ID
JOIN course c ON t.course_id = c.course_id;
 

--9.	Find the names of all departments whose building name includes the substring ‘Watson’.
SELECT dept_name
FROM department
WHERE building LIKE '%Watson%';
 


--10.	list in alphabetical order all instructors in the Computer Science department
SELECT name
FROM instructor
WHERE dept_name = 'Comp. Sci.'
ORDER BY name;
 


--11.	find the names of instructors with salary amounts between $50,000 and $90,000.
SELECT name
FROM instructor
WHERE salary BETWEEN 50000 AND 90000;


 

--12.	Find the instructor names and the courses they taught for all instructors in the Biology department who have taught some course.
SELECT i.name AS instructor_name, t.course_id
FROM instructor i
JOIN teaches t ON i.ID = t.ID
WHERE i.dept_name = 'Biology';
 

--13.	find the set of all courses taught either in Fall 2009 or in Spring 2010, or both.
SELECT DISTINCT course_id
FROM teaches
WHERE (semester = 'Fall' AND year = 2009)
   OR (semester = 'Spring' AND year = 2010);
 


--14.	To find the set of all courses taught in the Fall 2009 as well as in Spring 2010.
SELECT course_id
FROM teaches
WHERE (semester = 'Fall' AND year = 2009)
AND course_id IN (
    SELECT course_id
    FROM teaches
    WHERE semester = 'Spring' AND year = 2010
);
 

--15.	find all courses taught in the Fall 2009 semester but not in the Spring 2010 semester.
SELECT course_id
FROM teaches
WHERE semester = 'Fall' AND year = 2009;
 

--16.	Find the average salary of instructors in the Computer Science department.
SELECT AVG(salary) AS average_salary
FROM instructor
WHERE dept_name = 'Comp. Sci.';
 


--17.	Find the total number of instructors who teach a course in the Spring 2010 semester.
SELECT COUNT(DISTINCT ID) AS total_instructors
FROM teaches
WHERE semester = 'Spring' AND year = 2010;
 


--18.	Find the average salary in each department.
SELECT dept_name, AVG(salary) AS average_salary
FROM instructor
GROUP BY dept_name;
 

--19.	Find the number of instructors in each department who teach a course in the Spring 2010 semester
SELECT i.dept_name, COUNT(DISTINCT t.ID) AS num_instructors
FROM instructor i
JOIN teaches t ON i.ID = t.ID
WHERE t.semester = 'Spring' AND t.year = 2010
GROUP BY i.dept_name;
 


--20.	Find the average salary of instructors in those departments where the average salary is more than $42,000
SELECT dept_name, AVG(salary) AS average_salary
FROM instructor
GROUP BY dept_name
HAVING AVG(salary) > 42000;
 




---------------------------------------Nested Subqueries----------------------------------------------------------

--21.	Find all the courses taught in the both the Fall 2009 and Spring 2010 semesters
SELECT course_id
FROM teaches
WHERE semester = 'Fall' AND year = 2009
AND course_id IN (
    SELECT course_id
    FROM teaches
    WHERE semester = 'Spring' AND year = 2010
);
 

--22.	find all the courses taught in the Fall 2009 semester but not in the Spring 2010 semester
SELECT DISTINCT course_id
FROM teaches
WHERE semester = 'Fall' AND year = 2009;
 

--23.	selects the names of instructors whose names are neither “Mozart” nor “Einstein”
SELECT name
FROM instructor
WHERE name NOT IN ('Mozart', 'Einstein');
 

--24.	Find the names of all instructors whose salary is greater than at least one instructor in the Biology department.
SELECT name
FROM instructor
WHERE salary > (
    SELECT MAX(salary)
    FROM instructor
    WHERE dept_name = 'Biology'
);
 


---------------------------------------------------------------Modification of the Database------------------------------------------------------------

---25.	Delete all instructors with a salary between $13,000 and $15,000.
DELETE FROM instructor
WHERE salary BETWEEN 13000 AND 15000;
 

--26.	Delete all tuples in the instructor relation for those instructors associated with a department located in the Watson building
DELETE FROM instructor
WHERE dept_name IN (
    SELECT dept_name
    FROM department
    WHERE building = 'Watson'
);
 


--27.	delete the records of all instructors with salary below the average at the university
DELETE FROM instructor
WHERE salary < (
    SELECT AVG(salary)
    FROM instructor
);
 

--28.	Suppose that annual salary increases are being made, and salaries of all instructors are to be increased by 5 percent.
UPDATE instructor
SET salary = salary * 1.05;
 

--29.	If a salary increase by 5 percent is to be paid only to instructors with salary of less than $70,000
UPDATE instructor
SET salary = salary * 1.05
WHERE salary < 70000;
 

---30.	Give a 5 percent salary raise to instructors whose salary is less than average.
UPDATE instructor
SET salary = salary * 1.05
WHERE salary < (
    SELECT AVG(salary)
    FROM instructor
);
 
--31.	all instructors with salary over $100,000 receive a 3 percent raise, whereas all others receive a 5 percent raise.
UPDATE instructor
SET salary = CASE
    WHEN salary > 100000 THEN salary * 1.03
    ELSE salary * 1.05
END;
 


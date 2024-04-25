Schema of the university database.

department(dept name(varchar(20), building varchar(15), budget number(15,2)).
course(course id varchar(10), title varchar(40), dept name varchar(20), credits number(2,0))
instructor(ID varchar(5), name varchar(20) not null, dept name varchar(20), salary number(10))
section(course id varchar(10), sec id varchar(10), semester varchar(6), year number, building varchar(15), room number varchar(7), time slot id varchar(10)).
teaches(ID varchar(5), course id varchar(10), sec id varchar(10), semester varchar(6), year number).
 
  
 
 
 


Write SQL statement of following given problems…
1.	Find the names of all instructors.
2.	Find the department names of all instructors.
3.	Find the unique department names of all instructors.
4.	Find the names of all instructors in the Computer Science department who have salary greater than $70,000.
5.	Retrieve the names of all instructors, along with their department names and department building name (without using natural join).
6.	find instructor names and course identifiers for instructors in the Computer Science department (without using natural join).
7.	For all instructors in the university who have taught some course, find their names and the course ID of all courses they taught.
8.	List the names of instructors along with the titles of courses that they teach.
9.	Find the names of all departments whose building name includes the substring ‘Watson’.
10.	list in alphabetical order all instructors in the Computer Science department
11.	find the names of instructors with salary amounts between $50,000 and $90,000.
12.	Find the instructor names and the courses they taught for all instructors in the Biology department who have taught some course.
13.	find the set of all courses taught either in Fall 2009 or in Spring 2010, or both.
14.	To find the set of all courses taught in the Fall 2009 as well as in Spring 2010.
15.	find all courses taught in the Fall 2009 semester but not in the Spring 2010 semester.
16.	Find the average salary of instructors in the Computer Science department.
17.	Find the total number of instructors who teach a course in the Spring 2010 semester.
18.	Find the average salary in each department.
19.	Find the number of instructors in each department who teach a course in the Spring 2010 semester
20.	Find the average salary of instructors in those departments where the average salary is more than $42,000

Nested Subqueries

21.	Find all the courses taught in the both the Fall 2009 and Spring 2010 semesters
22.	find all the courses taught in the Fall 2009 semester but not in the Spring 2010 semester
23.	selects the names of instructors whose names are neither “Mozart” nor “Einstein”
24.	Find the names of all instructors whose salary is greater than at least one instructor in the Biology department.

Modification of the Database

25.	Delete all instructors with a salary between $13,000 and $15,000.
26.	Delete all tuples in the instructor relation for those instructors associated with a department located in the Watson building
27.	delete the records of all instructors with salary below the average at the university
28.	Suppose that annual salary increases are being made, and salaries of all instructors are to be increased by 5 percent.
29.	If a salary increase by 5 percent is to be paid only to instructors with salary of less than $70,000
30.	Give a 5 percent salary raise to instructors whose salary is less than average.
31.	all instructors with salary over $100,000 receive a 3 percent raise, whereas all others receive a 5 percent raise.
32.	



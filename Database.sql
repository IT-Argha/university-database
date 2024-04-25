
-- Create tables
CREATE TABLE instructor (
    ID VARCHAR2(5),
    name VARCHAR2(20) NOT NULL,
    dept_name VARCHAR2(20),
    salary NUMBER(10)
);

CREATE TABLE teaches (
    ID VARCHAR2(5),
    course_id VARCHAR2(10),
    sec_id VARCHAR2(10),
    semester VARCHAR2(6),
    year NUMBER
);

CREATE TABLE course (
    course_id VARCHAR2(10),
    title VARCHAR2(40),
    dept_name VARCHAR2(20),
    credits NUMBER(2,0)
);

CREATE TABLE department (
    dept_name VARCHAR2(20),
    building VARCHAR2(15),
    budget NUMBER(15,2)
);

CREATE TABLE section (
    course_id VARCHAR2(10),
    sec_id VARCHAR2(10),
    semester VARCHAR2(6),
    year NUMBER,
    building VARCHAR2(15),
    room_number VARCHAR2(7),
    time_slot_id VARCHAR2(10)
);

CREATE TABLE prereq (
    course_id VARCHAR2(10),
    prereq_id VARCHAR2(10)
);

-- Insert data
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('10101', 'Srinivasan', 'Comp. Sci.', 65000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('12121', 'Wu', 'Finance', 90000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('15151', 'Mozart', 'Music', 40000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('22222', 'Einstein', 'Physics', 95000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('32343', 'El Said', 'History', 60000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('33456', 'Gold', 'Physics', 87000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('45565', 'Katz', 'Comp. Sci.', 75000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('58583', 'Califieri', 'History', 62000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('76543', 'Singh', 'Finance', 80000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('76766', 'Crick', 'Biology', 72000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('83821', 'Brandt', 'Comp. Sci.', 92000);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES ('98345', 'Kim', 'Elec. Eng.', 80000);

INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('10101', 'CS-315', '1', 'Spring', 2010);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('10101', 'CS-347', '1', 'Fall', 2009);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('12121', 'FIN-201', '1', 'Spring', 2010);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('15151', 'MU-199', '1', 'Spring', 2010);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('22222', 'PHY-101', '1', 'Fall', 2009);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('32343', 'HIS-351', '1', 'Spring', 2010);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('45565', 'CS-101', '1', 'Spring', 2010);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('45565', 'CS-319', '1', 'Spring', 2010);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('76766', 'BIO-101', '1', 'Summer', 2009);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('76766', 'BIO-301', '1', 'Summer', 2010);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('83821', 'CS-190', '1', 'Spring', 2009);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('83821', 'CS-190', '2', 'Spring', 2009);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('83821', 'CS-319', '2', 'Spring', 2010);
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES ('98345', 'EE-181', '1', 'Spring', 2009);

INSERT INTO course (course_id, title, dept_name, credits) VALUES ('BIO-101', 'Intro. to Biology', 'Biology', 4);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('BIO-301', 'Genetics', 'Biology', 4);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('BIO-399', 'Computational Biology', 'Biology', 3);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('CS-190', 'Game Design', 'Comp. Sci.', 4);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('CS-315', 'Robotics', 'Comp. Sci.', 3);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('CS-319', 'Image Processing', 'Comp. Sci.', 3);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('CS-347', 'Database System Concepts', 'Comp. Sci.', 3);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 3);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('FIN-201', 'Investment Banking', 'Finance', 3);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('HIS-351', 'World History', 'History', 3);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('MU-199', 'Music Video Production', 'Music', 3);
INSERT INTO course (course_id, title, dept_name, credits) VALUES ('PHY-101', 'Physical Principles', 'Physics', 4);

INSERT INTO department (dept_name, building, budget) VALUES ('Biology', 'Watson', 90000);
INSERT INTO department (dept_name, building, budget) VALUES ('Comp. Sci.', 'Taylor', 100000);
INSERT INTO department (dept_name, building, budget) VALUES ('Elec. Eng.', 'Taylor', 85000);
INSERT INTO department (dept_name, building, budget) VALUES ('Finance', 'Painter', 120000);
INSERT INTO department (dept_name, building, budget) VALUES ('History', 'Painter', 50000);
INSERT INTO department (dept_name, building, budget) VALUES ('Music', 'Packard', 80000);
INSERT INTO department (dept_name, building, budget) VALUES ('Physics', 'Watson', 70000);

INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('BIO-301', '1', 'Summer', 2010, 'Painter', '514', 'A');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('CS-101', '1', 'Fall', 2009, 'Packard', '101', 'H');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('CS-101', '1', 'Spring', 2010, 'Packard', '101', 'F');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('CS-190', '1', 'Spring', 2009, 'Taylor', '3128', 'E');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('CS-190', '2', 'Spring', 2009, 'Taylor', '3128', 'A');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('CS-315', '1', 'Spring', 2010, 'Watson', '120', 'D');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('CS-319', '1', 'Spring', 2010, 'Watson', '100', 'B');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('CS-319', '2', 'Spring', 2010, 'Taylor', '3128', 'C');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('CS-347', '1', 'Fall', 2009, 'Taylor', '3128', 'A');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('EE-181', '1', 'Spring', 2009, 'Taylor', '3128', 'C');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('FIN-201', '1', 'Spring', 2010, 'Packard', '101', 'B');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('HIS-351', '1', 'Spring', 2010, 'Painter', '514', 'C');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('MU-199', '1', 'Spring', 2010, 'Packard', '101', 'D');
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES ('PHY-101', '1', 'Fall', 2009, 'Watson', '100', 'A');

INSERT INTO prereq (course_id, prereq_id) VALUES ('BIO-301', 'BIO-101');
INSERT INTO prereq (course_id, prereq_id) VALUES ('BIO-399', 'BIO-101');
INSERT INTO prereq (course_id, prereq_id) VALUES ('CS-190', 'CS-101');
INSERT INTO prereq (course_id, prereq_id) VALUES ('CS-315', 'CS-101');
INSERT INTO prereq (course_id, prereq_id) VALUES ('CS-319', 'CS-101');
INSERT INTO prereq (course_id, prereq_id) VALUES ('CS-347', 'CS-101');
INSERT INTO prereq (course_id, prereq_id) VALUES ('EE-181', 'PHY-101');



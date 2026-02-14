
CREATE TABLE Student (
	studentID VARCHAR(15) PRIMARY KEY,
    name VARCHAR(70),
    DOB DATE
    );
  
CREATE TABLE Courses (
	course_id INT PRIMARY KEY,
	course_name VARCHAR(25) NOT NULL
);
   
 
CREATE TABLE Transcript (
	transcriptID INT PRIMARY KEY,
    studentID VARCHAR(15),
	course_id INT, 
     subject VARCHAR(10),
     grade CHAR(1),
     gpa DOUBLE,
     FOREIGN KEY (studentID) REFERENCES Student(studentID),
     FOREIGN KEY (course_id) REFERENCES Courses(course_id)
    );
    

CREATE TABLE Degree (
	degreeID INT PRIMARY KEY,
	studentID VARCHAR(15),
	program VARCHAR(50) NOT NULL,
	major VARCHAR(50) NOT NULL,
	FOREIGN KEY (studentID) REFERENCES Student(studentID)
);


INSERT INTO Student (studentID, name, DOB)
VALUES('30147114', 'Jairius', '2003-08-13'),
	   ('30146953',  'Jimmy',  '2001-06-19'),
       ('30145582', 'Aaron', '2002-12-06'),
       ('30141234', 'Rina', '2005-03-25');
       
INSERT INTO Courses(course_id, course_name)
VALUES(202, 'Linear Algebra'),
      (340, 'Computer Information Systems'),
      (101, 'English Composition I'),
      (460, 'Software Engineering');
       
INSERT INTO Transcript(transcriptID,studentID,course_id, subject, grade, gpa)
VALUES(1, '30147114', 460, 'CSCI', 'C', 3.0 ),
	   (2, '30146953',  202, 'Math', 'C', 2.8),
       (3, '30145582', 101, 'ENGL', 'A', 3.2),
       (4, '30141234', 340, 'CINS', 'A', 3.5);

INSERT INTO Degree(degreeID, program, major, studentID)
VALUES(26, 'Bachelor of Science', 'Computer Science', '30147114'),
	   (12,  'Bachelor of Science', 'Finance', '30146953'),
       (5, 'Bachelor of Arts', 'English', '30145582'),
       (7, 'Bachelor of Mathematics', 'Math', '30141234');

SELECT Student.name, Transcript.transcriptID
FROM Student inner join Transcript on Student.studentID = Transcript.studentID
ORDER BY Student.name;




  
  
  
 





create table Student (
	studentID varchar(15) primary key,
    name varchar(70),
    DOB  date
    );
  
  
create table Transcript (
	transcriptID int primary key,
    studentID varchar(15),
	courseID varchar(10),
    subject  varchar(10),
     grade  char(1),
     gpa double,
     foreign key (studentID) references Student(studentID)
    );
 
create table Degree (
degreeID int primary key,
program varchar(50),
major varchar(50)
);

insert into Student(studentID, name, DOB)
values('30147114', 'Jairius', '2003-08-13'),
	   ('30146953',  'Jimmy',  '2001-06-19'),
       ('30145582', 'Aaron', '2002-12-06'),
       ('30141234', 'Rina', '2005-03-25');
       
insert into Transcript(transcriptID,studentID,courseID, subject, grade, gpa)
values(1,  '30147114', '460', 'CSCI', 'C', 3.0 ),
	   (2, '30146953',  '202',  'Math', 'C', 2.8),
       (3, '30145582', '101', 'ENGL', 'A', 3.2),
       (4, '30141234', '340', 'CINS', 'A', 3.5);


    insert into Degree(degreeID, program, major)
values(26, 'Bachelor of Science', 'Computer Science'),
	   (12,  'Bachelor of Science', 'Finance'),
       (5, 'Bachelor of Arts', 'English'),
       (7, 'Bachelor of Mathematics', 'Math');

select Student.name, Transcript.transcriptID
from Student inner join Transcript on Student.studentID = Transcript.studentID
order by Student.name;
    

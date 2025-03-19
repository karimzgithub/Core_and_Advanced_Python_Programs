Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 23
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> --Lab 1. Create a Database & Table Using MySQL Command-Line Client

mysql> --Create a database with the name StudentManagementSystem. 
mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> USE StudentManagementSystem;
Database changed

mysql> --Create a table with named Student with attributes:
mysql> --StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone 
mysql> CREATE TABLE Student(StudentID VARCHAR(10) PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),DateOfBirth DATE,Gender VARCHAR(10),Email VARCHAR(100),Phone VARCHAR(15));
Query OK, 0 rows affected (0.02 sec)


mysql> --Create a table with name Course with attributes:
mysql> -- CourseID (Primary Key) ● CourseTitle ● Credits
mysql> CREATE TABLE Course (CourseID VARCHAR(10) PRIMARY KEY ,CourseTitle VARCHAR(100),Credits INT);
Query OK, 0 rows affected (0.02 sec)

mysql> --Create a table with named Instructor with attributes: 
mysql> --InstructorID (Primary Key) ● FirstName ● LastName ● Email 
mysql> CREATE TABLE Instructor (InstructorID VARCHAR(10) PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Email VARCHAR(100));
Query OK, 0 rows affected (0.02 sec)

mysql> --Create a table with named Enrollment with attributes: 
mysql> --EnrollmentID (Primary Key) ● EnrollmentDate ● StudentID(Foreign key) ● CourseID(Foreign Key) ● InstructorID(Foreign key)
mysql> CREATE TABLE Enrollment (EnrollmentID VARCHAR(10) PRIMARY KEY,EnrollmentDate DATE, StudentID VARCHAR(10),CourseID VARCHAR(10),InstructorID VARCHAR(10),FOREIGN KEY (StudentID) REFERENCES Student(StudentID),FOREIGN KEY (CourseID) REFERENCES Course(CourseID),FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID));
Query OK, 0 rows affected (0.05 sec)

mysql> --Create a table with named Score with attributes: 
mysql> --ScoreID (Primary Key) ● CourseID (Foreign key) ● StudentID (Foreign Key) ● DateOfExam ● CreditObtained 
mysql> CREATE TABLE Score (ScoreID VARCHAR(10) PRIMARY KEY ,CourseID VARCHAR(10),StudentID VARCHAR(10),DateOfExam DATE,CreditObtained INT,FOREIGN KEY (CourseID) REFERENCES Course(CourseID),FOREIGN KEY (StudentID) REFERENCES Student(StudentID));
Query OK, 0 rows affected (0.05 sec)

mysql> --Create a table with named Feedback with attributes:
mysql> --FeedbackID (Primary Key) ● StudentID (Foreign key) ● Date ● InstructorName ● Feedback
mysql> CREATE TABLE Feedback (FeedbackID VARCHAR(10) PRIMARY KEY ,StudentID VARCHAR(10),Date DATE,InstructorName VARCHAR(100),Feedback TEXT,FOREIGN KEY (StudentID) REFERENCES Student(StudentID));
Query OK, 0 rows affected (0.04 sec)

mysql> --Insert 5 records in each table and retrieve data from all tables and display
mysql> INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES('Std1', 'Karim', 'Nadkar', '2000-05-10', 'Male', 'karim.nadkar@email.com', '1234567890'),('Std2','Julie', 'Smith', '1999-07-22', 'Female', 'julie.smith@email.com', '2345678901'),('Std3','Atharva', 'More', '2001-11-15', 'Male', 'atharva.more@email.com', '3456789012'),('Std4','Nikki', 'Sharma', '2002-03-30', 'Female', 'nikki.sharma@email.com', '4567890123'),('Std5','Sakib', 'Mulani', '1998-09-25', 'Male', 'sakib.mulani@email.com', '5678901234');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Course (CourseID,CourseTitle, Credits) VALUES('c1','Database Systems', 4),('c2','Computer Networks', 3),('c3','Software Engineering', 4),('c4','Machine Learning', 5),('c5','Cybersecurity', 3);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Instructor (InstructorID,FirstName, LastName, Email) VALUES('Ins1','Alice', 'Johnson', 'alice.johnson@email.com'),('Ins2','Bob', 'Miller', 'bob.miller@email.com'),('Ins3','Charlie', 'Davis', 'charlie.davis@email.com'),('Ins4','David', 'Clark', 'david.clark@email.com'),('Ins5','Ella', 'White', 'ella.white@email.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Enrollment (EnrollmentID, EnrollmentDate, StudentID, CourseID, InstructorID) VALUES('Enr1','2025-01-10', 'Std1', 'c1', 'Ins1'),('Enr2','2025-01-12', 'Std2', 'c2', 'Ins2'),('Enr3','2025-01-15', 'Std3', 'c3', 'Ins3'),('Enr4','2025-01-18', 'Std4', 'c4', 'Ins4'),('Enr5','2025-01-20', 'Std5', 'c5', 'Ins5');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Score (ScoreID,CourseID, StudentID, DateOfExam, CreditObtained) VALUES('Sc1','c1', 'Std1', '2025-02-20', 4),('Sc2','c2', 'Std2', '2025-02-22', 2),('Sc3','c3', 'Std3', '2025-02-24', 3),('Sc4','c4', 'Std4', '2025-02-26', 4),('Sc5','c5', 'Std5', '2025-02-28', 3);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Feedback (FeedbackID,StudentID, Date, InstructorName, Feedback) VALUES('F1','Std1', '2025-03-01', 'Alice Johnson', 'Great course!'),('F2','Std2', '2025-03-02', 'Bob Miller', 'Very informative.'),('F3','Std3', '2025-03-03', 'Charlie Davis', 'Well-structured lessons.'),('F4','Std4', '2025-03-04', 'David Clark', 'Enjoyed the hands-on projects.'),('F5','Std5', '2025-03-05', 'Ella White', 'Excellent teaching methodology.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                  | Phone      |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| Std1      | Karim     | Nadkar   | 2000-05-10  | Male   | karim.nadkar@email.com | 1234567890 |
| Std2      | Julie     | Smith    | 1999-07-22  | Female | julie.smith@email.com  | 2345678901 |
| Std3      | Atharva   | More     | 2001-11-15  | Male   | atharva.more@email.com | 3456789012 |
| Std4      | Nikki     | Sharma   | 2002-03-30  | Female | nikki.sharma@email.com | 4567890123 |
| Std5      | Sakib     | Mulani   | 1998-09-25  | Male   | sakib.mulani@email.com | 5678901234 |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Course;
+----------+----------------------+---------+
| CourseID | CourseTitle          | Credits |
+----------+----------------------+---------+
| c1       | Database Systems     |       4 |
| c2       | Computer Networks    |       3 |
| c3       | Software Engineering |       4 |
| c4       | Machine Learning     |       5 |
| c5       | Cybersecurity        |       3 |
+----------+----------------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Instructor;
+--------------+-----------+----------+-------------------------+
| InstructorID | FirstName | LastName | Email                   |
+--------------+-----------+----------+-------------------------+
| Ins1         | Alice     | Johnson  | alice.johnson@email.com |
| Ins2         | Bob       | Miller   | bob.miller@email.com    |
| Ins3         | Charlie   | Davis    | charlie.davis@email.com |
| Ins4         | David     | Clark    | david.clark@email.com   |
| Ins5         | Ella      | White    | ella.white@email.com    |
+--------------+-----------+----------+-------------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| Enr1         | 2025-01-10     | Std1      | c1       | Ins1         |
| Enr2         | 2025-01-12     | Std2      | c2       | Ins2         |
| Enr3         | 2025-01-15     | Std3      | c3       | Ins3         |
| Enr4         | 2025-01-18     | Std4      | c4       | Ins4         |
| Enr5         | 2025-01-20     | Std5      | c5       | Ins5         |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
| Sc1     | c1       | Std1      | 2025-02-20 |              4 |
| Sc2     | c2       | Std2      | 2025-02-22 |              2 |
| Sc3     | c3       | Std3      | 2025-02-24 |              3 |
| Sc4     | c4       | Std4      | 2025-02-26 |              4 |
| Sc5     | c5       | Std5      | 2025-02-28 |              3 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+----------------+---------------------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback                        |
+------------+-----------+------------+----------------+---------------------------------+
| F1         | Std1      | 2025-03-01 | Alice Johnson  | Great course!                   |
| F2         | Std2      | 2025-03-02 | Bob Miller     | Very informative.               |
| F3         | Std3      | 2025-03-03 | Charlie Davis  | Well-structured lessons.        |
| F4         | Std4      | 2025-03-04 | David Clark    | Enjoyed the hands-on projects.  |
| F5         | Std5      | 2025-03-05 | Ella White     | Excellent teaching methodology. |
+------------+-----------+------------+----------------+---------------------------------+
5 rows in set (0.00 sec)

mysql>



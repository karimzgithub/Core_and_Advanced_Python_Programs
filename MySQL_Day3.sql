Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 29
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> -- Consider a simple database with one tables: Employee
mysql> create database company;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| company                 |
| ecommerce               |
| employee                |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.01 sec)

mysql> use company;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> -- Consider a simple database with one tables: Employee
mysql> create employee (emp_id VARCHAR(10) PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),age INT,email VARCHAR(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'employee (emp_id VARCHAR(10) PRIMARY KEY,first_name VARCHAR(50),last_name VARCHA' at line 1
mysql> create table employee (emp_id VARCHAR(10) PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),age INT,email VARCHAR(100));
Query OK, 0 rows affected (0.03 sec)

mysql> -- Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table.
mysql> INSERT INTO employee (emp_id, first_name, last_name, age, email) VALUES
    -> ('emp1', 'John', 'Doe', 28, 'john.doe@example.com'),('emp2', 'Jane', 'Smith', 35, 'jane.smith@example.com'),('emp3', 'Robert', 'Brown', 40, 'robert.brown@example.com'),('emp4', 'Emily', 'Davis', 23, 'emily.davis@example.com'),('emp5', 'Michael', 'Johnson', 31, 'michael.johnson@example.com'),('emp6', 'Sarah', 'Lee', 45, 'sarah.lee@example.com'),('emp7', 'David', 'Wilson', 29, 'david.wilson@example.com'),('emp8', 'Sophia', 'Martinez', 38, 'sophia.martinez@example.com'),('emp9', 'James', 'Anderson', 50, 'james.anderson@example.com'),('emp10', 'Olivia', 'Taylor', 27, 'olivia.taylor@example.com');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee;
+--------+------------+-----------+------+-----------------------------+
| emp_id | first_name | last_name | age  | email                       |
+--------+------------+-----------+------+-----------------------------+
| emp1   | John       | Doe       |   28 | john.doe@example.com        |
| emp10  | Olivia     | Taylor    |   27 | olivia.taylor@example.com   |
| emp2   | Jane       | Smith     |   35 | jane.smith@example.com      |
| emp3   | Robert     | Brown     |   40 | robert.brown@example.com    |
| emp4   | Emily      | Davis     |   23 | emily.davis@example.com     |
| emp5   | Michael    | Johnson   |   31 | michael.johnson@example.com |
| emp6   | Sarah      | Lee       |   45 | sarah.lee@example.com       |
| emp7   | David      | Wilson    |   29 | david.wilson@example.com    |
| emp8   | Sophia     | Martinez  |   38 | sophia.martinez@example.com |
| emp9   | James      | Anderson  |   50 | james.anderson@example.com  |
+--------+------------+-----------+------+-----------------------------+
10 rows in set (0.00 sec)

mysql> -- Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table.
mysql>  SELECT first_name, last_name FROM employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| John       | Doe       |
| Olivia     | Taylor    |
| Jane       | Smith     |
| Robert     | Brown     |
| Emily      | Davis     |
| Michael    | Johnson   |
| Sarah      | Lee       |
| David      | Wilson    |
| Sophia     | Martinez  |
| James      | Anderson  |
+------------+-----------+
10 rows in set (0.00 sec)

mysql> -- Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years.
mysql>  SELECT first_name, last_name, age FROM employee WHERE age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Jane       | Smith     |   35 |
| Robert     | Brown     |   40 |
| Michael    | Johnson   |   31 |
| Sarah      | Lee       |   45 |
| Sophia     | Martinez  |   38 |
| James      | Anderson  |   50 |
+------------+-----------+------+
6 rows in set (0.00 sec)

mysql> -- Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25
mysql>  UPDATE employee SET age = age + 1 WHERE age > 25;
Query OK, 9 rows affected (0.01 sec)
Rows matched: 9  Changed: 9  Warnings: 0

mysql> SELECT first_name, last_name, age FROM employee;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| John       | Doe       |   29 |
| Olivia     | Taylor    |   28 |
| Jane       | Smith     |   36 |
| Robert     | Brown     |   41 |
| Emily      | Davis     |   23 |
| Michael    | Johnson   |   32 |
| Sarah      | Lee       |   46 |
| David      | Wilson    |   30 |
| Sophia     | Martinez  |   39 |
| James      | Anderson  |   51 |
+------------+-----------+------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM employee;
+--------+------------+-----------+------+-----------------------------+
| emp_id | first_name | last_name | age  | email                       |
+--------+------------+-----------+------+-----------------------------+
| emp1   | John       | Doe       |   29 | john.doe@example.com        |
| emp10  | Olivia     | Taylor    |   28 | olivia.taylor@example.com   |
| emp2   | Jane       | Smith     |   36 | jane.smith@example.com      |
| emp3   | Robert     | Brown     |   41 | robert.brown@example.com    |
| emp4   | Emily      | Davis     |   23 | emily.davis@example.com     |
| emp5   | Michael    | Johnson   |   32 | michael.johnson@example.com |
| emp6   | Sarah      | Lee       |   46 | sarah.lee@example.com       |
| emp7   | David      | Wilson    |   30 | david.wilson@example.com    |
| emp8   | Sophia     | Martinez  |   39 | sophia.martinez@example.com |
| emp9   | James      | Anderson  |   51 | james.anderson@example.com  |
+--------+------------+-----------+------+-----------------------------+
10 rows in set (0.00 sec)

mysql>
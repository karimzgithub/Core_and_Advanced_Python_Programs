Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 31
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>  -- Lab 1 Database Schema:
mysql> -- Use the same database scheme created in Previous Lab. Task: Let's consider a scenario where you want to retrieve information about students from a database table named student and display the results in ascending order based on their last names.
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
10 rows in set (0.00 sec)

mysql> use studentmanagementsystem;
Database changed
mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| course                            |
| enrollment                        |
| feedback                          |
| instructor                        |
| score                             |
| student                           |
| students                          |
+-----------------------------------+
7 rows in set (0.00 sec)

mysql> desc students;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | NO   |     | NULL    |       |
| LastName  | varchar(50) | NO   |     | NULL    |       |
| Gender    | varchar(10) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | varchar(50) | NO   |     | NULL    |       |
| Phone     | varchar(15) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> select *from Students;
+-----------+-----------+----------+--------+-----+---------------+------------+
| StudentID | FirstName | LastName | Gender | Age | Address       | Phone      |
+-----------+-----------+----------+--------+-----+---------------+------------+
|         1 | Karim     | Nadkar   | Male   |  23 | Khed          | 3146768465 |
|         2 | Atharva   | More     | Male   |  23 | Chiplun       | 5186762465 |
|         3 | Shibra    | Khan     | Female |  23 | Mumbai        | 7553690421 |
|         4 | Suyash    | Rupnawar | Male   |  22 | Pune          | 8146723465 |
|         5 | Nikki     | Sharma   | Female |  22 | Mahabaleshwar | 9665126548 |
|         6 | Tom       | Cruise   | Male   |  25 | Delhi         | 6203478465 |
|         7 | Cristian  | Grey     | Male   |  22 | Mangalore     | 7684650237 |
|         8 | Emma      | Watson   | Female |  21 | Bangalore     | 4676846005 |
|         9 | Daneial   | Don      | Male   |  24 | Mumbai        | 7302768465 |
|        10 | Millie    | Brown    | Female |  22 | Lucknow       | 6768423065 |
+-----------+-----------+----------+--------+-----+---------------+------------+
10 rows in set (0.00 sec)

mysql> --  display the results in ascending order based on their last names.
mysql> -- Hint: Use orderBy clause in a ascending Order
mysql> SELECT * FROM Students ORDER BY LastName ASC;
+-----------+-----------+----------+--------+-----+---------------+------------+
| StudentID | FirstName | LastName | Gender | Age | Address       | Phone      |
+-----------+-----------+----------+--------+-----+---------------+------------+
|        10 | Millie    | Brown    | Female |  22 | Lucknow       | 6768423065 |
|         6 | Tom       | Cruise   | Male   |  25 | Delhi         | 6203478465 |
|         9 | Daneial   | Don      | Male   |  24 | Mumbai        | 7302768465 |
|         7 | Cristian  | Grey     | Male   |  22 | Mangalore     | 7684650237 |
|         3 | Shibra    | Khan     | Female |  23 | Mumbai        | 7553690421 |
|         2 | Atharva   | More     | Male   |  23 | Chiplun       | 5186762465 |
|         1 | Karim     | Nadkar   | Male   |  23 | Khed          | 3146768465 |
|         4 | Suyash    | Rupnawar | Male   |  22 | Pune          | 8146723465 |
|         5 | Nikki     | Sharma   | Female |  22 | Mahabaleshwar | 9665126548 |
|         8 | Emma      | Watson   | Female |  21 | Bangalore     | 4676846005 |
+-----------+-----------+----------+--------+-----+---------------+------------+
10 rows in set (0.01 sec)

mysql> -- Lab 2 Database Schema: Use the same database scheme created in Previous Lab.
mysql> -- Task: Let's consider a scenario where you want to count the number of students based on their gender from a database table named Student.
mysql> -- Hint: use GroupBy clause and Count() function
mysql> select *from Students;
+-----------+-----------+----------+--------+-----+---------------+------------+
| StudentID | FirstName | LastName | Gender | Age | Address       | Phone      |
+-----------+-----------+----------+--------+-----+---------------+------------+
|         1 | Karim     | Nadkar   | Male   |  23 | Khed          | 3146768465 |
|         2 | Atharva   | More     | Male   |  23 | Chiplun       | 5186762465 |
|         3 | Shibra    | Khan     | Female |  23 | Mumbai        | 7553690421 |
|         4 | Suyash    | Rupnawar | Male   |  22 | Pune          | 8146723465 |
|         5 | Nikki     | Sharma   | Female |  22 | Mahabaleshwar | 9665126548 |
|         6 | Tom       | Cruise   | Male   |  25 | Delhi         | 6203478465 |
|         7 | Cristian  | Grey     | Male   |  22 | Mangalore     | 7684650237 |
|         8 | Emma      | Watson   | Female |  21 | Bangalore     | 4676846005 |
|         9 | Daneial   | Don      | Male   |  24 | Mumbai        | 7302768465 |
|        10 | Millie    | Brown    | Female |  22 | Lucknow       | 6768423065 |
+-----------+-----------+----------+--------+-----+---------------+------------+
10 rows in set (0.00 sec)

mysql> -- count the number of students based on their gender from a database table
mysql> SELECT Gender, COUNT(*) as Students_count FROM Students GROUP BY Gender;
+--------+----------------+
| Gender | Students_count |
+--------+----------------+
| Male   |              6 |
| Female |              4 |
+--------+----------------+
2 rows in set (0.00 sec)































mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.04 sec)

mysql> use sajin;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_sajin |
+-----------------+
| ak              |
| employees       |
+-----------------+
2 rows in set (0.01 sec)

mysql> select*from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | developer              |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
+-------+---------+------------------------+---------+
13 rows in set (0.00 sec)

mysql> SELECT * FROM empname
    -> WHERE ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> SELECT * FROM employees
    -> WHERE empname LIKE 'A';
Empty set (0.00 sec)

mysql> SELECT * FROM employees
    -> WHERE empname LIKE 'A_';
Empty set (0.00 sec)

mysql> SELECT * FROM employees
    -> WHERE empname LIKE 'A%';
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 2     | aaron   | data scientist | 1000000 |
| 6     | aurun   | developer      |  100000 |
+-------+---------+----------------+---------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM employees
    -> WHERE empname NOT LIKE 'A%';
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
+-------+---------+------------------------+---------+
11 rows in set (0.00 sec)

mysql>  SELECT * FROM employee WHERE enpname LIKE 'A%A';
ERROR 1146 (42S02): Table 'sajin.employee' doesn't exist
mysql>  SELECT * FROM employee WHERE enpname LIKE "A%A";
ERROR 1146 (42S02): Table 'sajin.employee' doesn't exist
mysql>  SELECT * FROM employee WHERE enpname LIKE "A%N";
ERROR 1146 (42S02): Table 'sajin.employee' doesn't exist
mysql>  SELECT * FROM employee WHERE eMpname LIKE "A%N";
ERROR 1146 (42S02): Table 'sajin.employee' doesn't exist
mysql>  SELECT * FROM employee WHERE empname LIKE "A%N";
ERROR 1146 (42S02): Table 'sajin.employee' doesn't exist
mysql>  SELECT * FROM employees WHERE empname LIKE "A%N";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 2     | aaron   | data scientist | 1000000 |
| 6     | aurun   | developer      |  100000 |
+-------+---------+----------------+---------+
2 rows in set (0.00 sec)

mysql>  SELECT * FROM employees WHERE empname LIKE "A%";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 2     | aaron   | data scientist | 1000000 |
| 6     | aurun   | developer      |  100000 |
+-------+---------+----------------+---------+
2 rows in set (0.00 sec)

mysql>  SELECT * FROM employees WHERE empname LIKE "A";
Empty set (0.00 sec)

mysql>  SELECT * FROM employees WHERE empname LIKE "A_";
Empty set (0.00 sec)

mysql>  SELECT * FROM employees WHERE empname LIKE "a";
Empty set (0.00 sec)

mysql>  SELECT * FROM employees WHERE empname LIKE "a%";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 2     | aaron   | data scientist | 1000000 |
| 6     | aurun   | developer      |  100000 |
+-------+---------+----------------+---------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM employees WHERE empname LIKE 'A_';
Empty set (0.00 sec)

mysql> insert into employees values(14,"am","software engineer",240000);
Query OK, 1 row affected (0.02 sec)

mysql> select *from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | developer              |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
| 14    | am      | software engineer      |  240000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql> SELECT * FROM employees WHERE empname LIKE 'A_';
+-------+---------+-------------------+--------+
| empid | empname | jobdescription    | salary |
+-------+---------+-------------------+--------+
| 14    | am      | software engineer | 240000 |
+-------+---------+-------------------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM employees WHERE empname LIKE 'A__';
Empty set (0.00 sec)

mysql> --Match Names Starting with 'A' and Ending with 'N':
    -> select * from employees where empname likE 'A%N';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Match Names Starting with 'A' and Ending with 'N':
select * from employees whe' at line 1
mysql> select * from employees where empname LIKE 'A%N';
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 2     | aaron   | data scientist | 1000000 |
| 6     | aurun   | developer      |  100000 |
+-------+---------+----------------+---------+
2 rows in set (0.00 sec)

mysql> select * from employees where empname LiKE 'A%N';
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 2     | aaron   | data scientist | 1000000 |
| 6     | aurun   | developer      |  100000 |
+-------+---------+----------------+---------+
2 rows in set (0.00 sec)

mysql> select * from employees where empname likE 'A%N';
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 2     | aaron   | data scientist | 1000000 |
| 6     | aurun   | developer      |  100000 |
+-------+---------+----------------+---------+
2 rows in set (0.00 sec)

mysql>


mysql> SELECT * FROM EMPLOYEES WHERE EMPNAME LIKE 'S%';
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
| 4     | sam     | data engineer  | 3000000 |
| 7     | sea     | front-end      |   10000 |
| 8     | siva    | back-end       |   20000 |
| 13    | silent  | ml engineer    |    1070 |
+-------+---------+----------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEES WHERE EMPNAME LIKE 'S%A';
+-------+---------+----------------+--------+
| empid | empname | jobdescription | salary |
+-------+---------+----------------+--------+
| 7     | sea     | front-end      |  10000 |
| 8     | siva    | back-end       |  20000 |
+-------+---------+----------------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEES WHERE EMPNAME LIKE 'S__A';
+-------+---------+----------------+--------+
| empid | empname | jobdescription | salary |
+-------+---------+----------------+--------+
| 8     | siva    | back-end       |  20000 |
+-------+---------+----------------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEES WHERE EMPNAME LIKE 'S_A';
+-------+---------+----------------+--------+
| empid | empname | jobdescription | salary |
+-------+---------+----------------+--------+
| 7     | sea     | front-end      |  10000 |
+-------+---------+----------------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEES WHERE EMPNAME LIKE 'S___A';
Empty set (0.00 sec)

mysql> DESC EMPLOYEES;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| empid          | varchar(30) | YES  |     | NULL    |       |
| empname        | varchar(30) | YES  |     | NULL    |       |
| jobdescription | varchar(30) | YES  |     | NULL    |       |
| salary         | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> SELECT * FROM EMPLOYEES;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | developer              |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
| 14    | am      | software engineer      |  240000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql>
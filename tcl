MariaDB [base]> create table customer(c_id int,c_name varchar(10),sal int);
Query OK, 0 rows affected (0.23 sec)

MariaDB [base]> start transaction;
Query OK, 0 rows affected (0.00 sec)

MariaDB [base]> insert into customer values(1,'ammu',20000);
Query OK, 1 row affected (0.00 sec)

MariaDB [base]> insert into customer values(2,'anagha',30000);
Query OK, 1 row affected (0.00 sec)

MariaDB [base]> insert into customer values(3,'swomya',14000);
Query OK, 1 row affected (0.00 sec)

MariaDB [base]> commit;
Query OK, 0 rows affected (0.02 sec)

MariaDB [base]> select * from customer;
+------+--------+-------+
| c_id | c_name | sal   |
+------+--------+-------+
|    1 | ammu   | 20000 |
|    2 | anagha | 30000 |
|    3 | swomya | 14000 |
+------+--------+-------+
3 rows in set (0.00 sec)

MariaDB [base]> savepoint s1;
Query OK, 0 rows affected (0.00 sec)


MariaDB [base]> delete from customer where c_id=3;
Query OK, 1 row affected (0.00 sec)

MariaDB [base]> select * from customer;
+------+--------+-------+
| c_id | c_name | sal   |
+------+--------+-------+
|    1 | ammu   | 20000 |
|    2 | anagha | 30000 |
+------+--------+-------+
2 rows in set (0.00 sec)

MariaDB [base]> rollback to s1;
Query OK, 0 rows affected (0.00 sec)

MariaDB [base]> select * from customer;
+------+--------+-------+
| c_id | c_name | sal   |
+------+--------+-------+
|    1 | ammu   | 20000 |
|    2 | anagha | 30000 |
|    3 | swomya | 14000 |
+------+--------+-------+
3 rows in set (0.00 sec)

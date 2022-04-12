student@student-OptiPlex-3050:~$ sudo mysql -u root -p
[sudo] password for student: 
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 34
Server version: 10.0.38-MariaDB-0ubuntu0.16.04.1 Ubuntu 16.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create user 'user1'@localhost identified by 'anagha';
Query OK, 0 rows affected (0.00 sec)

MariaDB [(none)]> grant all privileges on *.* to 'user1'@localhost identified by 'anagha';
Query OK, 0 rows affected (0.00 sec)

MariaDB [(none)]> show grants for 'user1'@localhost;
+-----------------------------------------------------------------------------------------------------------------------+
| Grants for user1@localhost                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'user1'@'localhost' IDENTIFIED BY PASSWORD '*04ED01A4AEAA074C44A294CFF19FB59B56DF28FB' |
+-----------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [(none)]> revoke insert on *.* from 'user1'@'localhost';
Query OK, 0 rows affected (0.00 sec)

MariaDB [(none)]> show grants for 'user1'@localhost;
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Grants for user1@localhost                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| GRANT SELECT, UPDATE, DELETE, CREATE, DROP, RELOAD, SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES, SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE ON *.* TO 'user1'@'localhost' IDENTIFIED BY PASSWORD '*04ED01A4AEAA074C44A294CFF19FB59B56DF28FB' |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [(none)]> 


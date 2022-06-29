mysql> create database zadanie_2;

mysql> CREATE TABLE Biblioteczka (id INT NOT NULL AUTO_INCREMENT PRIMARY
KEY, Tytuł VARCHAR(50) NOT NULL, Data_zakupu DATE NOT NULL);

mysql> INSERT INTO Biblioteczka (id, Tytuł, Data_zakupu) values (1, 'zostan olbrzymem', NOW());

mysql> SELECT * FROM Biblioteczka;
+----+------------------+-------------+
| id | Tytuł            | Data_zakupu |
+----+------------------+-------------+
|  1 | zostan olbrzymem | 2022-06-28  |
+----+------------------+-------------+

mysql> INSERT INTO Biblioteczka (id, Tytuł, Data_zakupu) values (2, 'how
rich people think', NOW());

mysql> INSERT INTO Biblioteczka (id, Tytuł, Data_zakupu) values (3, 'Lalka', NOW());

mysql> UPDATE Biblioteczka SET Tytuł = 'Zbrodnia i kara' WHERE id=1;

mysql> ALTER TABLE Biblioteczka ADD Autor VARCHAR(50) AFTER Data_zakupu;

mysql> UPDATE Biblioteczka SET Autor = 'Fiodor Dostojewski' WHERE id=1;

mysql> UPDATE Biblioteczka SET Autor = 'Anthony Robbins' WHERE id=2;

mysql> UPDATE Biblioteczka SET Autor = 'Bolesław Prus' WHERE id=3;

mysql> DELETE FROM Biblioteczka WHERE id=2;

mysql> DELETE FROM Biblioteczka WHERE id=3;

mysql> SELECT Autor FROM Biblioteczka;
+--------------------+
| Autor              |
+--------------------+
| Fiodor Dostojewski |
+--------------------+

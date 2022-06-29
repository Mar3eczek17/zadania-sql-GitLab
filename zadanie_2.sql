create database zadanie_2;

CREATE TABLE Biblioteczka (id INT NOT NULL AUTO_INCREMENT PRIMARY
KEY, Tytuł VARCHAR(50) NOT NULL, Data_zakupu DATE NOT NULL);

INSERT INTO Biblioteczka (id, Tytuł, Data_zakupu) values (1, 'zostan olbrzymem', NOW());

SELECT * FROM Biblioteczka;
+----+------------------+-------------+
| id | Tytuł            | Data_zakupu |
+----+------------------+-------------+
|  1 | zostan olbrzymem | 2022-06-28  |
+----+------------------+-------------+

INSERT INTO Biblioteczka (id, Tytuł, Data_zakupu) values (2, 'how
rich people think', NOW());

INSERT INTO Biblioteczka (id, Tytuł, Data_zakupu) values (3, 'Lalka', NOW());

UPDATE Biblioteczka SET Tytuł = 'Zbrodnia i kara' WHERE id=1;

ALTER TABLE Biblioteczka ADD Autor VARCHAR(50) AFTER Data_zakupu;

UPDATE Biblioteczka SET Autor = 'Fiodor Dostojewski' WHERE id=1;

UPDATE Biblioteczka SET Autor = 'Anthony Robbins' WHERE id=2;

UPDATE Biblioteczka SET Autor = 'Bolesław Prus' WHERE id=3;

DELETE FROM Biblioteczka WHERE id=2;

DELETE FROM Biblioteczka WHERE id=3;

SELECT Autor FROM Biblioteczka;
+--------------------+
| Autor              |
+--------------------+
| Fiodor Dostojewski |
+--------------------+

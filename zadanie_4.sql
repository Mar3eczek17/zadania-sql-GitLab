CREATE DATABASE Lista_Prezentów;

CREATE TABLE Prezenty_2020 (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, Imię_obdarowanego VARCHAR(30), Pomysł_na_prezent VARCHAR(50), Cena
decimal(5, 2), Miejsce_zakupu VARCHAR(40));

INSERT INTO Prezenty_2020 (Imię_obdarowanego, Pomysł_na_prezent, C
ena, Miejsce_zakupu) values ('Jim', 'Krawat', 150, 'Galeria Krakowska');

INSERT INTO Prezenty_2020 (Imię_obdarowanego, Pomysł_na_prezent, Cena, Miejsce_zakupu) values ('Joe', 'Portfel', 200, 'Bonarka');

INSERT INTO Prezenty_2020 (Imię_obdarowanego, Pomysł_na_prezent, Cena, Miejsce_zakupu) values ('Mike', 'Skarpety', 50, 'Kazimierz');

INSERT INTO Prezenty_2020 (Imię_obdarowanego, Pomysł_na_prezent, Cena, Miejsce_zakupu) values ('Pole', 'Zegarek', 500, 'Serenada');

INSERT INTO Prezenty_2020 (Imię_obdarowanego, Pomysł_na_prezent, Cena, Miejsce_zakupu) values ('Alice', 'Voucher SPA', 300, 'Online Shope');

SELECT * FROM Prezenty_2020;
+----+--------------------+--------------------+--------+-------------------+
| id | Imię_obdarowanego  | Pomysł_na_prezent  | Cena   | Miejsce_zakupu    |
+----+--------------------+--------------------+--------+-------------------+
|  1 | Jim                | Krawat             | 150.00 | Galeria Krakowska |
|  2 | Joe                | Portfel            | 200.00 | Bonarka           |
|  3 | Mike               | Skarpety           |  50.00 | Kazimierz         |
|  4 | Pole               | Zegarek            | 500.00 | Serenada          |
|  5 | Alice              | Voucher SPA        | 300.00 | Online Shope      |
+----+--------------------+--------------------+--------+-------------------+

UPDATE Prezenty_2020 SET Pomysł_na_prezent = 'Rower' WHERE id=3;

UPDATE Prezenty_2020 SET Cena = 900 WHERE id=3;

SELECT * FROM Prezenty_2020 WHERE id=3;
+----+--------------------+--------------------+--------+----------------+
| id | Imię_obdarowanego  | Pomysł_na_prezent  | Cena   | Miejsce_zakupu |
+----+--------------------+--------------------+--------+----------------+
|  3 | Mike               | Rower              | 900.00 | Kazimierz      |
+----+--------------------+--------------------+--------+----------------+

DELETE FROM Prezenty_2020 WHERE id=1;

SELECT * FROM Prezenty_2020;
+----+--------------------+--------------------+--------+----------------+
| id | Imię_obdarowanego  | Pomysł_na_prezent  | Cena   | Miejsce_zakupu |
+----+--------------------+--------------------+--------+----------------+
|  2 | Joe                | Portfel            | 200.00 | Bonarka        |
|  3 | Mike               | Rower              | 900.00 | Kazimierz      |
|  4 | Pole               | Zegarek            | 500.00 | Serenada       |
|  5 | Alice              | Voucher SPA        | 300.00 | Online Shope   |
+----+--------------------+--------------------+--------+----------------+

ALTER TABLE Prezenty_2020 DROP Miejsce_zakupu;

SELECT Imię_obdarowanego FROM Prezenty_2020 WHERE id>=3 and id<=5;

+--------------------+
| Imię_obdarowanego  |
+--------------------+
| Mike               |
| Pole               |
| Alice              |
+--------------------+

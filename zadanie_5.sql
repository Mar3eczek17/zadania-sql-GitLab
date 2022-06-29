CREATE DATABASE Lista_Pracowników;

USE Lista_Pracowników;

CREATE TABLE Pracownicy (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, Imię VARCHAR(20), Nazwisko VARCHAR(30), Stanowisko VARCHAR(50), Dział
VARCHAR(30));

INSERT INTO Pracownicy (Imię, Nazwisko, Stanowisko, Dział) values ('Olek', 'Banucha', 'Kierownik', 'R&D');

INSERT INTO Pracownicy (Imię, Nazwisko, Stanowisko, Dział) values
('Radek', 'Wojan', 'Zastępca kierownika', 'R&D');

INSERT INTO Pracownicy (Imię, Nazwisko, Stanowisko, Dział) values
('Mateusz', 'Kosa', 'Stress Engineer', 'R&D');

INSERT INTO Pracownicy (Imię, Nazwisko, Stanowisko, Dział) values
('Maciek', 'Prasa', 'Designe Engineer', 'R&D');

SELECT * FROM Pracownicy;
+----+---------+----------+----------------------+--------+
| id | Imię    | Nazwisko | Stanowisko           | Dział  |
+----+---------+----------+----------------------+--------+
|  1 | Olek    | Banucha  | Kierownik            | R&D    |
|  2 | Radek   | Wojan    | Zastępca kierownika  | R&D    |
|  3 | Mateusz | Kosa     | Stress Engineer      | R&D    |
|  4 | Maciek  | Prasa    | Designe Engineer     | R&D    |
+----+---------+----------+----------------------+--------+

ALTER TABLE Pracownicy ADD Data_zatrudnienia DATE;

INSERT INTO Pracownicy (Imię, Nazwisko, Stanowisko, Dział, Data_zatrudnienia) values ('Krzysztof', 'Ibin', 'Designe Engineer', 'R&D', '2016-06-20');

SELECT * FROM Pracownicy;
+----+-----------+----------+----------------------+--------+-------------------+
| id | Imię      | Nazwisko | Stanowisko           | Dział  | Data_zatrudnienia |
+----+-----------+----------+----------------------+--------+-------------------+
|  1 | Olek      | Banucha  | Kierownik            | R&D    | NULL              |
|  2 | Radek     | Wojan    | Zastępca kierownika  | R&D    | NULL              |
|  3 | Mateusz   | Kosa     | Stress Engineer      | R&D    | NULL              |
|  4 | Maciek    | Prasa    | Designe Engineer     | R&D    | NULL              |
|  5 | Krzysztof | Ibin     | Designe Engineer     | R&D    | 2016-06-20        |
+----+-----------+----------+----------------------+--------+-------------------+

UPDATE Pracownicy SET Data_zatrudnienia = '2010-05-10' WHERE id=1; 

UPDATE Pracownicy SET Data_zatrudnienia = '2011-04-01' WHERE id=2;

UPDATE Pracownicy SET Data_zatrudnienia = '2011-03-01' WHERE id=3; 

UPDATE Pracownicy SET Data_zatrudnienia = '2010-03-01' WHERE id=4; 

SELECT * FROM Pracownicy;
+----+-----------+----------+----------------------+--------+-------------------+
| id | Imię      | Nazwisko | Stanowisko           | Dział  | Data_zatrudnienia |
+----+-----------+----------+----------------------+--------+-------------------+
|  1 | Olek      | Banucha  | Kierownik            | R&D    | 2010-05-10        |
|  2 | Radek     | Wojan    | Zastępca kierownika  | R&D    | 2011-04-01        |
|  3 | Mateusz   | Kosa     | Stress Engineer      | R&D    | 2011-03-01        |
|  4 | Maciek    | Prasa    | Designe Engineer     | R&D    | 2010-03-01        |
|  5 | Krzysztof | Ibin     | Designe Engineer     | R&D    | 2016-06-20        |
+----+-----------+----------+----------------------+--------+-------------------+

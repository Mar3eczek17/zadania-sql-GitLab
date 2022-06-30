mysql> CREATE DATABASE Moje_zainteresowania;

mysql> USE Moje_zainteresowania;

mysql> CREATE TABLE Zainteresowania (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, Nazwa VARCHAR(20) UNIQUE, Opis VARCHAR(50) UNIQUE, Data_realizacji DATE UNIQUE);

mysql> INSERT INTO Zainteresowania (Nazwa, Opis) values ('Tenis', 'Tenis ziemny, tenis stołowy');

mysql> INSERT INTO Zainteresowania (Nazwa, Opis) values ('Piłka', 'Piłka nożna, piłka siatkowa');

mysql> INSERT INTO Zainteresowania (Nazwa, Opis) values ('Pływanie', 'Głównie basen kryty');

mysql> INSERT INTO Zainteresowania (Nazwa, Opis) values ('Jazda', 'Rower, samochód');

mysql> INSERT INTO Zainteresowania (Nazwa, Opis) values ('Skakanie', 'Na spadochronie');

mysql> SELECT * FROM Zainteresowania;
+----+-----------+--------------------------------+-----------------+
| id | Nazwa     | Opis                           | Data_realizacji |
+----+-----------+--------------------------------+-----------------+
|  1 | Tenis     | Tenis ziemny, tenis stołowy    | NULL            |
|  2 | Piłka     | Piłka nożna, piłka siatkowa    | NULL            |
|  3 | Pływanie  | Głównie basen kryty            | NULL            |
|  4 | Jazda     | Rower, samochód                | NULL            |
|  5 | Skakanie  | Na spadochronie                | NULL            |
+----+-----------+--------------------------------+-----------------+

mysql> INSERT INTO Zainteresowania (Nazwa, Opis, Data_realizacji) values
('Film', 'Komedia, horror, dramat', '2020-02-01');

mysql> UPDATE Zainteresowania SET Data_realizacji = '2010-02-10' WHERE id=4;

mysql> SELECT * FROM Zainteresowania;
+----+-----------+--------------------------------+-----------------+
| id | Nazwa     | Opis                           | Data_realizacji |
+----+-----------+--------------------------------+-----------------+
|  1 | Tenis     | Tenis ziemny, tenis stołowy    | NULL            |
|  2 | Piłka     | Piłka nożna, piłka siatkowa    | NULL            |
|  3 | Pływanie  | Głównie basen kryty            | NULL            |
|  4 | Jazda     | Rower, samochód                | 2010-02-10      |
|  5 | Skakanie  | Na spadochronie                | NULL            |
|  6 | Film      | Komedia, horror, dramat        | 2020-02-01      |
+----+-----------+--------------------------------+-----------------+

mysql> DELETE FROM Zainteresowania WHERE id=1;

mysql> DELETE FROM Zainteresowania WHERE id=2;

mysql> DELETE FROM Zainteresowania WHERE id=3;

mysql> DELETE FROM Zainteresowania WHERE id=5;

mysql> SELECT * FROM Zainteresowania;
+----+-------+-------------------------+-----------------+
| id | Nazwa | Opis                    | Data_realizacji |
+----+-------+-------------------------+-----------------+
|  4 | Jazda | Rower, samochód         | 2010-02-10      |
|  6 | Film  | Komedia, horror, dramat | 2020-02-01      |
+----+-------+-------------------------+-----------------+

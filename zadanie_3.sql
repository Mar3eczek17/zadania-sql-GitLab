CREATE DATABASE School_Coding;

create table Mentors (id int not null primary key auto_increment, Imię varchar(30), Nazwisko varchar(30), Specjalizacja varchar(50), Data_zatrudnienia date not null, Data_zwolnienia date not null);

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Marek', 'Grzesiak', 'IT', '2014-11-17', '2015-02-28');

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Jan', 'Miś', 'R&D', '2013-11-17', '2017-02-28');

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Karl', 'Boy', 'DS', '2013-11-17', '2016-02-28');

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Anthony', 'Bill', 'ML', '2013-10-10', '2016-05-20');

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Robin', 'Marvic', 'Software Developer', '2
013-09-01', '2019-05-20');

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Olaf', 'Marvic', 'Maintanance Engineer', '
2013-09-01', '2019-05-20');

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Wolf', 'Mouse', 'Mechanical Engineer', '2013-09-01', '2019-05-20');

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Sara', 'Kettel', 'Sale Engineer', '2013-09
-01', '2019-05-20');

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Ola', 'Miłosz', 'IT Manager', '2013-09-01'
, '2019-05-20');

insert into Mentors (Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) values ('Almek', 'Yurstevert', 'HR Manager', '2010-08-01', '2022-05-20');

update Mentors set Nazwisko = 'Moor' where id=5;

SELECT * FROM Mentors where id=5;
+----+-------+----------+--------------------+-------------------+-----------------+
| id | Imię  | Nazwisko | Specjalizacja      | Data_zatrudnienia | Data_zwolnienia |
+----+-------+----------+--------------------+-------------------+-----------------+
|  5 | Robin | Moor     | Software Developer | 2013-09-01        | 2019-05-20      |
+----+-------+----------+--------------------+-------------------+-----------------+

alter table Mentors add Wynagrodzenie decimal(11,2) after Data_zwolnienia;

update Mentors set Wynagrodzenie = 1000 where id=1;

update Mentors set Wynagrodzenie = 1000 where id=2;

update Mentors set Wynagrodzenie = 1000 where id=3;

SELECT * FROM Mentors where id>0 and id<=3;
+----+-------+----------+---------------+-------------------+-----------------+---------------+
| id | Imię  | Nazwisko | Specjalizacja | Data_zatrudnienia | Data_zwolnienia | Wynagrodzenie |
+----+-------+----------+---------------+-------------------+-----------------+---------------+
|  1 | Marek | Grzesiak | IT            | 2014-11-17        | 2015-02-28      |       1000.00 |
|  2 | Jan   | Miś      | R&D           | 2013-11-17        | 2017-02-28      |       1000.00 |
|  3 | Karl  | Boy      | DS            | 2013-11-17        | 2016-02-28      |       1000.00 |
+----+-------+----------+---------------+-------------------+-----------------+---------------+

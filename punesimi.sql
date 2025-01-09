CREATE DATABASE Punesimi;
USE Punesimi;

CREATE TABLE Puna (
   	PID integer,
   	Emri_Pozites varchar(100),
   	Kompania varchar(50),
   	Primary Key (PID)
);

CREATE TABLE Punetori (
   	PUID integer,
   	Emri varchar(50),
   	Mbiemri varchar(50),
   	Ditelindja date,
   	Gjinia char(1),
   	Qyteti varchar(50),
   	Paga integer,
   	PID integer,
   	Primary Key (PUID),
   	FOREIGN KEY (PID) REFERENCES Puna (PID)
);

CREATE TABLE Projekti (
   	PRID integer,
   	Emri_P varchar(100),
   	Afati date,
   	PID integer,
   	Primary Key (PRID),
   	FOREIGN KEY (PID) REFERENCES Puna (PID)
);

CREATE TABLE PunonNe (
   	PUID integer,
   	PRID integer,
   	OraPunuar integer,
   	PRIMARY KEY (PUID, PRID),
   	FOREIGN KEY (PUID) REFERENCES Punetori (PUID),
   	FOREIGN KEY (PRID) REFERENCES Projekti (PRID)
);

INSERT INTO Puna (PID, Emri_Pozites, Kompania) VALUES
(1, 'Zhvillues i Softuerit', 'TechCorp'),
(2, 'Menaxher i Projektit', 'BusinessInc'),
(3, 'Analist i të Dhënave', 'DataSolutions'),
(4, 'Dizajnues UX/UI', 'CreativeAgency'),
(5, 'Inxhinier i Rrjetave', 'NetWorks'),
(6, 'Administrator i Sistemit', 'IT Services'),
(7, 'SPejëialist Marketingu', 'MarketMinds'),
(8, 'Përfaqësues i Shitjeve', 'SalesCo'),
(9, 'Analist Biznesi', 'ConsultingGroup'),
(10, 'Menaxher i Burimeve Njerëzore', 'PeopleFirst');

INSERT INTO Punetori (PUID, Emri, Mbiemri, Ditelindja, Gjinia, Qyteti, Paga, PID) VALUES
(1, 'Egzon', 'Gashi', '1990-05-15', 'M', 'Prishtinë', 50000, 1),
(2, 'Agnesa', 'Sylaj', '1985-08-20', 'F', 'Tiranë', 60000, 2),
(3, 'Melos', 'Kastrioti', '1992-11-10', 'M', 'Pejë', 45000, 3),
(4, 'Ana', 'Thaçi', '1988-03-25', 'F', 'Ferizaj', 55000, 4),
(5, 'Drilon', 'Berisha', '1980-07-30', 'M', 'Gjakovë', 62000, 5),
(6, 'Sidorela', 'Mahaj', '1995-01-15', 'F', 'Mitrovicë', 47000, 6),
(7, 'Leart', 'Selimi', '1983-06-22', 'M', 'Pejë', 48000, 7),
(8, 'Olsa', 'Kurtaj', '1991-09-05', 'F', 'Vushtrri', 51000, 8),
(9, 'Liburn', 'Aliu', '1994-12-11', 'M', 'Shtime', 53000, 9),
(10, 'Armend', 'Gjokaj', '1996-04-01', 'F', 'Obiliq', 54000, 10);

INSERT INTO Projekti (PRID, Emri_P, Afati, PID) VALUES
(1, 'Ridizajnim i Uebfaqes', '2024-12-31', 1),
(2, 'Lansimi i Produktit të Ri', '2024-11-15', 2),
(3, 'Migrim i të Dhënave', '2024-10-01', 3),
(4, 'Zhvillim i Aplikacionit', '2025-01-10', 1),
(5, 'Hulumtim i Tregut', '2024-09-20', 7),
(6, 'Përmirësim i Rrjetit', '2024-08-15', 5),
(7, 'Futja e Punënjosve', '2024-07-05', 10),
(8, 'Strategjia e Shitjes', '2024-10-30', 8),
(9, 'Mirëmbajtja e Sistemit', '2024-09-25', 6),
(10, 'Testim i Përvojës së Përdoruesit', '2024-11-01', 4);

INSERT INTO PunonNe (PUID, PRID, OraPunuar) VALUES
(1, 1, 20),
(2, 2, 40),
(3, 3, 35),
(4, 4, 30),
(5, 5, 25),
(6, 6, 15),
(7, 7, 10),
(8, 8, 50),
(9, 9, 30),
(10, 10, 40),
(1, 4, 15),
(2, 1, 25),
(3, 2, 20),
(4, 5, 20);

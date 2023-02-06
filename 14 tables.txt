USE Cliniñ23
CREATE TABLE Zapis(
  ID int NOT NULL,
  Date_obrazch date,
  Pacient_Number int,
  Medic int,
  pacient int,
  CONSTRAINT PK_Zapis PRIMARY KEY(ID),
)
CREATE TABLE Pacient(
  ID int NOT NULL,
  Name nvarchar(30),
  Surname nvarchar(30),
  Lastname nvarchar(30),
  Birthday date,
  Residence nvarchar(50),
  CONSTRAINT PK_Pacient PRIMARY KEY(ID),
)
CREATE TABLE Doctor(
  ID int NOT NULL,
  Name nvarchar(30),
  Surname nvarchar(30),
  CONSTRAINT PK_Doctor PRIMARY KEY(ID),
)
CREATE TABLE Diagnoz(
  ID int NOT NULL,
  Name nvarchar(30),
  Cost int,
  CONSTRAINT PK_Diagnoz PRIMARY KEY(ID),
)
go
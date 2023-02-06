USE Cliniс23

INSERT Pacient (Name,Surname,Lastname,Birthday,Residence) VALUES
(N'Иван',N'Иванов',N'Иванович', '01.01.2000', N'Ул. Текстильщиков дом 5 кв 13'),
(N'Петр',N'Петров',N'Петрович', '01.01.2005', N'Ул. Текстильщиков дом 5 кв 13'),
(N'Борис',N'Борисов',N'Борисович', '01.01.2007', N'Ул. Текстильщиков дом 5 кв 13')

INSERT Doctor (Name,Surname) VALUES
(N'Роберт',N'Земеки'),
(N'Фрэнк',N'Дарабонт')

INSERT Diagnoz (Name,Cost) VALUES
(N'Зубная боль',2000),
(N'Пломба',5000),
(N'Рентген',300)

ALTER TABLE Zapis ADD CONSTRAINT PK_Doctor_ID
PRIMARY KEY(medic) REFERENCES Doctor(ID)

ALTER TABLE Zapis ADD CONSTRAINT PK_Pacient_ID
PRIMARY KEY(pacient) REFERENCES Pacient(ID)

INSERT Zapis(Medic)
SELECT DISTINCT ID
FROM Doctor
WHERE ID IS NOT NULL

INSERT Zapis(pacient)
SELECT DISTINCT ID
FROM Pacient
WHERE ID IS NOT NULL
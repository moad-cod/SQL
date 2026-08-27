CREATE DATABASE CentreFormation;
GO

USE CentreFormation;
GO

CREATE TABLE Departement (
    DepartementID INT PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL
);

CREATE TABLE Employe (
    EmployeID INT PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Age INT,
    Salaire DECIMAL(10,2),
    DateEmbauche DATE,
    DepartementID INT NULL,
    FOREIGN KEY (DepartementID)
        REFERENCES Departement(DepartementID)
);

CREATE TABLE Formation (
    FormationID INT PRIMARY KEY,
    Titre VARCHAR(100) NOT NULL,
    Prix DECIMAL(10,2)
);

CREATE TABLE Inscription (
    EmployeID INT,
    FormationID INT,
    DateInscription DATE,
    Note DECIMAL(4,2) NULL,
    PRIMARY KEY (EmployeID, FormationID),
    FOREIGN KEY (EmployeID) REFERENCES Employe(EmployeID),
    FOREIGN KEY (FormationID) REFERENCES Formation(FormationID)
);

INSERT INTO Departement VALUES
(1, 'Informatique'),
(2, 'Finance'),
(3, 'Ressources humaines'),
(4, 'Marketing'),
(5, 'Recherche');

INSERT INTO Employe VALUES
(1, 'Ahmed', 25, 7000, '2022-01-10', 1),
(2, 'Sara', 31, 9500, '2019-05-15', 1),
(3, 'Yassine', 40, 12000, '2015-03-20', 2),
(4, 'Imane', 28, 8000, '2021-07-01', 2),
(5, 'Omar', 35, 10500, '2018-09-12', 3),
(6, 'Salma', 24, 6500, '2023-02-01', 4),
(7, 'Hamza', 45, 15000, '2010-11-25', 1),
(8, 'Nadia', 30, 9000, '2020-06-14', 3),
(9, 'Ali', 27, 7200, '2022-08-10', NULL),
(10, 'Meryem', 33, 11000, '2017-04-18', 2);

INSERT INTO Formation VALUES
(1, 'SQL Server', 1500),
(2, 'Python', 1800),
(3, 'Power BI', 1200),
(4, 'Machine Learning', 2500),
(5, 'Communication', 900);

INSERT INTO Inscription VALUES
(1, 1, '2024-01-10', 16),
(1, 2, '2024-02-15', 14),
(2, 1, '2024-01-10', 18),
(3, 3, '2024-03-01', 12),
(4, 1, '2024-01-20', 15),
(4, 3, '2024-03-01', 17),
(5, 5, '2024-04-12', NULL),
(7, 4, '2024-05-03', 19),
(8, 2, '2024-02-15', 13);
GO

SELECT 'Base créée correctement' AS resultat;
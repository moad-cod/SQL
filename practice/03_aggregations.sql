{# COUNT #}
{# COUNT ALL THE LINES IN THE OUTPUT #}
SELECT COUNT(*) AS N_Employe
FROM Employe;

-- COUNT ALL THE EMPLOYEES THAT HAS A DepartementID 
SELECT COUNT(DepartementID ) AS EmployesAvecDepartement
FROM Employe
WHERE DepartementID IS NOT null;


{# SUM #}
{# THE SUM OF VALUES IN A SPESEFIC COLUMN #}
SELECT SUM(Salaire) AS MasseSalariale
FROM Employe;

{# AVG #}
{# THE AVG OF VALUES IN A SPESEFIC COLUMN #}
SELECT AVG(Salaire) AS SalarialeMoyen
FROM Employe;

{# MAX & MIN #}
{# THE (MAX, MIN) OF VALUES IN A SPESEFIC COLUMN #}
SELECT 
	MAX(Salaire) AS SalaireMaximum,
	MIN(Salaire) AS SalaireMinimum
FROM Employe;

{# AGGREGATION WITH WHERE #}
SELECT AVG(Salaire) AS MoyenneDepartement1
FROM Employe
WHERE DepartementID = 1;

{# EXERCICES #}

Exercice 21:
SELECT COUNT(*)
FROM Employe;

Exercice 22:
SELECT COUNT(*)
FROM Employe
WHERE DepartementID IS NOT null;

Exercice 23:
SELECT COUNT(DISTINCT DepartementID) 
FROM Employe;

Exercice 24:
SELECT SUM(Salaire) 
FROM Employe;

Exercice 25:
SELECT AVG(Salaire) 
FROM Employe;

Exercice 26:
SELECT 
	MIN(Salaire),
	MAX(Salaire)
FROM Employe;

Exercice 27:
SELECT AVG(Age)
FROM Employe;

Exercice 28:
SELECT COUNT(*)
FROM Employe
WHERE DepartementID = 1;

Exercice 29:
SELECT SUM(Salaire)
FROM Employe
WHERE DepartementID = 2;

Exercice 30:
SELECT 
	AVG(Salaire) AS SalaireMoyen,
	MIN(Salaire) AS SalaireMinimum,
	MAX(Salaire) AS SalaireMaximum
FROM Employe
WHERE Age > 30;
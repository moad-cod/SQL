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
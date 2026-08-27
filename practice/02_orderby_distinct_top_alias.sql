{# ORDER BY #}

{# SORTING INCREASE #}
SELECT *
FROM Employe
ORDER BY Age ASC;

{# SORTING DECREASE #}
SELECT *
FROM Employe
ORDER BY Age DESC;

{# SORTING MULIPLE #}
SELECT *
FROM Employe
ORDER BY DepartementID ASC, Salaire DESC;

{# DISTINCT #}
{# ELIMINATE REPETED VALUES #}

SELECT DISTINCT DepartementID
FROM Employe;

{# TOP #}
{# BOUND THE NUMBER OF LINES #}
SELECT TOP 2 *
FROM Employe
ORDER BY Age DESC; {# OUTPUT: THE OLDEST TWO MEMEBERS #}

{# Alias #}
{# CHANGE TEMPRERY THE NAME OF THE COLUMNS #}
SELECT 
    Nom AS NomEmploye,
    Salaire AS SalaireMensuel
FROM Employe;

{# EXERCICES #}

Exercice 11:
SELECT *
FROM Employe
ORDER BY Salaire ASC;

Exercice 12:
SELECT *
FROM Employe
ORDER BY Salaire DESC;

Exercice 13:
SELECT Nom, Age
FROM Employe
ORDER BY Age DESC;

Exercice 14:
SELECT DISTINCT DepartementID
FROM Employe;

Exercice 15:
SELECT DISTINCT DepartementID 
FROM Employe
WHERE DepartementID IS NOT null
ORDER BY DepartementID ASC;

Exercice 16:
SELECT TOP 3 Nom, Salaire
FROM Employe
ORDER BY Salaire DESC;

Exercice 17:
SELECT TOP 1 Nom
FROM Employe
ORDER BY AGE ASC;

Exercice 18:
SELECT 
	Nom AS NomEmploye,
	Salaire AS SalaireMensuel
FROM Employe
ORDER BY SalaireMiensuel DESC;

Exercice 19:
SELECT Nom
FROM Employe
WHERE DepartementID = 2
ORDER BY Age DESC;

Exercice 20:
SELECT *
FROM Employe
WHERE Salaire BETWEEN 7000 AND 11000
ORDER BY Salaire DESC;
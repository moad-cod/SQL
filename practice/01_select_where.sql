-- CANONICAL FORMAT FOR SELECT
--SELECT columns
--FROM table;

SELECT *
FROM Employe;

SELECT Nom, Age, Salaire
From Employe;

--	CANONICAL FORMAT FOR WHERE 
--SELECT columns
--FROM table
--WHERE conditions;
--	OPERATIONS
--=    égal
--<>   différent
-->    supérieur
--<    inférieur
-->=   supérieur ou égal
--<=   inférieur ou égal

SELECT Nom, Age
FROM Employe
WHERE Age > 30;

SELECT Nom, Age
FROM Employe
WHERE Age <> 45;

{# EXERCICES #}
Ex 1: 

SELECT *
FROM Employe;

Ex 2:

SELECT Nom, Age
FROM Employe;

EX 3:

SELECT *
FROM Employe
WHERE Age > 30;

EX 4:

SELECT Nom, Salaire
FROM Employe
WHERE Salaire >= 9000;

EX 5:

SELECT *
FROM Employe
WHERE DepartementID = 1;

Ex 6:

SELECT *
FROM Employe
WHERE Age BETWEEN 25 AND 35; {# 25 AND 35 ARE INCLUDED #}

Ex 7:

SELECT *
FROM Employe
WHERE DepartementID IN (1, 2);;

Ex 8:

SELECT *
FROM Employe
WHERE DepartementID IS NULL;

Ex 9:

SELECT *
FROM Employe
WHERE DateEmbauche >= '2020-01-01';

Ex 10:

SELECT *
FROM Employe
WHERE Nom LIKE 'A%';

{#
    'A%'   commence par A
    '%a'   termine par a
    '%a%'  contient a
    'A_'   A suivi d’exactement un caractère 
#}
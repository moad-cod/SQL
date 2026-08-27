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
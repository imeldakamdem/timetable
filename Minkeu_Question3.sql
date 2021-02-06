CREATE VIEW emploiTemps 
AS SELECT DISTINCT C.codeCours,
T.jourCoursDate,T. TRANCHE,C.VOLUMEH FROM Cours C 
JOIN Typehoraire T ON C.codeCours= T.crsCodeCours 
JOIN Jourcours J ON J.dateJourCours=T.jourCoursDate 
JOIN Coursdeclasse cls ON T.crsCodeCours=cls.crsCodeCours 
JOIN Classe Cl ON cl.specialiteNomSpec=cls.classSpecialiteNomspec 
WHERE T.jourCoursDate IN ('lundi','mardi','mercredi','jeudi','vendredi','samedi') 
AND cls.classNiveauidNiveau=001; 
 
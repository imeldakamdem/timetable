# creation de la vue
CREATE VIEW emploidetemps AS
SELECT DISTINCT C.codeCours, T.jourCoursDate,T. TRANCHE,C.VOLUMEH FROM Cours C
JOIN Typehoraire T
ON C.codeCours= T.crsCodeCours
JOIN Jourcours J
ON J.dateJourCours=T.jourCoursDate
JOIN Coursdeclasse cls
ON T.crsCodeCours=cls.crsCodeCours
JOIN Classe Cl
ON cl.specialiteNomSpec=cls.classSpecialiteNomspec
WHERE T.jourCoursDate
IN ('lundi','mardi','mercredi','jeudi','vendredi','samedi') AND cls.classNiveauidNiveau=001;
alter table etudiant add password varchar(50);
update etudiant set password =&password(matricule) where matricule = &matricule;

4. alter table enseignants add password varchar(50);
update enseignants set password =&password(matricule) where matricule = &matricule;


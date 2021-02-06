alter table enseignants add password varchar(50); update enseignants 
set password =&password(matricule) where matricule = &matricule;
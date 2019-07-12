

/* 1) Afficher la liste des pays ou Simplon est présent */

=  select pays.nom from pays inner join fabrique on pays.id = fabrique.id_pays;

+-----------+
| nom       |
+-----------+
| Sénégal   |
| Maroc     |
| Sénégal   |
+-----------+

/* 2) Afficher la liste des fabriques de la ville de Dakar  */

= select fabrique.nom from fabrique where ville = 'Dakar';

+-------------------+
| nom               |
+-------------------+
| Simplon.AUF@Dakar |
| Sonatel Academy   |
+-------------------+

/* 3) Afficher la liste des pays qui ont au moins 2 fabriques */     

= select pays.nom from pays inner join fabrique on pays.id = fabrique.id_pays having count(pays.id = fabrique.id_pays) >= 2;

+-----------+
| nom       |
+-----------+
| Sénégal   |
+-----------+

/* 4) Afficher le nombre d'apprenants par fabrique */



/* 5) Afficher la liste des référentiels */



/* 6) Afficher la liste des apprenants qui ont au moins un contrat */

= select nom, prenom from apprenant inner join contrat on apprenant.id = contrat.id_apprenant and contrat.type_contrat != '';

+------+--------+
| nom  | prenom |
+------+--------+
| Laye | Modou  |
| Diop | Fatou  |
+------+--------+

/* 7) Ecrire l'ordre SQL qui permet d'ajouter un nouveau champs ouvert de type booléen à la table cohorte*/

= alter table cohorte add ouvert boolean;

+------------+------------+------+-----+---------+----------------+
| Field      | Type       | Null | Key | Default | Extra          |
+------------+------------+------+-----+---------+----------------+
| id         | int(11)    | NO   | PRI | NULL    | auto_increment |
| date_debut | date       | NO   |     | NULL    |                |
| date_fin   | date       | NO   |     | NULL    |                |
| ouvert     | tinyint(1) | YES  |     | NULL    |                |
+------------+------------+------+-----+---------+----------------+


/* 8) Modifier le type de genre sexe, mettre char 1 au lieu de booléen */

= alter table apprenant change sexe sexe char(1) not null;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| nom            | varchar(45) | NO   |     | NULL    |                |
| prenom         | varchar(45) | NO   |     | NULL    |                |
| statut         | varchar(45) | NO   |     | NULL    |                |
| date_naissance | date        | NO   |     | NULL    |                |
| sexe           | char(1)     | NO   |     | NULL    |                |
| email          | varchar(45) | NO   |     | NULL    |                |
| tel            | int(11)     | NO   |     | NULL    |                |
| id_referentiel | int(11)     | NO   | MUL | NULL    |                |
| id_cohorte     | int(11)     | NO   | MUL | NULL    |                |
| id_fabrique    | int(11)     | NO   | MUL | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

























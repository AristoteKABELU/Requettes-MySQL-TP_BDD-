/*__________Recherche un etudiant_________*/

SELECT CONCAT(`nom_etudiant`," ", `post_nom_etudiant`," ",`prenom_etudiant`) as `Nom complet`,
 CONCAT(`nom_promotion`," ", `nom_filiere`) as `Promotion`,
        `date_naissance_etudiant`, `biographie_etudiant`
FROM `t_etudiant e` 
LEFT JOIN `t_promotion` p on e.fk_promotion_etudiant = p.id_promotion
LEFT JOIN `t_filiere` f on p.fk_filiere_promotion = f.id_filiere
WHERE (`nom_etudiant` = '') AND ('prenom_etudiant' = '') AND ('post_nom_etudiant' = '') ;



/*_____________Modifier un etudiant___________*/

UPDATE `t_etudiant` 
SET `nom_etudiant` = 'BWATUNDA', `post_nom_etudiant` = 'MASANDA', `prenom_etudiant` = 'FRAINE', `fk_promotion_etudiant` = 9
WHERE `nom_etudiant` = 'BWATUNDA' AND (`post_nom_etudiant` = 'MASANDA') AND (`prenom_etudiant` = 'FRANCK');


/*______________Suprimer un etuidiant___________*/

DELETE FROM `t_etudiant`
WHERE `nom_etudiant` = 'KABEMBA' AND (`post_nom_etudiant`= 'KABELU') AND (`prenom_etudiant` = 'ARISTOTE');



/*_____________Afficher la liste( a perfectionner)___________________*/
 
--Trie croissant--

SELECT DISTINCT CONCAT(`nom_etudiant`," ", `post_nom_etudiant`," ",`prenom_etudiant`) as `Nom complet`,
 CONCAT(`nom_promotion`," ", `nom_filiere`) as `Promotion`,
        `date_naissance_etudiant`, `biographie_etudiant`
FROM `t_etudiant` e
LEFT JOIN `t_promotion` p on e.fk_promotion_etudiant = p.id_promotion
LEFT JOIN `t_filiere` f on p.fk_filiere_promotion = f.id_filiere
ORDER BY `nom_etudiant` ASC;

--Trie decroissant--

SELECT CONCAT(`nom_etudiant`," ", `post_nom_etudiant`," ",`prenom_etudiant`) as `Nom complet`,
 CONCAT(`nom_promotion`," ", `nom_filiere`) as `Promotion`,
        `date_naissance_etudiant`, `biographie_etudiant`
FROM `t_etudiant` e
LEFT JOIN `t_promotion` p on e.fk_promotion_etudiant = p.id_promotion
LEFT JOIN `t_filiere` f on p.fk_filiere_promotion = f.id_filiere
ORDER BY `nom_etudiant` DESC;

--GROUPE BY(date_enregistrement)--
SELECT COUNT(*) AS `nombre_etudiant`, `date_naissance_etudiant`
FROM `t_etudiant`
GROUP BY `date_naissance_etudiant`

--GROUPE BY(filiere)--
SELECT COUNT(*) AS `nombre_etudiant`, `nom_filiere`
FROM `t_etudiant` e
LEFT JOIN `t_promotion` p on e.fk_promotion_etudiant = p.id_promotion
LEFT JOIN `t_filiere` f on p.fk_filiere_promotion = f.id_filiere
GROUP BY `nom_filiere`;

--GROUPE BY(promotion)--
SELECT COUNT(*) AS `nombre_etudiant` ,`nom_promotion`
FROM `t_etudiant` e
LEFT JOIN `t_promotion` p on e.fk_promotion_etudiant = p.id_promotion
LEFT JOIN `t_filiere` f on p.fk_filiere_promotion = f.id_filiere
GROUP BY `nom_promotion`;

--Compte--
SELECT COUNT(*) AS nombre_etudiant FROM `t_etudiant`;





/*______________________________ A VERIFIER________________________________________________

SELECT CONCAT(`nom_etudiant`," ", `post_nom_etudiant`," ",`prenom_etudiant`), CONCAT(`nom_promotion`, `nom_filiere`),
        `date_naissance_etudiant`, `biographie_etudiant`
FROM `t_etudiant`
WHERE (t_etudiant.fk_promotion_etudiant = t_promotion.id_promotion 
AND t_promotion.fk_filiere_promotion = t_filiere.id_filiere);
AND `nom_etudiant` = '';


DELETE
FROM `t_etudiant` e 
INNER JOIN `t_promotion` p on e.fk_promotion_etudiant = p.id_promotion
INNER JOIN `t_filiere` f on p.fk_filiere_promotion = f.id_filiere
WHERE `nom_etudiant` ='';
*/
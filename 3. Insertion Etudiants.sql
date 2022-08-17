/*
CES CLES NOUS PERMETTENT DE CONNAITRE DANS QUELLE FILIERE SE TROUVE UN ETUIDIANT

fk_promotion_etudiant : 1   (PREPA)
fk_promotion_etudiant : 2   (L1)

fk_promotion_etudiant : 3   (L2-TLC)
fk_promotion_etudiant : 4   (L2-AS)
fk_promotion_etudiant : 5   (L2-GL)
fk_promotion_etudiant : 6   (L2-MSI)
fk_promotion_etudiant : 7   (L2-DSG)

fk_promotion_etudiant : 8   (L3-TLC)
fk_promotion_etudiant : 9   (L3-AS)
fk_promotion_etudiant : 10  (L3-GL)
fk_promotion_etudiant : 11  (L3-MSI)
fk_promotion_etudiant : 12  (L3-DSG)
*/


INSERT INTO `t_etudiant`
(`nom_etudiant`, `post_nom_etudiant`, `prenom_etudiant`, `biographie_etudiant`,
 `date_naissance_etudiant`, `date_enregistrement`, `fk_promotion_etudiant`)
VALUES
(UPPER(''), UPPER(''), UPPER(''), lower(''), '0000-00-00', now(), );
(UPPER(''), UPPER(''), UPPER(''), lower(''), '0000-00-00', now(), ),
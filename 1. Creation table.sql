CREATE TABLE IF NOT EXISTS `t_filiere`(
    `id_filiere` SMALLINT AUTO_INCREMENT,
    `nom_filiere` VARCHAR(30),
    `description` TEXT,
    `date_creation` DATE,
    PRIMARY KEY(`id_filiere`)
);

CREATE TABLE IF NOT EXISTS `t_promotion`(
    `id_promotion` SMALLINT AUTO_INCREMENT,
    `nom_promotion` VARCHAR(5),
    `fk_filiere_promotion`SMALLINT, 
    PRIMARY KEY(`id_promotion`),
    FOREIGN KEY(`fk_filiere_promotion`) REFERENCES t_filiere(`id_filiere`)
);

CREATE TABLE IF NOT EXISTS `t_etudiant`(
    `id_etudiant` SMALLINT AUTO_INCREMENT,
    `nom_etudiant` VARCHAR(30),
    `post_nom_etudiant` VARCHAR(30),
    `prenom_etudiant` VARCHAR(30),
    `biographie_etudiant` TEXT,
    `date_naissance_etudiant` DATE,
    `date_enregistrement` DATE,
    `fk_promotion_etudiant`SMALLINT, 
    PRIMARY KEY(`id_etudiant`),
    FOREIGN KEY(`fk_promotion_etudiant`) REFERENCES t_promotion(`id_promotion`)
);


/*
desc `t_etudiant`; desc `t_promotion`; desc `t_filiere`;
drop TABLE `t_etudiant`, `t_promotion`, `t_filiere`;

*/
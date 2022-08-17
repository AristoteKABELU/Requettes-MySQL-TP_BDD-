
/*---------------------------------INSERTION INITIALE -------------------------------------------*/

INSERT INTO `t_filiere`(`nom_filiere`, `description`, `date_creation`)
VALUES
('TLC', 'Reseau: Telecommunication ', datetime()),
('AS', 'Reseau: Administration Systeme', datetime()),
('GL', 'Genie Logiciel', datetime()),
('MSI', 'Management des Systemes Informatique', datetime()),
('DSG', 'Design', datetime());

/*-------------------------------------------------------------------------*/

INSERT INTO `t_promotion`(`nom_promotion`, `fk_filiere_promotion`)
VALUES
('PREPA', NULL),
('L1', NULL ),
('L2', 1),
('L2', 2),
('L2', 3),
('L2', 4),
('L2', 5),
('L3', 1),
('L3', 2),
('L3', 3),
('L3', 4),
('L3', 5);




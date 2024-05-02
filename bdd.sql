CREATE DATABASE IF NOT EXISTS blog; 

use blog; 

CREATE TABLE IF NOT EXISTS t_billet (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BIL_ID int(11),
    BIL_DATE datetime,
    BIL_TITRE varchar(100) 
    BIL_CONTENUE varchar(400) 
);

CREATE TABLE IF NOT EXISTS t_commentaire (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    COM_ID int(11),
    COM_DATE datetime, 
    COM_AUTEUR varchar(100), 
    COM_CONTENU varchar(200) 
    FOREIGN KEY (com_id) REFERENCES t_billet(id)

); 

INSERT INTO t_billet (BIL_ID, BIL_DATE, BIL_TITRE, BIL_CONTENU) VALUES
(1, '2024-04-30 10:00:00', 'Premier billet', 'Contenu du premier billet'),
(2, '2024-05-01 14:30:00', 'Deuxième billet', 'Contenu du deuxième billet');

-- Insérer des données dans la table t_commentaire
INSERT INTO t_commentaire (COM_ID, COM_DATE, COM_AUTEUR, COM_CONTENU) VALUES
(1, '2024-05-01 11:15:00', 'Alice', 'Premier commentaire sur le premier billet'),
(1, '2024-05-01 12:00:00', 'Bob', 'Deuxième commentaire sur le premier billet'),
(2, '2024-05-02 09:45:00', 'Charlie', 'Premier commentaire sur le deuxième billet');



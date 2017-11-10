/*Etape05*/
SELECT * FROM Utilisateurs;

/*Etape06*/
SELECT p.ID, p.Libelle, p.Description, p.Prix_achat, p.Prix_vente, p.Nombres_produit,p.Date_creation, p.Date_modification,  c.ID, c.Libelle, c.Description, c.Date_creation, c.Date_modification FROM Produits as p 
LEFT JOIN Categories as c ON
c.ID = p.ID;

/*Etape07*/
SELECT Nom, Prenom, Date_de_naissance FROM Utilisateurs ORDER BY Date_de_naissance DESC;
SELECT Nom, Prenom, Date_de_naissance FROM Utilisateurs ORDER BY Nom ASC;

/*Etape08*/
SELECT Libelle FROM Produits WHERE ID in(1,5,4,2,7);

/*Etape09*/
SELECT COUNT(ID) FROM Utilisateurs;

/*Etape10*/
SELECT SUM(Prix_vente) FROM Produits;

/*Etape11*/
SELECT * FROM Produits as p 
LEFT JOIN Categorie_Produit as r ON
r.ID_produit = p.ID
WHERE r.ID_categorie is null;
SELECT * FROM Produits as p 
LEFT JOIN Categorie_Produit as r ON
r.ID_produit = p.ID
where r.ID_categorie is not null;

/*Etape12*/
SELECT * FROM Produits WHERE ID BETWEEN 1 AND 5;

/*Etape13*/
SELECT * FROM Categories WHERE ID = 1 OR ID = 3;

/*Etape14*/
SELECT * FROM Utilisateurs WHERE ID in (2,7);

/*Etape15*/
SELECT * FROM Produits WHERE Prix_vente > 0.5;

/*Etape16*/
UPDATE Utilisateurs 
SET Nom = 'Boushaba', Prenom = 'Mohammed', Date_de_naissance = '1995-10-19', Ville = 'Rabat', Adresse = 'Av de SM Mohamed 6', Code_postale = '12012', Pays= 'Maroc', Sexe = 'Homme', Rôle = 'Ingenieur Dev', Date_creation = '2017-01-01', Date_modification = '2017-11-09'
WHERE ID = 5;

/*Etape17*/
SELECT * FROM Utilisateurs as u LEFT JOIN Rôle as r ON r.ID = u.Rôle; 

/*Etape18*/
SELECT p.Libelle, c.* FROM Categories as c
LEFT JOIN Categorie_Produit as cp ON cp.ID_categorie = c.ID
LEFT JOIN Produits as p ON cp.ID_produit = p.ID
WHERE p.ID != 0;

/*Etape19*/
SELECT p.Description, c.* FROM (Categories as c)
LEFT JOIN Categorie_Produit as cp ON cp.ID_categorie = c.ID 
LEFT JOIN Produits as p ON cp.ID_produit = p.ID
WHERE p.ID != 0;

/*Etape20*/
DELETE FROM Utilisateurs WHERE ID = 5;

/*Etape21*/
CREATE TABLE backup_produit(
ID int NOT NULL AUTO_INCREMENT,
Libelle text NOT NULL,
Description text NOT NULL,
Prix_achat varchar(10) NOT NULL,
Prix_vente varchar(10) NOT NULL,
Nombres_produit int NOT NULL,
Date_creation date NOT NULL,
Date_modification date NOT NULL,
PRIMARY KEY (ID)
);
CREATE TRIGGER ondelete AFTER DELETE ON Produits 
FOR EACH ROW
INSERT INTO backup_produit VALUES (NULL, old.Libelle, old.Description, old.Prix_achat, old.Prix_vente, old.Nombres_produit,old.Date_creation, old.Date_modification);
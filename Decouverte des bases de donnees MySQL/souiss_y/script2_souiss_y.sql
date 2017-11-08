use site_souiss_y;

/*Etape05*/
SELECT ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification FROM Utilisateurs;

/*Etape06*/
SELECT  DISTINCT Produits.ID, Produits.Libelle, Produits.Description, Produits.Prix_achat, Produits.Prix_vente, Produits.Nombres_produit,Produits.Date_creation, Produits.Date_modification, 
Categories.ID, Categories.Libelle, Categories.Description, Categories.Date_creation, Categories.Date_modification FROM Produits, Categories;

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
SELECT ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification FROM Produits WHERE ID BETWEEN 1 AND 5;

/*Etape13*/
SELECT ID, Libelle, Description, Date_creation, Date_modification FROM Categories WHERE ID = 1 OR ID = 3;

/*Etape14*/
SELECT ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification FROM Utilisateurs WHERE ID in (1,3);

/*Etape15*/
SELECT * FROM Produits WHERE Prix_vente > 0.5;

/*Etape16*/
UPDATE Utilisateurs
SET Nom = 'DAMIAN', Prenom = 'CHANVILLE', Date_de_naissance = '1991-08-11', Ville = 'Paris', Adresse = 'Paris 18eme arr', Code_postale = '75018', Pays = 'France', Sexe = 'Homme', Rôle = 'Etudiant', Date_creation = '2017-09-16', Date_modification = '2017-11-07'
WHERE ID = 5;


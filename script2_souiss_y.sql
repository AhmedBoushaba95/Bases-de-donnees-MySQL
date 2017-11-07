use site_souiss_y;

/*Etape05*/
SELECT ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification FROM Utilisateurs;

/*Etape06*/
SELECT  DISTINCT Produits.ID, Produits.Libelle, Produits.Description, Produits.Prix_achat, Produits.Prix_vente, Produits.Nombres_produit,Produits.Date_creation,
Produits.Date_modification, Categories.ID, Categories.Libelle, Categories.Description, Categories.Date_creation, Categories.Date_modification FROM Produits, Categories;

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

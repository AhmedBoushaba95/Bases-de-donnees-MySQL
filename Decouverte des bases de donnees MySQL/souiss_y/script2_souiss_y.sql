use site_souiss_y;

/*Etape05*/
SELECT ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification FROM Utilisateurs;

/*Etape06**/
SELECT  DISTINCT Produits.ID, Produits.Libelle, Produits.Description, Produits.Prix_achat, Produits.Prix_vente, Produits.Nombres_produit,Produits.Date_creation,
Produits.Date_modification, Categories.ID, Categories.Libelle, Categories.Description, Categories.Date_creation, Categories.Date_modification FROM Produits, Categories;
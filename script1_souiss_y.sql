DROP DATABASE IF EXISTS site_souiss_y;

CREATE DATABASE IF NOT EXISTS site_souiss_y CHARACTER SET 'utf8';

use site_souiss_y;

/*DROP TABLE IF EXISTS Utilisateurs, Rôle, Produits, Categories, Categorie_Produit, Produit_Utilisateur;*/

CREATE TABLE Utilisateurs(
ID int NOT NULL AUTO_INCREMENT,
Nom varchar(50) NOT NULL,
Prenom varchar(50) NOT NULL,
Date_de_naissance date NOT NULL,
Ville varchar(50) NOT NULL,
Adresse varchar(50) NOT NULL,
Code_postale int(5) NOT NULL,
Pays varchar(50) NOT NULL,
Sexe varchar(50) NOT NULL,
Rôle varchar(50) NOT NULL,
Date_creation date NOT NULL,
Date_modification date NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE Rôle(
ID int NOT NULL AUTO_INCREMENT,
Libelle text NOT NULL,
Description text NOT NULL,
Date_creation date NOT NULL,
Date_modification date NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE Produits(
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

CREATE TABLE Categories(
ID int NOT NULL AUTO_INCREMENT,
Libelle text NOT NULL,
Description text NOT NULL,
Date_creation date NOT NULL,
Date_modification date NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE Categorie_Produit(
ID_categorie int NOT NULL,
ID_produit int NOT NULL,
FOREIGN KEY (ID_categorie) REFERENCES Categories (ID),
FOREIGN KEY (ID_produit) REFERENCES Produits (ID)
);

CREATE TABLE Produit_Utilisateur(
ID_utilisateur int NOT NULL,
ID_produit int NOT NULL,
FOREIGN KEY (ID_utilisateur) REFERENCES Utilisateurs (ID),
FOREIGN KEY (ID_produit) REFERENCES Produits (ID)
);

INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Boushaba', 'Ahmed', '1995-10-10', 'Fontenay sous Bois', '59 rue andre laurent','94120','France','Homme', 'Architecte logiciel', '2017-01-01','2017-01-08');
INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Soussi', 'Yassine', '1994-01-07', 'Fontenay sous Bois', '59 rue andre laurent','94120','France','Homme', 'Architecte logiciel', '2017-02-02','2017-01-05');
INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Cristiano', 'Ronaldo', '1989-01-09', 'Madrid', 'Av. de Concha Espina', '94120','Espagne', 'Homme', 'Architecte logiciel', '2017-03-03','2017-07-01');
INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Benzema', 'Karim', '1988-09-09', 'Madrid', 'Av. de Concha Espina', '28036', 'Espagne','Homme', 'Attaquant', '2017-04-04','2017-05-05');
INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Gareth', 'Bale', '1985-08-08', 'Madrid', 'Av. de Concha Espina', '28036','Espagne', 'Homme', 'Attaquant', '2017-05-05','2017-09-09');
INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Casemiro', 'Abcd', '1991-01-01', 'Madrid', 'Av. de Concha Espina', '28036','Espagne', 'Homme', 'Deffenseur', '2017-06-06','2017-06-06');
INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Modric', 'qwerty', '1992-02-02', 'Madrid', 'Av. de Concha Espina', '28036', 'Espagne','Homme', 'Milieu', '2017-07-07','2017-04-04');
INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Asensio', 'azerty', '1994-04-04', 'Madrid', 'Av. de Concha Espina', '28036', 'Espagne','Homme', 'Milieu', '2017-08-08','2017-03-03');
INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Marcelo', 'zxcv', '1985-05-05', 'Madrid', 'Av. de Concha Espina', '28036','Espagne', 'Homme', 'Deffenseur', '2017-08-08','2017-02-02');
INSERT INTO Utilisateurs (ID, Nom, Prenom, Date_de_naissance, Ville, Adresse,Code_postale, Pays, Sexe, Rôle, Date_creation, Date_modification) VALUES (NULL, 'Varane', 'asdf', '1992-02-02', 'Madrid', 'Av. de Concha Espina', '28036', 'Espagne','Homme', 'Deffenseur', '2017-08-08','2017-01-01');


INSERT INTO Rôle (ID, Libelle, Description, Date_creation, Date_modification) VALUES (NULL, 'Boushaba Ahmed', 'ETNA Ecole des Technologies Numeriques Avancees', '2017-11-06', '2017-11-06');
INSERT INTO Rôle (ID, Libelle, Description, Date_creation, Date_modification) VALUES (NULL, 'Soussi Yassine', 'ETNA Ecole des Technologies Numeriques Avancees -  CASABLNACA', '2017-11-06', '2017-11-06');

INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone X', 'Top 1', '1000', '1200,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 8', 'Top 5', '1000', '1200,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 8 Plus', 'Top 6', '1000', '250,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 7', 'Top 7', '1000', '200,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 7 Plus', 'Top 8', '1000', '100,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 6', 'Top 9', '1000', '1200,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 6 Plus', 'Top 10', '1000', '120,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 5s', 'Top 11', '1000', '120,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 5c', 'Top 12', '1000', '200,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 5', 'Top 13', '1000', '120,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 4s', 'Top 14', '1000', '20,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'iPhone 4', 'Top 15', '1000', '20,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'Samsung s8', 'Top 3', '1000', '1200,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'Samsung S8 plus', 'Top 2', '1000', '1200,51', '150','2017-11-06', '2017-11-06');
INSERT INTO Produits (ID, Libelle, Description, Prix_achat, Prix_vente, Nombres_produit,Date_creation, Date_modification) VALUES (NULL, 'Smasung S7 edge', 'Top 4', '1000', '1200,51', '150','2017-11-06', '2017-11-06');

INSERT INTO Categories (ID, Libelle, Description, Date_creation, Date_modification) VALUES (NULL, 'Smart', 'qwertyuiop', '2017-11-06', '2017-11-06');
INSERT INTO Categories (ID, Libelle, Description, Date_creation, Date_modification) VALUES (NULL, 'Tel', 'asdfghjkl', '2017-11-06', '2017-11-06');
INSERT INTO Categories (ID, Libelle, Description, Date_creation, Date_modification) VALUES (NULL, 'Tv', 'zxcvbnm', '2017-11-06', '2017-11-06');

INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('1','1');
INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('1','2');
INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('1','3');
INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('2','4');
INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('2','5');
INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('2','6');
INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('2','7');
INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('1','10');
INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('1','8');
INSERT INTO Categorie_Produit(ID_categorie, ID_produit) VALUES ('1','9');

INSERT INTO Produit_Utilisateur(ID_utilisateur, ID_produit) VALUES ('1','4');
INSERT INTO Produit_Utilisateur(ID_utilisateur, ID_produit) VALUES ('2','8');
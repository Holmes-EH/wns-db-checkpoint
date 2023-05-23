# Suit les instruction du checkpoint, en utilisant https://www.dbdesigner.net/, créer un script
# d'initialisation de BDD SQLite et copie colle son contenu ici
# (tu dois notmalement avoir +/- 4 instructions CREATE TABLE, chaque instructions doit bien se terminer par un ";")

PRAGMA foreign_keys = ON;

CREATE TABLE entreprise (
	id integer PRIMARY KEY AUTOINCREMENT,
	nom varchar,
	description text
);

CREATE TABLE candidats (
	id integer PRIMARY KEY AUTOINCREMENT,
	login varchar,
	password varchar,
	nom varchar,
	prenom varchar,
	email varchar,
	tel varchar,
	presentation text
);

CREATE TABLE recruteurs (
	id integer PRIMARY KEY AUTOINCREMENT,
	login varchar,
	password varchar,
  fk_entreprise integer,
	FOREIGN KEY (fk_entreprise) REFERENCES entreprise(id)
);

CREATE TABLE offres (
	id integer PRIMARY KEY AUTOINCREMENT,
	titre varchar,
	description text,
	ville varchar,
  fk_entreprise integer,
	FOREIGN KEY (fk_entreprise) REFERENCES entreprise(id)
);

CREATE TABLE candidatures (
  id integer PRIMARY KEY AUTOINCREMENT,
  fk_offre integer,
  fk_candidat integer,
  FOREIGN KEY (fk_offre) REFERENCES offres(id) ON DELETE CASCADE,
  FOREIGN KEY (fk_candidat) REFERENCES candidats(id) ON DELETE CASCADE
);
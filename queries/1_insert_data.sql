# Écris dans ce fichier quelques instructions SQL pour insérer de données dans ta BDD
# N'oublie pas, les requêtes SQL doivent se terminer avec un ";"
# Pense à céer au moins une entreprise nommée "WCS", à créer des offre d'emploi à "Paris" dont une qui s'intitule "Dev"

INSERT INTO entreprise (nom, description) VALUES ("WCS", "La Wild Code School est une école européenne qui propose des programmes de formation tout au long de la vie aux métiers Tech à travers une vingtaine de campus, à distance ou au sein d’entreprises.");

INSERT INTO recruteurs (login, password, fk_entreprise)
VALUES ("recruterator", "superSecret", (SELECT id FROM entreprise WHERE nom="WCS"));

INSERT INTO offres (titre, description, ville, fk_entreprise) VALUES ("Dev", "Developpeur TS Backend", "Paris", (SELECT id FROM entreprise WHERE nom="WCS"));

INSERT INTO candidats (login, password, nom, prenom, email, tel, presentation)
VALUES ("toto", "superSecret", "Dupont", "Toto", "toto@toto.com", "0123456789", "Je suis Toto et je suis développeur TS Backend");

INSERT INTO candidatures (fk_offre, fk_candidat) VALUES ((SELECT id FROM offres WHERE titre="Dev"), (SELECT id FROM candidats WHERE login="toto"));

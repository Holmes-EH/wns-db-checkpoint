# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à 
# au moins une offre d'une entreprise identifiée par son nom

SELECT DISTINCT candidats.nom, candidats.prenom
FROM candidats
INNER JOIN candidatures ON candidats.id = candidatures.fk_candidat
INNER JOIN offres ON candidatures.fk_offre = offres.id
INNER JOIN entreprise ON offres.fk_entreprise = entreprise.id
WHERE entreprise.nom = 'WCS';
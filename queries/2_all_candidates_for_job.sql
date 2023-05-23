# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à l'offre
# intitulée "Dev"

SELECT * FROM candidats
INNER JOIN candidatures ON candidats.id = candidatures.fk_candidat
INNER JOIN offres ON candidatures.fk_offre = offres.id
WHERE offres.titre = "Dev";
-- ============================================================================
-- fichier  : afficher_base_tournois.sql
-- base     : tournois
-- auteur   : PA BESSERO
-- date     : 2017/12/11
-- role     : affiche le contenu de toutes les tables
-- projet   : tournois
-- resultat dans  :
-- ============================================================================

PROMPT TABLE Equipe
SELECT *
FROM EQUIPE;

PROMPT TABLE Joueur
SELECT *
FROM JOUEUR;

PROMPT TABLE Match
SELECT *
FROM MATCH;

PROMPT TABLE Composition
SELECT *
FROM COMPOSITION;

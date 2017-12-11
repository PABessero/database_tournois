-- ============================================================================
-- fichier  : drop_tournois.sql
-- base     : tournois
-- auteur   : PA BESSERO
-- date     : 2017/12/11
-- role     : supprime toutes les relations de la base
-- projet   : tournois
-- resultat dans  :
-- ============================================================================

DROP TABLE COMPOSITION CASCADE CONSTRAINTS;
DROP TABLE MATCH CASCADE CONSTRAINTS;
DROP TABLE JOUEUR CASCADE CONSTRAINTS;
DROP TABLE EQUIPE CASCADE CONSTRAINTS;

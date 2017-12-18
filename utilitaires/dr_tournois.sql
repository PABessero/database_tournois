-- ============================================================================
-- fichier  : dr_tournois.sql
-- base     : tournois
-- auteur   : PA BESSERO
-- date     : 2017/12/11
-- role     : edite les cles externes de la base
-- projet   : tournois
-- resultat dans  :
-- ============================================================================

-- Dependance de reference

ALTER TABLE JOUEUR
ADD CONSTRAINT FK_JOUEQU
FOREIGN KEY (IDEQ) REFERENCES EQUIPE(IDEQ);

ALTER TABLE MATCH
ADD CONSTRAINT FK_IDEQACC
FOREIGN KEY (IDEQACC) REFERENCES EQUIPE(IDEQ);

ALTER TABLE MATCH
ADD CONSTRAINT FK_IDEQEXT
FOREIGN KEY (IDEQEXT) REFERENCES EQUIPE(IDEQ);

ALTER TABLE MATCH
ADD CONSTRAINT FK_IDEQG
FOREIGN KEY (IDEQG) REFERENCES EQUIPE(IDEQ);

ALTER TABLE COMPOSITION
ADD CONSTRAINT FK_IDMATCH
FOREIGN KEY (IDMATCH) REFERENCES MATCH(IDMATCH);

ALTER TABLE COMPOSITION
ADD CONSTRAINT FK_IDJO
FOREIGN KEY (IDJO) REFERENCES JOUEUR(IDJO);

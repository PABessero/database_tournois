-- ============================================================================
-- fichier  : ddl_tournois.sql
-- base     : tournois
-- auteur   : PA BESSERO
-- date     : 2017/12/11
-- role     : creer toutes les relations de la base + les contraintes
-- projet   : tournois
-- resultat dans  : ddl_tournois.out
-- ============================================================================

-- Creation des tables

spool ddl_tournois.out

CREATE TABLE EQUIPE(
  IDEQ      NUMBER(4)       NOT NULL,
  NOMEQ     VARCHAR2(50)    NOT NULL,
  VILLEEQ   VARCHAR2(50)    NOT NULL,
  CONSTRAINT PK_EQUIPE PRIMARY KEY (IDEQ),
  CONSTRAINT UK_NOMEQ UNIQUE (NOMEQ)
);

set echo on
desc EQUIPE;
set echo off

CREATE TABLE JOUEUR(
  IDJO      NUMBER(4)       NOT NULL,
  NOMJO     VARCHAR2(50)    NOT NULL,
  PRENOMJO  VARCHAR2(50)    NOT NULL,
  TAILLEJO  NUMBER(3,2)     NOT NULL,
  IDEQ      NUMBER(4)       NOT NULL,
  CONSTRAINT PK_JOUEUR PRIMARY KEY (IDJO)
);

set echo on
desc JOUEUR;
set echo off

CREATE TABLE MATCH(
  IDMATCH   NUMBER(4)       NOT NULL,
  DATEMATCH DATE            NOT NULL,
  IDEQACC   NUMBER(4)       NOT NULL,
  IDEQEXT   NUMBER(4)       NOT NULL,
  IDEQG     NUMBER(4)       NULL,
  SCOREEG   NUMBER(3)       NULL,
  SCOREEP   NUMBER(3)       NULL,
  CONSTRAINT PK_MATCH PRIMARY KEY (IDMATCH),
  CONSTRAINT UK_MATCH UNIQUE (DATEMATCH, IDEQACC, IDEQEXT),
  CONSTRAINT CHK_SCOREEG CHECK (SCOREEG >= 0),
  CONSTRAINT CHK_SCOREEP CHECK (SCOREEP >= 0),
  CONSTRAINT CHK_GAGNANT CHECK (SCOREEP < SCOREEG)
);

set echo on
desc MATCH;
set echo off

CREATE TABLE COMPOSITION(
  IDMATCH   NUMBER(4)     NOT NULL,
  IDJO      NUMBER(4)     NOT NULL,
  CONSTRAINT PK_COMPOSITION PRIMARY KEY (IDMATCH, IDJO)
);

set echo on
desc COMPOSITION;
set echo off

spool off

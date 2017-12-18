COMMENT ON TABLE EQUIPE IS 'une équipe est composée de joueurs';
COMMENT ON TABLE JOUEUR IS 'un joueur est une personne, un joueur appartient à une seule équipe';
COMMENT ON TABLE MATCH IS 'un match est une rencontre entre 2 équipes qui a une date';
COMMENT ON TABLE COMPOSITION IS 'un match est composé de plusieurs joueurs';

COMMENT ON COLUMN EQUIPE.IDEQ IS 'identifiant de l’équipe (entier avec 4 chiffres)';
COMMENT ON COLUMN EQUIPE.NOMEQ IS 'nom de l’équipe (max 50 caractères)';
COMMENT ON COLUMN EQUIPE.VILLEEQ IS 'ville de l’équipe (max 50 caractère)';

COMMENT ON COLUMN JOUEUR.IDJO IS 'identifiant d’un joueur (entier avec 4 chiffres)';
COMMENT ON COLUMN JOUEUR.NOMJO IS 'nom du joueur (max 50 caractères)';
COMMENT ON COLUMN JOUEUR.PRENOMJO IS 'prénom du joueur (max 50 caractères)';
COMMENT ON COLUMN JOUEUR.TAILLEJO IS 'taille d''un joueur en mètre (nombre avec un chiffre avant la virgule et deux chiffres après la virgule)';
COMMENT ON COLUMN JOUEUR.IDEQ IS 'identifiant de l’équipe du joueur (entier avec 4 chiffres)';

COMMENT ON COLUMN MATCH.IDMATCH IS 'identifiant du match (entier avec 4 chiffres)';
COMMENT ON COLUMN MATCH.DATEMATCH IS 'date du match (date)';
COMMENT ON COLUMN MATCH.IDEQACC IS 'identifiant de l’équipe qui accueille le match';
COMMENT ON COLUMN MATCH.IDEQEXT IS 'identifiant de l’équipe extérieure';
COMMENT ON COLUMN MATCH.IDEQG IS 'identifiant de l’équipe gagnante (entier avec 4 chiffres), valeur non obligatoire';
COMMENT ON COLUMN MATCH.SCOREEG IS 'Score de l’équipe gagnante (entier avec 3 chiffres), valeur non obligatoire et supérieur ou égal à 0, le score du gagnant est strictement supérieur au score du perdant';
COMMENT ON COLUMN MATCH.SCOREEP IS 'Score de l’équipe perdante (entier avec 3 chiffres), valeur non obligatoire et supérieur ou égal à 0';

COMMENT ON COLUMN COMPOSITION.IDMATCH IS 'identifiant du match (entier avec 4 chiffres)';
COMMENT ON COLUMN COMPOSITION.IDJO IS 'identifiant d’un joueur (entier avec 4 chiffres)';

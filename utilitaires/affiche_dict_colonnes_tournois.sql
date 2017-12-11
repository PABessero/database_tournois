-- ============================================================================
-- fichier  : afficher_dict_tables_tournois.sql
-- base     : tournois
-- auteur   : PA BESSERO
-- date     : 2017/12/11
-- role     : Extraction des descriptions des colonnes de chaque table
--            de la base de donnee "tournois"
-- projet   : tournois
-- resultat dans  : dict_colonnes_tournois.html
-- ============================================================================

SET pagesize 80
SET MARKUP HTML ON SPOOL ON PREFORMAT OFF ENTMAP OFF -
HEAD '<title>Description des colonnes des tables</title> -
<style type="text/css">table.myTable { border-collapse:collapse; }-
table.myTable td, table.myTable th { border: 1px solid black; padding : 5px; } </style>' -
TABLE "class='myTable'"

TTITLE '<h3>Description des colonnes des tables de la base de donnee tournois</h3>'

SPOOL dict_colonnes_tournois.html

COLUMN table_name HEADING 'Relation'
COLUMN column_name HEADING 'Attribut'
COLUMN comments HEADING 'Description'

BREAK ON table_name SKIP 1

-- =============================================================================
-- Requette
-- =============================================================================

select ut.table_name, uc.column_name, uc.comments
from user_tab_comments ut, user_col_comments uc
where ut.table_name in (select table_name from user_tables)
and   ut.table_name = uc.table_name
order by 1;

-- =============================================================================
SPOOL OFF
SET MARKUP HTML OFF

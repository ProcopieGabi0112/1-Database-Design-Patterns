--Aici in loc de ferb_dba scriem denumirea schemei/user-ul pe schema caruia facem schema.
DEFINE schema_name = "ferb_dba";

-- REGIONS TABLE

DROP TABLE &schema_name.region CASCADE CONSTRAINTS;
--stergem tabela daca exista pentru a nu primi eroare in momentul in care incercam sa o cream.

CREATE TABLE &schema_name.region (
  region_id NUMBER,
  region_name VARCHAR2(50),
  creation_date TIMESTAMP,
  update_date TIMESTAMP
);

COMMENT ON COLUMN &schema_name.region.region_id IS 'Cheie primara a tabelului REGIONS';
COMMENT ON COLUMN &schema_name.region.region_name IS 'Numele regiunii';
COMMENT ON COLUMN &schema_name.region.creation_date IS 'Tehnical Column - date when the row was inserted';
COMMENT ON COLUMN &schema_name.region.update_date IS 'Tehnical Column - date when the row was updated';   

--VERIFICARI
--inseram o valoare in tabela region;
INSERT INTO &schema_name.regions (region_id,region_name)
VALUES (1,'America de Nord');
--1).vizualizam inregistrarea;
SELECT * FROM &schema_name.region;
--2).vizualizam structura tabelei;
DESCRIBE &schema_name.region;
--3).vizualizam constrangerile pe care le avem pe tabela REGIONS;
--varianta 1
SELECT constraint_name,constraint_type,table_name
FROM user_constraints
WHERE UPPER(table_name) = "REGION";
--4).vizualizam comentariile pe care le-am pus pe coloane
--varianta 1
SELECT table_name,comments
FROM user_tab_comments
WHERE UPPER(table_name) = "REGION";
--varianta 2
SELECT column_name,comments
FROM user_col_comments
WHERE UPPER(table_name) = "REGION";






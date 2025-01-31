-- 1. verificare existenta tabela;
SELECT * FROM DATABASE_OWNER.REGION;

-- 2. verificare structura tabela;
DESCRIBE DATABASE_OWNER.REGION;
--Name          Null?    Type         
--------------- -------- ------------ 
--REGION_ID     NOT NULL NUMBER       
--REGION_NAME   NOT NULL VARCHAR2(50) 
--CREATION_DATE          TIMESTAMP(6) 
--UPDATE_DATE            TIMESTAMP(6)

-- 3. verificare comentarii coloane adaugate;
SELECT column_name, comments
FROM user_col_comments
WHERE table_name = 'REGION';
--REGION_ID	    The primary key of region table
--REGION_NAME	The name of the region
--CREATION_DATE	Tehnical Column - date when the row was inserted
--UPDATE_DATE	Tehnical Column - date when the row was updated

-- 4. verificare constrangeri adaugate pe coloane;
SELECT constraint_name,search_condition,constraint_type,index_name,status,last_change
FROM user_constraints
WHERE UPPER(owner) LIKE '%DATABASE_OWNER%'
AND UPPER(table_name) LIKE '%REGION%';
--constraint_name  search_condition           constraint_type index_name    status  last_change
--REGION_NAME_NN   "REGION_NAME" IS NOT NULL  C		                        ENABLED	31-01-2025
--REGION_ID_PK		                          P	              REGION_ID_PK	ENABLED	31-01-2025

-- 5. verificare trigger pentru update;
-- 5.1. inserare in tabela o inregistrare;
INSERT INTO DATABASE_OWNER.REGION(region_id,region_name)
VALUES (57,'America de Nord');
-- 1 row inserted.

SELECT * FROM DATABASE_OWNER.REGION;
--region_id  region_name        creation_date                   update_date
--1	         America de Nord	01-02-2025 00:54:48,541000000	01-02-2025 00:54:48,541000000

-- 5.2. realizeaza un update pe inregistrarea respectiva;
UPDATE DATABASE_OWNER.REGION 
SET region_name = 'AMERICA DE NORD'
WHERE region_id = 1;
-- 1 row updated.

--5.3. verifica daca valoarea de pe update_date a fost modificata;
SELECT * FROM DATABASE_OWNER.REGION;
--region_id  region_name        creation_date                   update_date
--1	         AMERICA DE NORD	01-02-2025 00:54:48,541000000	01-02-2025 00:58:28,455000000

-- 6 verifica daca fluxul realizat de trigger este in regula;
-- 6.1. dau truncate la tabela ca sa elimin inregistrarile din tabela
TRUNCATE TABLE DATABASE_OWNER.REGION;

-- 6.2. insereaza 5 inregistrari in tabel folosind doar coloana region_name;
INSERT INTO DATABASE_OWNER.REGION(region_name) VALUES ('America de Nord');
INSERT INTO DATABASE_OWNER.REGION(region_name) VALUES ('America de Sud');
INSERT INTO DATABASE_OWNER.REGION(region_name) VALUES ('Africa');
INSERT INTO DATABASE_OWNER.REGION(region_name) VALUES ('Europa Centrala');
INSERT INTO DATABASE_OWNER.REGION(region_name) VALUES ('Australia');
-- 1 row inserted.
-- 1 row inserted.
-- 1 row inserted.
-- 1 row inserted.
-- 1 row inserted.

-- 6.3. verifica daca pe coloana region_id sunt valori de la 1 la 5;
SELECT * FROM DATABASE_OWNER.REGION;
--region_id  region_name        creation_date                   update_date
--1	         America de Nord	01-02-2025 01:19:13,541000000	01-02-2025 01:19:13,541000000
--2	         America de Sud	    01-02-2025 01:19:13,560000000	01-02-2025 01:19:13,560000000
--3	         Africa	            01-02-2025 01:19:13,565000000	01-02-2025 01:19:13,565000000
--4	         Europa Centrala	01-02-2025 01:19:13,571000000	01-02-2025 01:19:13,571000000
--5	         Australia	        01-02-2025 01:19:13,580000000	01-02-2025 01:19:13,580000000
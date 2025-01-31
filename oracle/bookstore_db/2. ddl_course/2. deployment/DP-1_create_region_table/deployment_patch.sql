-- vom defini variabila schema_name pe care o vom folosi pentru a seta schema tuturor obiectelor pe care le vom crea
-- vom folosi variabila prin intermediul &schema_name(referinta)
DEFINE schema_name = "DATABASE_OWNER";

-- CREATE REGION TABLE
-- verificam daca tabela exista
DROP TABLE "&schema_name"."REGION";
-- cream tabela REGION
CREATE TABLE "&schema_name"."REGION" (
region_id NUMBER,
region_name VARCHAR2(50) CONSTRAINT region_name_nn NOT NULL,
creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
COMMENT ON COLUMN "&schema_name"."REGION".region_id IS 'The primary key of region table';
COMMENT ON COLUMN "&schema_name"."REGION".region_name IS 'The name of the region';
COMMENT ON COLUMN "&schema_name"."REGION".creation_date IS 'Tehnical Column - date when the row was inserted';
COMMENT ON COLUMN "&schema_name"."REGION".update_date IS 'Tehnical Column - date when the row was updated';
--adaugare constrangeri
ALTER TABLE "&schema_name"."REGION" ADD CONSTRAINT region_id_pk PRIMARY KEY (region_id);
-- cream index pe region_id
--CREATE UNIQUE INDEX region_id_unique_index ON "&schema_name"."REGION" (region_id);
-- vom crea un trigger care va actualiza valoarea de pe coloana update_date in momentul in care oricare dintre valorile
-- din inregistrarea respectiva sunt modicate 
CREATE OR REPLACE TRIGGER trigger_upt_dt_region
BEFORE UPDATE ON "&schema_name"."REGION"
FOR EACH ROW 
BEGIN
        :NEW.update_date := CURRENT_TIMESTAMP;
END;
/
--trigger-ul odata rulat este activat
--acesta se poate dezactiva folosind comanda
ALTER TRIGGER trigger_upt_dt_region DISABLE;
--si se poate activa la loc 
ALTER TRIGGER trigger_upt_dt_region ENABLE;
-- acum vom crea o secventa
DROP SEQUENCE sequence_region_id;
CREATE SEQUENCE sequence_region_id 
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;
-- acum vom crea un trigger care va prelua ultima valoare din secventa de mai sus si o va face cheie primara pentru 
-- inregistrarile pe care incercam sa le introduce in tabela REGION.
CREATE OR REPLACE TRIGGER trigger_seq_region_id_pk
BEFORE INSERT ON "&schema_name"."REGION"
FOR EACH ROW
BEGIN
    :NEW.region_id := sequence_region_id.NEXTVAL;
END;
/
--trigger-ul odata rulat este activat
--acesta se poate dezactiva folosind comanda
ALTER TRIGGER trigger_seq_region_id_pk DISABLE;
--si se poate activa la loc 
ALTER TRIGGER trigger_seq_region_id_pk ENABLE;
COMMIT;
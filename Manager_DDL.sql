--liquibase format
--CHANGESET Manager_DDL: 02 

CREATE TABLE private.Manager (
    Mngr_id Integer NOT NULL DEFAULT -99999.0,
    Name Integer NOT NULL,
    Age Integer,
    Birth_Dt Integer,
    Gender Integer,
    Email Integer,
    Phone Integer,
    PRIMARY KEY (Mngr_id)
);

GRANT SELECT, UPDATE, INSERT ON table {schema_name}.{table_name} TO GROUP $redshift_group_rw;
GRANT SELECT ON table {schema_name}.{table_name} TO GROUP $redshift_group_ro;
GRANT SELECT, UPDATE, INSERT ON table {schema_name}.{table_name} TO GROUP $redshift_group_off;
GRANT SELECT, UPDATE, INSERT ON table {schema_name}.{table_name} TO GROUP $redshift_group_adm;
GRANT ALL ON table {schema_name}.{table_name} TO edmetl;
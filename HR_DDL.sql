--liquibase format
--CHANGESET HR_DDL: 04 

CREATE TABLE private.HR (
    Mngr_id Integer NOT NULL DEFAULT -99999.0,
    Name Integer NOT NULL,
    Age Integer,
    Birth_Dt Integer,
    Gender Integer,
    Email Integer,
    Phone Integer,
    PRIMARY KEY (Mngr_id)
);

GRANT SELECT, UPDATE, INSERT ON table private.HR TO GROUP "$redshift_group_rw";
GRANT SELECT ON table private.HR TO GROUP $redshift_group_ro;
GRANT SELECT, UPDATE, INSERT ON table private.HR TO GROUP $redshift_group_off;
GRANT SELECT, UPDATE, INSERT ON table private.HR TO GROUP $redshift_group_adm;
GRANT ALL ON table private.HR TO edmetl;
--liquibase format
--CHANGESET Manager_DDL: 01

CREATE TABLE private.Manager (
    Mngr_id Integer NOT NULL DEFAULT -99999.0,
    Name Varchar(50) NOT NULL,
    Age Integer,
    Birth_Dt Varchar(50),
    Gender Integer,
    Email Varchar(50),
    Phone Integer,
    PRIMARY KEY (Mngr_id)
);

 -- grant permissions
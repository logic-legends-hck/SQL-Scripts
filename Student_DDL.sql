--liquibase format
--CHANGESET Student_DDL: 01 

CREATE TABLE public.Student (
    Emp_Id Integer NOT NULL DEFAULT -99999.0,
    Name Varchar(50) NOT NULL,
    Age Integer,
    Birth_Dt Date,
    Gender Varchar(50),
    Email Varchar(50),
    Phone Bigint,
    PRIMARY KEY (Emp_Id)
);

 -- grant permissions
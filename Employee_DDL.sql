--liquibase format
--CHANGESET Employee_DDL: 03 

CREATE TABLE public.Employee (
    Emp_Id Integer NOT NULL DEFAULT -99999.0,
    Name Varchar(50) NOT NULL,
    Age Integer,
    Birth_Dt Date,
    Gender Varchar(50),
    Email Varchar(50),
    Phone Bigint,
    PRIMARY KEY (Emp_Id)
);

GRANT ALL ON TABLE public.Employee to EDMETL; 
GRANT ALL ON TABLE public.Employee to EDMIDMC;
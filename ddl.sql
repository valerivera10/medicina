DROP DATABASE medicina;

CREATE DATABASE medicina;
USE medicina;

CREATE TABLE country (
    codecountry VARCHAR(5) PRIMARY KEY,
    namecountry VARCHAR(50)
);

CREATE TABLE region (
    codereg VARCHAR(5) PRIMARY KEY,
    namereg VARCHAR(50),
    codecountry VARCHAR(5),
    FOREIGN KEY (codecountry) REFERENCES country(codecountry)
);

CREATE TABLE city (
    codecity VARCHAR(5) PRIMARY KEY,
    namecity VARCHAR(50),
    codereg VARCHAR(5),
    FOREIGN KEY (codereg) REFERENCES region(codereg)
);

CREATE TABLE customer (
    idcustomer VARCHAR(20) PRIMARY KEY,
    namecustomer VARCHAR(50),
    lastnamecustomer VARCHAR(50),
    codecitycustomer VARCHAR(5),
    emailcustomer VARCHAR(100),
    birthdate DATE,
    lon FLOAT8,
    latitud FLOAT8,
    FOREIGN KEY (codecitycustomer) REFERENCES city(codecity)
);

CREATE TABLE labatory (
    id INT PRIMARY KEY,
    namelab VARCHAR(50),
    codecityreg VARCHAR(5),
    FOREIGN KEY (codecityreg) REFERENCES city(codecity)
);

CREATE TABLE activeprinciple (
    idap INT PRIMARY KEY,
    nameap VARCHAR(60)
);


CREATE TABLE modeadminstration (
    id INT PRIMARY KEY,
    descriptionmode VARCHAR(60)
);


CREATE TABLE unitemeasurement (
    idum INT PRIMARY KEY,
    nameum VARCHAR(50)
);


CREATE TABLE farmacy (
    idfarmacy INT AUTO_INCREMENT PRIMARY KEY,
    namefarmacy VARCHAR(60),
    addressfarmacy VARCHAR(100),
    longitude DOUBLE,
    latfarmacy DOUBLE,
    codecityfarm VARCHAR(5),
    FOREIGN KEY (codecityfarm) REFERENCES city(codecity)
);

CREATE TABLE medicine (
    id INT AUTO_INCREMENT PRIMARY KEY,
    proceedings VARCHAR(10),
    namemedicine VARCHAR(100),
    healthregister VARCHAR(50),
    description TEXT,
    descriptionshort VARCHAR(60),
    codemodeadmin INT,
    codeap INT,
    codeum INT,
    namerol VARCHAR(100),
    codelab INT,
    FOREIGN KEY (codemodeadmin) REFERENCES modeadminstration(id),
    FOREIGN KEY (codeap) REFERENCES activeprinciple(idap),
    FOREIGN KEY (codeum) REFERENCES unitemeasurement(idum),
    FOREIGN KEY (codelab) REFERENCES labatory(id)
);


CREATE TABLE farmacymedicine (
    idfarmacy INT,
    idmedicinefatrm INT,
    price FLOAT(8),
    PRIMARY KEY (idfarmacy, idmedicinefatrm),
    FOREIGN KEY (idfarmacy) REFERENCES farmacy(idfarmacy),
    FOREIGN KEY (idmedicinefatrm) REFERENCES medicine(id)
);


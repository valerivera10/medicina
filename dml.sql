-- Insertar datos en la tabla country
INSERT INTO country (codecountry, namecountry) VALUES
('CO', 'Colombia'),
('AR', 'Argentina'),
('BR', 'Brasil'),
('MX', 'México'),
('PE', 'Perú');

-- Insertar datos en la tabla region
INSERT INTO region (codereg, namereg, codecountry) VALUES
('ANT', 'Antioquia', 'CO'),
('BA', 'Buenos Aires', 'AR'),
('SP', 'São Paulo', 'BR'),
('CDMX', 'Ciudad de México', 'MX'),
('LIM', 'Lima', 'PE');

-- Insertar datos en la tabla city
INSERT INTO city (codecity, namecity, codereg) VALUES
('MED', 'Medellín', 'ANT'),
('BA', 'Buenos Aires', 'BA'),
('SP', 'São Paulo', 'SP'),
('CDMX', 'Ciudad de México', 'CDMX'),
('LIM', 'Lima', 'LIM');

-- Insertar datos en la tabla customer
INSERT INTO customer (idcustomer, namecustomer, lastnamecustomer, codecitycustomer, emailcustomer, birthdate, lon, latitud) VALUES
('C001', 'Juan', 'Pérez', 'MED', 'juan.perez@example.com', '1990-01-01', -75.5698, 6.2518),
('C002', 'María', 'García', 'BA', 'maria.garcia@example.com', '1985-05-15', -58.4173, -34.6118),
('C003', 'Pedro', 'Silva', 'SP', 'pedro.silva@example.com', '1982-02-28', -46.6333, -23.5505),
('C004', 'Ana', 'Mendoza', 'CDMX', 'ana.mendoza@example.com', '1992-09-20', -99.1332, 19.4326),
('C005', 'Carlos', 'Fernández', 'LIM', 'carlos.fernandez@example.com', '1988-12-01', -77.0369, -12.0464);

-- Insertar datos en la tabla labatory
INSERT INTO labatory (id, namelab, codecityreg) VALUES
(1, 'LabTest', 'MED'),
(2, 'BioLab', 'BA'),
(3, 'HealthLab', 'SP'),
(4, 'MedLab', 'CDMX'),
(5, 'PharmaLab', 'LIM');

-- Insertar datos en la tabla activeprinciple
INSERT INTO activeprinciple (idap, nameap) VALUES
(1, 'Paracetamol'),
(2, 'Ibuprofeno'),
(3, 'Amoxicilina'),
(4, 'Omeprazol'),
(5, 'Cetirizina');

-- Insertar datos en la tabla modeadminstration
INSERT INTO modeadminstration (id, descriptionmode) VALUES
(1, 'Oral'),
(2, 'Intravenoso'),
(3, 'Intramuscular'),
(4, 'Tópico'),
(5, 'Sublingual');

-- Insertar datos en la tabla unitemeasurement
INSERT INTO unitemeasurement (idum, nameum) VALUES
(1, 'Miligramos'),
(2, 'Gramos'),
(3, 'Mililitros'),
(4, 'Unidades'),
(5, 'Píldoras');

-- Insertar datos en la tabla farmacy
INSERT INTO farmacy (namefarmacy, addressfarmacy, longitude, latfarmacy, codecityfarm) VALUES
('Farmacia San Pedro', 'Calle 70 #12-34', -75.5648, 6.2505, 'MED'),
('Farmacia del Barrio', 'Av. Corrientes 1234', -58.4155, -34.6100, 'BA'),
('Farmacia Central', 'Av. Paulista 567', -46.6345, -23.5510, 'SP'),
('Farmacia México', 'Paseo de la Reforma 222', -99.1344, 19.4320, 'CDMX'),
('Farmacia Lima Norte', 'Av. Javier Prado Este 500', -77.0358, -12.0450, 'LIM');

-- Insertar datos en la tabla medicine
INSERT INTO medicine (proceedings, namemedicine, healthregister, description, descriptionshort, codemodeadmin, codeap, codeum, namerol, codelab) VALUES
('P001', 'Paracetamol 500mg', '123456', 'Analgésico y antipirético', 'Paracetamol 500mg', 1, 1, 1, 'Analgésico', 1),
('P002', 'Ibuprofeno 200mg', '234567', 'Antiinflamatorio y analgésico', 'Ibuprofeno 200mg', 1, 2, 1, 'Antiinflamatorio', 2),
('P003', 'Amoxicilina 500mg', '345678', 'Antibiótico', 'Amoxicilina 500mg', 1, 3, 1, 'Antibiótico', 3),
('P004', 'Omeprazol 20mg', '456789', 'Antiácido', 'Omeprazol 20mg', 4, 4, 2, 'Antiácido', 4),
('P005', 'Cetirizina 10mg', '567890', 'Antihistamínico', 'Cetirizina 10mg', 5, 5, 1, 'Antihistamínico', 5);

-- Insertar datos en la tabla farmacymedicine
INSERT INTO farmacymedicine (idfarmacy, idmedicinefatrm, price) VALUES
(1, 1, 10.50),
(1, 2, 12.75),
(2, 3, 15.00),
(3, 4, 20.25),
(4, 5, 8.99);

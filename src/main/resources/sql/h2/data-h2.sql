INSERT INTO  TypePet (idTypePet,typeName) VALUES (1,'Cat');
INSERT INTO  TypePet (idTypePet,typeName) VALUES (2,'Dog');
INSERT INTO  TypePet (idTypePet,typeName) VALUES (3,'Turtle');
INSERT INTO  TypePet (idTypePet,typeName) VALUES (4,'Fish');
INSERT INTO  TypePet (idTypePet, typeName) VALUES (5,'Hamster');
INSERT INTO  TypePet (idTypePet,typeName) VALUES (6,'Bird');
INSERT INTO  TypePet (idTypePet, typeName) VALUES (7,'Snake');

INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Karla Lopez H2','112-15-100','2024-02-15');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Anahi Hernandez H2','690-001-447','2024-03-10');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Melisa Ramirez H2','100-148-147','2024-04-18');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Rosario Gonzalez H2','99-154-780','2024-05-01');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Luis Hernandez H2','254-114-003','2024-05-01');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Amanda Gomez H2','660-115-477','2024-05-03');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Andres Lopez H2','332-177-000','2024-05-04');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Guadalupe Cortez H2','223-147-444','2024-05-06');

INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (1, 1, 'Pelusa H2', 'NA');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (2, 1, 'Bola de nieve H2', 'Persa');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (2, 2, 'Negro H2', 'Pastor Aleman');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (3, 2, 'Luna H2', 'Husky Siberiano');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (1, 2, 'Roco H2', 'Doberman');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (4, 1, 'Rodolfo H2', 'Angora');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (5, 1, 'Luz H2', 'Bombay');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (5, 4, 'Nemo H2', 'Pez payaso');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (1, 5, 'Stuart H2', 'Domestico');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (6, 6, 'Erick H2', 'Domestico');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (6, 3, 'Rex H2', 'Rusa');

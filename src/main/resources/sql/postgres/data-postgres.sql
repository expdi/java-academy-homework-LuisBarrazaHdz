delete from TypePet;
--alter sequence idTypePet restart;

delete from Pet;
--drop sequence if exists id;

delete from Adopter;
--drop sequence if exists id;

INSERT INTO  TypePet (idTypePet,typeName) VALUES (1,'Cat');
INSERT INTO  TypePet (idTypePet,typeName) VALUES (2,'Dog');
INSERT INTO  TypePet (idTypePet,typeName) VALUES (3,'Turtle');
INSERT INTO  TypePet (idTypePet,typeName) VALUES (4,'Fish');
INSERT INTO  TypePet (idTypePet, typeName) VALUES (5,'Hamster');
INSERT INTO  TypePet (idTypePet,typeName) VALUES (6,'Bird');
INSERT INTO  TypePet (idTypePet, typeName) VALUES (7,'Snake');

INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Karla Lopez','112-15-100','2024-02-15');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Anahi Hernandez','690-001-447','2024-03-10');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Melisa Ramirez','100-148-147','2024-04-18');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Rosario Gonzalez','99-154-780','2024-05-01');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Luis Hernandez','254-114-003','2024-05-01');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Amanda Gomez','660-115-477','2024-05-03');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Andres Lopez','332-177-000','2024-05-04');
INSERT INTO  Adopter (name, phoneNumber, date) VALUES ('Guadalupe Cortez','223-147-444','2024-05-06');

INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (1, 1, 'Pelusa', 'NA');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (2, 1, 'Bola de nieve', 'Persa');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (2, 2, 'Negro', 'Pastor Aleman');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (3, 2, 'Luna', 'Husky Siberiano');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (1, 2, 'Roco', 'Doberman');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (4, 1, 'Rodolfo', 'Angora');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (5, 1, 'Luz', 'Bombay');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (5, 4, 'Nemo', 'Pez payaso');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (1, 5, 'Stuart', 'Domestico');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (6, 6, 'Erick', 'Domestico');
INSERT INTO Pet (adopter_id, idTypePet, namePet, breedPet) VALUES (6, 3, 'Rex', 'Rusa');

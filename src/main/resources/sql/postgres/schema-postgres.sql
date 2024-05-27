-- select current_user;
--SET ROLE larku;

DROP TABLE IF EXISTS Pet;
DROP TABLE IF EXISTS TypePet;
DROP TABLE IF EXISTS Adopter;


create table Adopter (
                         id serial
                             constraint idAdopter_pk
                                 primary key,
                         name varchar(100) not null,
                         phoneNumber varchar(20),
                         date date not null

);

create table TypePet (
                         idTypePet int
                             constraint idTypePet_pk
                                 primary key,
                         typeName varchar(50)
);

create table Pet (
                     id serial
                         constraint idPet_pk
                             primary key,
                     adopter_id integer
                         constraint  Pet_Adopter_idAdopter_fk
                             references  Adopter not null,
                     idTypePet integer
                         constraint  Pet_TypePet_idTypePet_fk
                             references  TypePet not null,
                     namePet varchar(50) not null,
                     breedPet varchar(50)
);

--Grant permissions
REVOKE ALL ON SCHEMA public FROM PUBLIC;

-- GRANT ALL ON SCHEMA public TO postgres;

-- GRANT ALL ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO larku;
GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE on ALL TABLES IN SCHEMA public TO larku;
GRANT USAGE, SELECT, UPDATE on ALL SEQUENCES IN SCHEMA public TO larku;

DROP TABLE IF EXISTS Pet;
DROP TABLE  IF EXISTS TypePet;
DROP TABLE  IF EXISTS Adopter;

CREATE USER IF NOT EXISTS LARKU SALT 'f2d97d5e5c194fe4' HASH 'bf9ac7082b79123183a1a58f3f23b3822cbedc5c1161394f43bd4d0d03237c59' ADMIN;


create MEMORY table Adopter (
                         id serial
                             constraint idAdopter_pk
                                 primary key,
                         name varchar(100) not null,
                         phoneNumber varchar(20),
                         date date not null

);

create MEMORY table TypePet (
                         idTypePet int
                             constraint idTypePet_pk
                                 primary key,
                         typeName varchar(50)
);

create MEMORY table Pet (
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




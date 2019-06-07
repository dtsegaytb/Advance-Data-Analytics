create database people;
use People;
create table person (
id int primary key,
first_name varchar(50),
last_name varchar(50),
age int);

create table pet (
id int primary key,
pet_name varchar(50),
breed varchar(50),
age int,
dead int);

create table person_pet (
person_id int,
pet_id int)
;

insert into person values (1,'Dave','wolf',99);
insert into person values (2, 'Bart', 'Simpson',10);
insert into person values (3, 'Crazy Cat Lady','', 99);
select * from person;

insert into pet values (10,'fifi', 'dog',4,1);
insert into pet values (11, 'toto', 'dog', 8, 1);
insert into pet values (12, 'cat1', 'cat', 5, 1);
insert into pet values (13, 'cat2', 'cat', 5, 1);
insert into pet values (14, 'cat3', 'cat', 6, 1);
insert into pet values (15, 'cat4', 'cat', 8, 1);
insert into pet values (16, 'cat5', 'cat', 3, 1);
select * from pet;

insert into person_pet values (1,10);
insert into person_pet values (2,11);
insert into person_pet values (2,10);
insert into person_pet values (3,12);
insert into person_pet values (3,13);
insert into person_pet values (3,14);
insert into person_pet values (3,15);
insert into person_pet values (3,16);

select * from person_pet;

update person_pet set person_id = 2 where pet_id = 16;

select * from person inner join 
person_pet on person.id = person_pet.person_id
inner join pet on person_pet.pet_id = pet.id;

select first_name, last_name, pet_name as 'Pet Name', pet.age as 'Pet Age'
from person inner join 
person_pet on person.id = person_pet.person_id
inner join pet on person_pet.pet_id = pet.id;


INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, 'Dave', 'Wolfe', 25);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, 'Dave', 'Wolfe', 25);

INSERT INTO pet (id, pet_name, breed, age, dead)
    VALUES (0, 'Fluffy', 'Unicorn', 1000, 0);

INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);


- query

select * from pet where age >10
select * from person where age <50
select age from person where age >50;
select * from pet where (breed = 'cat' and age <5 ) or dead = 0;
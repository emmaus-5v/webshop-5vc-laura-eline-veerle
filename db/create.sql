--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  geslacht_id INTEGER,
  hoogte_id INTEGER
);

DROP TABLE IF EXISTS geslacht; 
CREATE TABLE geslacht (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  geslacht_teken TEXT,
  geslacht_naam TEXT
);

DROP TABLE IF EXISTS hoogte; 
CREATE TABLE hoogte (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  hoogte TEXT
);

DROP TABLE IF EXISTS verschillende_kleuren; 
CREATE TABLE verschillende_kleuren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur TEXT
);

DROP TABLE IF EXISTS kleur_schoen; 
CREATE TABLE kleur_schoen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  schoen_id INTEGER,
  kleur_id INTEGER
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

-- hoofd tabel met schoen info
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('RS-FAST TECH UNISEX - laag Puma', 'Dit is de Fast TECH schoen van Puma. Dit is een vervolg op de RS selectie. Door de super demping van Puma lopen deze schoenen alsof je op zachte wolkjes loopt!', '816905633-0', 109.99, 3, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('X-RAY 2 Square - laag Puma', 'Deze kleurijke schoenen van Puma zijn de nieuwe rage. Met deze X-RAY 2 SQUARE schoenen zal je niet onherkend blijven. De geweldige demping in de zool geeft je een super loop ervaring!', '077030122-3', 59.99, 3, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Nike Air Force 1 First Use - laag Nike', 'Deze First Use Nike Air Force schoenen zijn niet zomaar schoenen. Nike bestond in juni 2021 50 jaar en bracht deze schoenen uit. Wie wil deze limited edition schoenen niet!', '445924201-X', 109.99, 1, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Nike Air Force 1 Shadow - laag Nike', 'Deze zomerse kleuren moeten je wel opvrolijken. Ga met een frisse look de zomer in met deze niewe Nike Air Force Shadow schoenen.', '693155505-7', 109.95, 1, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Adidas Rivalry - Low Premium', 'Door de rustige groen en de lieve roze kleur is deze schoen perfect voor mensen die van kalmte houden. Keep calm en koop deze schoenen', '492662523-7', 99.99, 1, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('TEN SHOES MID - hoog Adidas Originals', 'Als je het snel koud hebt in de winter waardoor je steeds met rode enkels buiten loopt, dan zijn deze hoge adidas TEN SHOES MID perfect voor jou. Door deze hoge schoen zijn koude enkels verleden tijd!', '492662523-7', 89.95, 1, 2);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Vans bold NI cheetah - laag Vans', 'Vans zijn perfect voor het skateboarden, maar kunnen natuurlijk ook gewoon in het dagelijks leven gebruikt worden. Met de cheetah-print vallen ze net nog een beetje meer op!', '592662523-7', 59.99, 1, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Blazer Low 77 VNTG - laag Nike', 'Deze blazers zijn helemaal in nu en iets anders dan de meest bekende blazers, want deze zijn laag. Het zijn witte schoenen met een zwarte swoosh, dus ze passen echt bij elke outfit!', '686928463-6', 89.99, 3, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Air Jordan 1 - hoog Nike', 'Origineel waren de Air Jordans voor basketbal, maar nu kan je ze niet meer uit de streetstyle wegdenken! ', '786928463-6', 199.99, 3, 2);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('OZWEEGO - laag Adidas Originals', 'Deze nieuwe Adidas schoenen zien er super leuk uit. Je doet ze super makkelijk en ze lopen ook nog eens heerlijk!', '583978399-5', 99.95, 3, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Raw Earth Camo Chuck Taylor All Star - laag Converse', 'Als je deze schoenen ziet denk je misschien dit zijn gewoon hoge beige All Stars, maar als je goed kijkt zie je een legerprint. Hierdoor zijn je schoenen niet basic, maar vallen ze niet te veel op!', '583964599-3', 94.99, 1, 2);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('550 - laag New Balance', 'Deze vette New Balance schoenen vallen lekker op met de rode accenten en ze worden steeds populairder!', '583344599-3', 119.95, 3, 1);

-- geslacht tabel
insert into geslacht (geslacht_teken, geslacht_naam) values  ('v', 'vrouw');
insert into geslacht (geslacht_teken, geslacht_naam) values  ('m', 'man');
insert into geslacht (geslacht_teken, geslacht_naam) values  ('uni', 'unisex');

-- hoogte tabel
insert into hoogte (hoogte) values ('laag');
insert into hoogte (hoogte) values ('hoog');

-- kleuren tabel
insert into verschillende_kleuren (kleur) values ('meerkleurig');
insert into verschillende_kleuren (kleur) values ('wit');
insert into verschillende_kleuren (kleur) values ('zwart');
insert into verschillende_kleuren (kleur) values ('beige');
insert into verschillende_kleuren (kleur) values ('grijs');
insert into verschillende_kleuren (kleur) values ('oranje');
insert into verschillende_kleuren (kleur) values ('groen');
insert into verschillende_kleuren (kleur) values ('roze');
insert into verschillende_kleuren (kleur) values ('bruin');
insert into verschillende_kleuren (kleur) values ('blauw');
insert into verschillende_kleuren (kleur) values ('rood');
insert into verschillende_kleuren (kleur) values ('geel');

-- kleur van schoen tabel
insert into kleur_schoen (schoen_id, kleur_id) values (1, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (1, 3);
insert into kleur_schoen (schoen_id, kleur_id) values (1, 5);
insert into kleur_schoen (schoen_id, kleur_id) values (1, 7);

insert into kleur_schoen (schoen_id, kleur_id) values (2, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (2, 10);
insert into kleur_schoen (schoen_id, kleur_id) values (2, 6);
insert into kleur_schoen (schoen_id, kleur_id) values (2, 11);
insert into kleur_schoen (schoen_id, kleur_id) values (2, 1);

insert into kleur_schoen (schoen_id, kleur_id) values (3, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (3, 4);
insert into kleur_schoen (schoen_id, kleur_id) values (3, 6);

insert into kleur_schoen (schoen_id, kleur_id) values (4, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (4, 12);
insert into kleur_schoen (schoen_id, kleur_id) values (4, 10);
insert into kleur_schoen (schoen_id, kleur_id) values (4, 8);
insert into kleur_schoen (schoen_id, kleur_id) values (4, 1);

insert into kleur_schoen (schoen_id, kleur_id) values (5, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (5, 7);
insert into kleur_schoen (schoen_id, kleur_id) values (5, 8);
insert into kleur_schoen (schoen_id, kleur_id) values (5, 4);
insert into kleur_schoen (schoen_id, kleur_id) values (5, 1);

insert into kleur_schoen (schoen_id, kleur_id) values (6, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (6, 4);
insert into kleur_schoen (schoen_id, kleur_id) values (6, 5);

insert into kleur_schoen (schoen_id, kleur_id) values (7, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (7, 4);
insert into kleur_schoen (schoen_id, kleur_id) values (7, 9);

insert into kleur_schoen (schoen_id, kleur_id) values (8, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (8, 3);
insert into kleur_schoen (schoen_id, kleur_id) values (8, 5);

insert into kleur_schoen (schoen_id, kleur_id) values (9, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (9, 3);
insert into kleur_schoen (schoen_id, kleur_id) values (9, 5);

insert into kleur_schoen (schoen_id, kleur_id) values (10, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (10, 4);
insert into kleur_schoen (schoen_id, kleur_id) values (10, 5);

insert into kleur_schoen (schoen_id, kleur_id) values (11, 4);
insert into kleur_schoen (schoen_id, kleur_id) values (11, 2);

insert into kleur_schoen (schoen_id, kleur_id) values (12, 2);
insert into kleur_schoen (schoen_id, kleur_id) values (12, 11);
insert into kleur_schoen (schoen_id, kleur_id) values (12, 3);
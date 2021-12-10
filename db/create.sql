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
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('RS-FAST TECH UNISEX - sneakers laag Puma', 'schoen van Laura', '816905633-0', 109.99, 3, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('X-RAY 2 Square - sneakers laag Puma', 'schoen van Eline', '077030122-3', 59.99, 3, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Nike Air Force 1 First Use - sneakers laag Nike', 'schoen van Veerle', '445924201-X', 109.99, 1, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Nike Air Force 1 Shadow - sneakers laag Nike', 'schoen 1', '693155505-7', 109.95, 1, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Adidas Rivalry - Low Premium', 'schoen 2', '492662523-7', 99.99, 1, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('TEN SHOES MID - sneakers hoog Adidas Originals', 'schoen Nienke', '492662523-7', 89.95, 1, 2);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Vans bold NI cheetah - sneakers laag', 'schoen van robin', '592662523-7', 59.99, 1, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Blazer Low 77 VNTG - Nike', 'schoen van laura', '686928463-6', 89.99, 3, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Air Jordan 1 - Nike', 'schoen van elise', '786928463-6', 199.99, 3, 2);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('OZWEEGO - sneakers laag Adidas Originals', 'schoen van Dzana', '583978399-5', 99.95, 3, 1);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('Raw Earth Camo Chuck Taylor All Star - sneakers laag Converse', 'schoen van Indy', '583964599-3', 94.99, 1, 2);
insert into products (name, description, code, price, geslacht_id, hoogte_id) values ('550 - sneakers laag New Balance', 'schoen 2', '58334599-3', , 3, 1);

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
insert into kleur_schoen (schoen_id, kleur_id) values (12, 3)
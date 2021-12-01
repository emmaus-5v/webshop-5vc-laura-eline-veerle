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
  geslacht_id INTEGER
  hoogte_id
);

CREATE TABLE geslacht (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  geslacht_teken TEXT
  geslacht_naam TEXT
);

CREATE TABLE hoogte (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  hoogte TEXT
);

CREATE TABLE verschillende_kleuren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur TEXT
);

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
insert into products (name, description, code, price) values ('RS-FAST TECH UNISEX - sneakers laag Puma', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '816905633-0', 109.99);
insert into products (name, description, code, price) values ('X-RAY 2 Square - sneakers laag Puma', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '077030122-3', 59.99);
insert into products (name, description, code, price) values ('Nike Air Force 1 First Use - sneakers laag Nike', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '445924201-X', 109.99);
insert into products (name, description, code, price) values ('Nike Air Force 1 Shadow - sneakers laag Nike', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '693155505-7', 109.95);
insert into products (name, description, code, price) values ('andere schoen', 'discription' '686928463-6', 14);
insert into products (name, description, code, price) values ('Adidas Rivalry - Low Premium', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 99.99);

insert into products (name, description, code, price) values ('vans Robin', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 89.95);
insert into products (name, description, code, price) values ('Vans bold NI cheetah - sneakers laag', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue,Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 59.99);

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

-- kleur van schoen tabel


# završni rad
# sipanje
# c:\xampp\mysql\bin\mysql -umario -pmario --default_character_set=utf8 < "C:\Edunova\Zavrsni\hotel.sql"

drop database if exists hotel;
create database hotel default character set utf8;
use hotel;



create table soba(
sifra int not null primary key auto_increment,
vrstasobe int not null,
slikasobe int not null,
opissobe text,
hotel int not null
);


create table hotel(
sifra int  not null primary key auto_increment,
ime varchar(50) not null,
grad varchar(50) not null,
drzava varchar(50) not null
);


create table vrstasobe(
sifra int not null primary key auto_increment,
imesobe varchar(50) not null,
cijenasobe decimal(18,2)
);

create table slikasobe(
sifra int not null primary key auto_increment,
slika varchar(50) not null
);


create table rezervacija(
sifra int not null primary key auto_increment,
kupac int not null,
placanje int not null,
datumprijave datetime not null,
datumodjave datetime not null,
soba int not null
);


create table kupac(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
adresa varchar(50) not null,
grad varchar(50) not null,
drzava varchar(50) not null,
kontakt varchar(50) not null
);

create table placanje(
sifra int not null primary key auto_increment,
kupac int not null,
rezervacija boolean null,
nacinplacanja boolean not null
);


alter table soba add foreign key (hotel) references hotel(sifra);

alter table soba add foreign key (vrstasobe) references vrstasobe(sifra);
alter table soba add foreign key (slikasobe) references slikasobe(sifra);

alter table rezervacija add foreign key (kupac) references kupac(sifra);
alter table rezervacija add foreign key (placanje) references placanje(sifra);
alter table rezervacija add foreign key (soba) references soba(sifra);


INSERT INTO hotel.kupac
(ime, prezime, adresa, grad, drzava, kontakt)
VALUES('Pero', 'Perić', 'Vukovarska 11', 'Osijek', 'Hrvatska', 'pero1@gmail.com');
INSERT INTO hotel.kupac
(ime, prezime, adresa, grad, drzava, kontakt)
VALUES('Tomo', 'Tomić', 'Osječka 11', 'Vukovar', 'Hrvatska', 'tomo@gmail.com');
INSERT INTO hotel.kupac
(ime, prezime, adresa, grad, drzava, kontakt)
VALUES('Ivo', 'Ivić', 'Slavonska 11', 'Vinkovci', 'Hrvatska', 'ivo@gmail.com');

INSERT INTO hotel.placanje
(kupac, rezervacija, nacinplacanja)
VALUES(1, 1, 0);

INSERT INTO hotel.rezervacija
(kupac, placanje, datumprijave, datumodjave, soba)
VALUES(1, 1, '', '', 2);

INSERT INTO hotel.soba
(vrstasobe, slikasobe, opissobe, hotel)
VALUES(1, 0, 'soba s 3 zvjezdice', 0);
INSERT INTO hotel.soba
(vrstasobe, slikasobe, opissobe, hotel)
VALUES(1, 0, 'soba s 3 zvjezdice', 0);
INSERT INTO hotel.soba
(vrstasobe, slikasobe, opissobe, hotel)
VALUES(1, 0, 'soba s 3 zvjezdice', 0);
INSERT INTO hotel.soba
(vrstasobe, slikasobe, opissobe, hotel)
VALUES(2, 0, 'soba s 4 zvjezdice', 0);
INSERT INTO hotel.soba
(vrstasobe, slikasobe, opissobe, hotel)
VALUES(2, 0, 'soba s 4 zvjezdice', 0);
INSERT INTO hotel.soba
(vrstasobe, slikasobe, opissobe, hotel)
VALUES(2, 0, 'soba s 4 zvjezdice', 0);
INSERT INTO hotel.soba
(vrstasobe, slikasobe, opissobe, hotel)
VALUES(3, 0, 'apartman s 5 zvjezdica', 0);
INSERT INTO hotel.soba
(vrstasobe, slikasobe, opissobe, hotel)
VALUES(3, 0, 'apartman s 5 zvjezdica', 0);

INSERT INTO hotel.vrstasobe
(imesobe, cijenasobe)
VALUES('3 zvjezdice', 500,00);
INSERT INTO hotel.vrstasobe
(imesobe, cijenasobe)
VALUES('4 zvjezdice', 900,00;
INSERT INTO hotel.vrstasobe
(imesobe, cijenasobe)
VALUES('5 zvjezdica', 1500,00);






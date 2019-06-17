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
rezervacija int not null,
nacinplacanja boolean not null
);


alter table soba add foreign key (hotel) references hotel(sifra);

alter table soba add foreign key (vrstasobe) references vrstasobe(sifra);
alter table soba add foreign key (slikasobe) references slikasobe(sifra);

alter table rezervacija add foreign key (kupac) references kupac(sifra);
alter table rezervacija add foreign key (placanje) references placanje(sifra);
alter table rezervacija add foreign key (soba) references soba(sifra);








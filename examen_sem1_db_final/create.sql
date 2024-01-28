---SQL syntax for create tables

create table Autocar(
id_autocar INT primary key,
marca_autocar VARCHAR(50),
numar_locuri INT,
consum VARCHAR(50),
sofer VARCHAR(50),
an_fabricatie VARCHAR(50),
greutate INT,
norma_poluare INT,
capacitate_motor INT,
tip_combustibil VARCHAR(50)
);

create table Flota(
id_flota INT primary key,
id_autocar INT,
foreign key (id_autocar) REFERENCES Autocar(id_autocar) ON DELETE CASCADE
);


create table Meci(
id_meci INT primary key,
nume_echipa1 VARCHAR(50),
nume_echipa2 VARCHAR(50),
scor VARCHAR(50),
locatie VARCHAR(50),
ora TIME,
numar_spectatori INT,
numar_cartonase INT,
obs_meci VARCHAR(50)
);

create table Etapa(
id_etapa INT primary key,
id_meci INT,
foreign key (id_meci) REFERENCES Meci(id_meci) ON DELETE CASCADE
);

create table Liga(
id_liga INT primary key,
id_etapa INT,
foreign key (id_etapa) REFERENCES Etapa(id_etapa) ON DELETE CASCADE
);

create table Stadion (
id_stadion INT primary key,
nume_stadion VARCHAR(50),
an_constructie DATE,
numar_locuri INT,
tip_iluminare VARCHAR(50),
tip_gazon VARCHAR(50)
);

create table Academie (
id_academie INT primary key,
nume_academie VARCHAR(50),
numar_copii INT,
limita_varsta INT
);

create table Echipa	(
id_echipa INT primary key,
nume_echipa VARCHAR(50),
id_liga INT, 
id_stadion INT,
id_academie INT,
id_flota INT,
foreign key (id_flota) REFERENCES Flota(id_flota) ON DELETE CASCADE,
foreign key (id_academie) REFERENCES Academie(id_academie) ON DELETE CASCADE,
foreign key (id_liga) REFERENCES Liga(id_liga)ON DELETE CASCADE,
foreign key (id_stadion) REFERENCES Stadion(id_stadion) ON DELETE CASCADE
);

create table Personal (
id_personal INT primary key,
nume_personal VARCHAR(50),
prenume_personal VARCHAR(50),
id_echipa INT,
functie VARCHAR(50),
anul_nasterii DATE,
ani_experienta INT,
foreign key (id_echipa) REFERENCES Echipa(id_echipa) ON DELETE CASCADE
);

create table Sponsor(
id_sponsor INT primary key,
nume_sponsor VARCHAR(50),
domeniu_activitate VARCHAR(50),
id_echipa INT,
buget_anual VARCHAR(50),
cifra_afaceri VARCHAR(50),
experienta INT,
foreign key (id_echipa) REFERENCES Echipa(id_echipa) ON DELETE CASCADE
);

create table Jucator(
id_jucator INT primary key,
prenume VARCHAR(50),
nume VARCHAR(50),
id_echipa INT,
pozitie VARCHAR(50),
numar_trofee INT,
an_nastere DATE,
numar_tricou INT,
foreign key (id_echipa) REFERENCES Echipa(id_echipa) ON DELETE CASCADE
);

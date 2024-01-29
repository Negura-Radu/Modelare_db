---SQL syntax for select data, Min 10 selecturi pe tabela

SELECT * FROM Autocar;

SELECT marca_autocar, numar_locuri FROM Autocar;

SELECT DISTINCT consum FROM Autocar;

SELECT * FROM Autocar WHERE numar_locuri > 50;

SELECT * FROM Autocar WHERE an_fabricatie > '2010';

SELECT * FROM Autocar WHERE tip_combustibil = 'Diesel';

SELECT * FROM Autocar WHERE greutate > 5000;

SELECT * FROM Autocar WHERE capacitate_motor = 2000;

SELECT * FROM Autocar WHERE norma_poluare = 5;

SELECT * FROM Autocar WHERE sofer = 'Ion Popescu';

SELECT * FROM Meci;

SELECT nume_echipa1, nume_echipa2, locatie FROM Meci;

SELECT DISTINCT locatie FROM Meci;

SELECT * FROM Meci WHERE numar_spectatori > 5000;

SELECT * FROM Meci WHERE scor = '3-1';

SELECT * FROM Meci WHERE numar_cartonase > 2;

SELECT * FROM Meci WHERE obs_meci = 'Rainy weather';

SELECT * FROM Meci WHERE ora > '18:00:00';

SELECT * FROM Meci WHERE nume_echipa1 = 'Barcelona' OR nume_echipa2 = 'Barcelona';

SELECT * FROM Meci WHERE locatie = 'Stadium A';

SELECT * FROM Stadion;

SELECT nume_stadion, an_constructie, numar_locuri FROM Stadion;

SELECT DISTINCT tip_iluminare FROM Stadion;

SELECT * FROM Stadion WHERE numar_locuri > 20000;

SELECT * FROM Stadion WHERE an_constructie > '2010-01-01';

SELECT * FROM Stadion WHERE tip_gazon = 'Natural Grass';

SELECT * FROM Stadion WHERE tip_iluminare = 'LED';

SELECT * FROM Stadion WHERE numar_locuri < 10000 AND an_constructie < '2000-01-01';

SELECT * FROM Stadion WHERE nume_stadion = 'Arena1';

SELECT * FROM Stadion WHERE tip_iluminare = 'Floodlights';

SELECT * FROM Academie;

SELECT nume_academie, numar_copii, limita_varsta FROM Academie;

SELECT DISTINCT limita_varsta FROM Academie;

SELECT * FROM Academie WHERE numar_copii > 50;

SELECT * FROM Academie WHERE limita_varsta = 10;

SELECT * FROM Academie WHERE numar_copii < 30 AND limita_varsta = 12;

SELECT * FROM Academie WHERE nume_academie = 'Football Academy';

SELECT * FROM Academie WHERE limita_varsta > 8;

SELECT * FROM Academie WHERE numar_copii > 40 AND limita_varsta = 14;

SELECT * FROM Academie WHERE nume_academie = 'Basketball Academy';

SELECT * FROM Echipa;

SELECT nume_echipa, id_liga, id_stadion, id_academie, id_flota FROM Echipa;

SELECT DISTINCT nume_echipa FROM Echipa;

SELECT * FROM Echipa WHERE id_liga = (SELECT id_liga FROM Liga WHERE id_liga = 1);

SELECT * FROM Echipa WHERE id_stadion = (SELECT id_stadion FROM Stadion WHERE nume_stadion = 'Stadium A');

SELECT * FROM Echipa WHERE id_academie = (SELECT id_academie FROM Academie WHERE nume_academie = 'Football Academy');

SELECT * FROM Echipa WHERE id_echipa IN (SELECT id_echipa FROM Jucator GROUP BY id_echipa HAVING COUNT(*) > 30);

SELECT * FROM Echipa WHERE id_flota = (SELECT id_flota FROM Flota WHERE id_flota = 3);

SELECT * FROM Echipa WHERE id_echipa IN (SELECT id_echipa FROM Jucator WHERE an_nastere > '1995-01-01');

SELECT * FROM Echipa WHERE id_echipa IN (SELECT id_echipa FROM Sponsor WHERE id_sponsor = (SELECT id_sponsor FROM Sponsor WHERE nume_sponsor = 'Sports Sponsorship Inc.'));

SELECT * FROM Personal;

SELECT nume_personal, prenume_personal, functie FROM Personal;

SELECT DISTINCT functie FROM Personal;

SELECT * FROM Personal WHERE anul_nasterii > '1980-01-01';

SELECT * FROM Personal WHERE ani_experienta > 10;

SELECT * FROM Personal WHERE functie = 'Coach';

SELECT * FROM Personal WHERE id_echipa = (SELECT id_echipa FROM Echipa WHERE nume_echipa = 'Football Club A');

SELECT * FROM Personal WHERE ani_experienta < 5 AND anul_nasterii > '1990-01-01';

SELECT * FROM Personal WHERE functie = 'Physiotherapist' AND id_echipa = (SELECT id_echipa FROM Echipa WHERE nume_echipa = 'FC B');

SELECT * FROM Personal WHERE ani_experienta > 8 AND anul_nasterii > '1985-03-02';

SELECT * FROM Sponsor;

SELECT nume_sponsor, domeniu_activitate, buget_anual FROM Sponsor;

SELECT DISTINCT domeniu_activitate FROM Sponsor;

SELECT * FROM Sponsor WHERE buget_anual > '500000';

SELECT * FROM Sponsor WHERE domeniu_activitate = 'Sports Apparel';

SELECT * FROM Sponsor WHERE buget_anual < '1000000' AND domeniu_activitate = 'Automotive';

SELECT * FROM Sponsor WHERE experienta > '3';

SELECT * FROM Sponsor WHERE id_echipa = (SELECT id_echipa FROM Echipa WHERE nume_echipa = 'Football Club A');

SELECT * FROM Sponsor WHERE buget_anual BETWEEN '200000' AND '500000';

SELECT * FROM Sponsor WHERE nume_sponsor = 'ABC Corp';

SELECT * FROM Jucator;

SELECT prenume, nume, pozitie FROM Jucator;

SELECT DISTINCT pozitie FROM Jucator;

SELECT * FROM Jucator WHERE an_nastere > '1992-01-01' AND pozitie = 'Striker';

SELECT * FROM Jucator WHERE numar_trofee > 5;

SELECT * FROM Jucator WHERE id_echipa = (SELECT id_echipa FROM Echipa WHERE nume_echipa = 'Football Club A');

SELECT * FROM Jucator WHERE numar_tricou = 10;

SELECT * FROM Jucator WHERE pozitie = 'Midfielder';

SELECT * FROM Jucator WHERE numar_trofee > 30 AND an_nastere < '1985-01-01';

SELECT * FROM Jucator WHERE nume = 'Smith';
---SQL syntax for delete data, min 5 delete per tabela

DELETE FROM Autocar WHERE numar_locuri < 30;

DELETE FROM Autocar WHERE an_fabricatie = '2020';

DELETE FROM Autocar WHERE norma_poluare = 3;

DELETE FROM Autocar WHERE sofer = 'Jane Doe';

DELETE FROM Autocar WHERE greutate > 6000;

DELETE FROM Meci WHERE scor = '0-0';

DELETE FROM Meci WHERE numar_spectatori < 2000;

DELETE FROM Meci WHERE obs_meci = 'Cancelled';

DELETE FROM Meci WHERE ora > '22:00:00';

DELETE FROM Meci WHERE nume_echipa1 = 'Real Madrid' OR nume_echipa2 = 'Real Madrid';

DELETE FROM Stadion WHERE tip_gazon = 'Natural Grass';

DELETE FROM Stadion WHERE numar_locuri < 5000;

DELETE FROM Stadion WHERE an_constructie < '1990-01-01';

DELETE FROM Stadion WHERE tip_iluminare = 'Floodlights';

DELETE FROM Stadion WHERE numar_locuri > 30000;

DELETE FROM Academie WHERE numar_copii < 20;

DELETE FROM Academie WHERE limita_varsta = 14;
 
DELETE FROM Academie WHERE nume_academie = 'Gymnastics Academy';

DELETE FROM Academie WHERE numar_copii > 50 AND limita_varsta = 16;

DELETE FROM Academie WHERE nume_academie = 'Football Academy';

DELETE FROM Echipa WHERE id_echipa IN (SELECT id_echipa FROM Jucator GROUP BY id_echipa HAVING COUNT(*) < 20);

DELETE FROM Echipa WHERE id_stadion = (SELECT id_stadion FROM Stadion WHERE nume_stadion = 'Stadium D');
 
DELETE FROM Echipa WHERE id_academie = (SELECT id_academie FROM Academie WHERE nume_academie = 'Gymnastics Academy');

DELETE FROM Echipa WHERE id_flota = (SELECT id_flota FROM Flota WHERE id_flota = 5);

DELETE FROM Echipa WHERE id_echipa IN (SELECT id_echipa FROM Sponsor WHERE id_sponsor = (SELECT id_sponsor FROM Sponsor WHERE nume_sponsor = 'Soccer Sponsorship Ltd.'));

DELETE FROM Personal WHERE anul_nasterii < '1970-01-01';

DELETE FROM Personal WHERE functie = 'Security';

DELETE FROM Personal WHERE id_echipa = (SELECT id_echipa FROM Echipa WHERE nume_echipa = 'FC C');

DELETE FROM Personal WHERE ani_experienta > 20;

DELETE FROM Personal WHERE id_echipa IN (SELECT id_echipa FROM Echipa WHERE id_flota = (SELECT id_flota FROM Flota WHERE id_flota = 4));

DELETE FROM Sponsor WHERE buget_anual < '100000';

DELETE FROM Sponsor WHERE domeniu_activitate = 'Fashion Retail';

DELETE FROM Sponsor WHERE buget_anual < '300000' AND domeniu_activitate = 'Software';

DELETE FROM Sponsor WHERE experienta > '8';

DELETE FROM Sponsor WHERE id_echipa = (SELECT id_echipa FROM Echipa WHERE nume_echipa = 'FC C');

DELETE FROM Jucator WHERE an_nastere < '1980-01-01' AND numar_trofee < 5;

DELETE FROM Jucator WHERE numar_tricou = 12;

DELETE FROM Jucator WHERE id_echipa = (SELECT id_echipa FROM Echipa WHERE nume_echipa = 'FC B');

DELETE FROM Jucator WHERE numar_trofee > 25;

DELETE FROM Jucator WHERE nume = 'Johnson';


---SQL syntax for update data, Min 10 updates per tabela

UPDATE Autocar SET consum = 'Gasoline' WHERE tip_combustibil = 'Petrol';

UPDATE Autocar SET numar_locuri = 60 WHERE an_fabricatie > '2015';

UPDATE Autocar SET greutate = 5800 WHERE norma_poluare = 4;

UPDATE Autocar SET tip_combustibil = 'Electric' WHERE greutate < 5000;

UPDATE Autocar SET an_fabricatie = '2018' WHERE tip_combustibil = 'Diesel';

UPDATE Autocar SET capacitate_motor = 2500 WHERE numar_locuri > 50;

UPDATE Autocar SET norma_poluare = 6 WHERE tip_combustibil = 'Gasoline';

UPDATE Autocar SET sofer = 'Jane Doe' WHERE sofer = 'John Doe';

UPDATE Autocar SET consum = 'High Octane' WHERE tip_combustibil = 'Gasoline';

UPDATE Autocar SET numar_locuri = 40 WHERE tip_combustibil = 'Electric';

UPDATE Meci SET scor = '2-2' WHERE nume_echipa1 = 'Manchester United' OR nume_echipa2 = 'Manchester United';

UPDATE Meci SET numar_spectatori = 12000 WHERE numar_spectatori > 10000;

UPDATE Meci SET locatie = 'Indoor Stadium' WHERE obs_meci = 'Rainy weather';

UPDATE Meci SET ora = '17:30:00' WHERE ora < '16:00:00';

UPDATE Meci SET numar_cartonase = 3 WHERE numar_cartonase > 3;

UPDATE Meci SET numar_cartonase = 0 WHERE obs_meci = 'Suspended';

UPDATE Meci SET scor = '2-1' WHERE obs_meci = 'Extra Time';

UPDATE Meci SET ora = '19:45:00' WHERE ora > '20:00:00';

UPDATE Meci SET locatie = 'Neutral Ground' WHERE locatie = 'TBD';

UPDATE Meci SET numar_spectatori = 6000 WHERE numar_spectatori < 5000;

UPDATE Stadion SET numar_locuri = 25000 WHERE tip_gazon = 'Natural Grass';

UPDATE Stadion SET tip_gazon = 'Artificial Turf' WHERE numar_locuri > 30000;

UPDATE Stadion SET an_constructie = '2015-01-01' WHERE tip_iluminare = 'LED';

UPDATE Stadion SET tip_iluminare = 'Floodlights' WHERE numar_locuri < 15000;

UPDATE Stadion SET numar_locuri = 20000 WHERE tip_gazon = 'Artificial Turf';

UPDATE Stadion SET tip_iluminare = 'LED' WHERE tip_iluminare = 'Halogen';

UPDATE Stadion SET numar_locuri = 35000 WHERE an_constructie > '2018-01-01';

UPDATE Stadion SET tip_gazon = 'Hybrid Grass' WHERE tip_gazon = 'Artificial Turf';

UPDATE Stadion SET an_constructie = '2005-01-01' WHERE tip_gazon = 'Natural Grass';

UPDATE Stadion SET numar_locuri = 30000 WHERE tip_iluminare = 'LED';

UPDATE Academie SET nume_academie = 'Football Academy' WHERE nume_academie = 'Soccer Academy';

UPDATE Academie SET limita_varsta = 16 WHERE nume_academie = 'Tennis Academy';

UPDATE Academie SET numar_copii = 60 WHERE limita_varsta = 10;
 
UPDATE Academie SET limita_varsta = 12 WHERE numar_copii > 30;

UPDATE Academie SET nume_academie = 'Basketball Training Center' WHERE nume_academie = 'Basketball Academy';

UPDATE Academie SET numar_copii = 70 WHERE nume_academie = 'Football Academy';

UPDATE Academie SET limita_varsta = 14 WHERE nume_academie = 'Basketball Training Center';

UPDATE Academie SET nume_academie = 'Tennis Training Center' WHERE nume_academie = 'Tennis Academy';

UPDATE Academie SET limita_varsta = 13 WHERE numar_copii > 40;

UPDATE Academie SET numar_copii = 30 WHERE nume_academie = 'Gymnastics Academy';

UPDATE Echipa SET nume_echipa = 'Football Club A' WHERE nume_echipa = 'Team A';

UPDATE Echipa SET id_stadion = (SELECT id_stadion FROM Stadion WHERE nume_stadion = 'Stadium C') WHERE id_stadion = (SELECT id_stadion FROM Stadion WHERE nume_stadion = 'Stadium B');

UPDATE Echipa SET id_academie = (SELECT id_academie FROM Academie WHERE nume_academie = 'Basketball Training Center') WHERE id_academie = (SELECT id_academie FROM Academie WHERE nume_academie = 'Basketball Academy');

UPDATE Echipa SET id_flota = (SELECT id_flota FROM Flota WHERE id_flota = 3) WHERE id_flota = (SELECT id_flota FROM Flota WHERE id_flota = 5);

UPDATE Echipa SET nume_echipa = 'FC B' WHERE nume_echipa = 'Football Club B';

UPDATE Echipa SET nume_echipa = 'Football Club C' WHERE nume_echipa = 'FC C';

UPDATE Echipa SET id_stadion = (SELECT id_stadion FROM Stadion WHERE nume_stadion = 'Stadium F') WHERE id_stadion = (SELECT id_stadion FROM Stadion WHERE nume_stadion = 'Stadium E');

UPDATE Echipa SET id_academie = (SELECT id_academie FROM Academie WHERE nume_academie = 'Tennis Academy') WHERE id_academie = (SELECT id_academie FROM Academie WHERE nume_academie = 'Tennis Training Center');
 
UPDATE Echipa SET id_flota = (SELECT id_flota FROM Flota WHERE id_flota = 2) WHERE id_flota = (SELECT id_flota FROM Flota WHERE id_flota = 2);

UPDATE Echipa SET nume_echipa = 'FC D' WHERE nume_echipa = 'Football Club D';

UPDATE Personal SET functie = 'Assistant Manager' WHERE functie = 'Assistant Coach';

UPDATE Personal SET ani_experienta = 16 WHERE ani_experienta > 15;

UPDATE Personal SET functie = 'Medical Director' WHERE functie = 'Team Doctor';

UPDATE Personal SET ani_experienta = 4 WHERE ani_experienta < 3;

UPDATE Personal SET functie = 'Physical Therapist' WHERE functie = 'Physiotherapist';

UPDATE Personal SET functie = 'Logistics Manager' WHERE functie = 'Logistics';

UPDATE Personal SET ani_experienta = 18 WHERE functie = 'Medical Director';

UPDATE Personal SET functie = 'Data Scientist' WHERE functie = 'Technical Analyst';

UPDATE Personal SET ani_experienta = 8 WHERE ani_experienta < 7;

UPDATE Personal SET functie = 'Sports Physiotherapist' WHERE functie = 'Physical Therapist';

UPDATE Sponsor SET buget_anual = '1200000' WHERE nume_sponsor = 'XYZ Ltd.';

UPDATE Sponsor SET domeniu_activitate = 'Technology Services' WHERE domeniu_activitate = 'Tech Company';

UPDATE Sponsor SET buget_anual = '800000' WHERE experienta > '5';

UPDATE Sponsor SET domeniu_activitate = 'Culinary Services' WHERE domeniu_activitate = 'Food & Beverage';

UPDATE Sponsor SET buget_anual = '600000' WHERE domeniu_activitate = 'Sports Apparel';

UPDATE Sponsor SET buget_anual = '700000' WHERE nume_sponsor = 'ABC Corp';

UPDATE Sponsor SET domeniu_activitate = 'Automotive Solutions' WHERE domeniu_activitate = 'Automotive';

UPDATE Sponsor SET buget_anual = '500000' WHERE experienta > '4';

UPDATE Sponsor SET domeniu_activitate = 'IT Solutions' WHERE domeniu_activitate = 'Technology Services';

UPDATE Sponsor SET buget_anual = '750000' WHERE domeniu_activitate = 'Culinary Services';

UPDATE Jucator SET pozitie = 'Center-Back' WHERE pozitie = 'Defender';

UPDATE Jucator SET numar_tricou = 7 WHERE numar_tricou = 20;

UPDATE Jucator SET pozitie = 'Goalie' WHERE pozitie = 'Goalkeeper';

UPDATE Jucator SET numar_trofee = 18 WHERE numar_trofee > 15;

UPDATE Jucator SET prenume = 'Jonathan' WHERE prenume = 'John';

UPDATE Jucator SET prenume = 'Jon' WHERE prenume = 'Jonathan';

UPDATE Jucator SET pozitie = 'Central Midfielder' WHERE pozitie = 'Midfielder';

UPDATE Jucator SET numar_trofee = 12 WHERE numar_trofee < 10;

UPDATE Jucator SET numar_tricou = 15 WHERE numar_tricou = 5;

UPDATE Jucator SET prenume = 'Jamie' WHERE prenume = 'James';
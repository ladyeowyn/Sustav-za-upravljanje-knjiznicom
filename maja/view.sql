CREATE VIEW dodano_u_zadnjih_god_dana AS
SELECT *
FROM Inventar
WHERE DatumNabavke >= CURDATE() - INTERVAL 1 YEAR;

SELECT * 
FROM dodano_u_zadnjih_god_dana
WHERE Stanje = 'Oštećeno';


CREATE VIEW knjige_stanje AS
SELECT 
    i.Stanje,
    COUNT(*) AS BrojKnjiga
FROM Inventar i
GROUP BY i.Stanje;

SELECT * 
FROM knjige_stanje;


CREATE VIEW naslovi_po_stanju AS
SELECT 
    k.Naslov,
    i.Stanje,
    i.DatumNabavke
FROM Inventar i
JOIN Knjige k ON i.KnjigaID = k.KnjigaID
ORDER BY i.Stanje, i.DatumNabavke;

SELECT * 
FROM naslovi_po_stanju
WHERE Stanje = 'Oštećeno'
ORDER BY DatumNabavke DESC;


CREATE VIEW dogadaji_s_naslovima AS
SELECT 
    d.NazivDogadaja,
    d.Datum,
    k.Naslov AS NaslovKnjige
FROM KnjigaDogadaji kd
JOIN Dogadaji d ON kd.DogadajID = d.DogadajID
JOIN Knjige k ON kd.KnjigaID = k.KnjigaID
ORDER BY d.Datum;

SELECT * 
FROM dogadaji_s_naslovima
ORDER BY Datum DESC;

SELECT * 
FROM dogadaji_s_naslovima
WHERE NazivDogadaja = 'Noć knjige';


CREATE VIEW broj_knjiga_po_dogadaju AS
SELECT 
    d.NazivDogadaja,
    d.Datum,
    COUNT(kd.KnjigaID) AS BrojKnjiga
FROM Dogadaji d
LEFT JOIN KnjigaDogadaji kd ON d.DogadajID = kd.DogadajID
GROUP BY d.DogadajID, d.NazivDogadaja, d.Datum;

SELECT * 
FROM broj_knjiga_po_dogadaju
ORDER BY Datum DESC, BrojKnjiga DESC
LIMIT 10;

SELECT * 
FROM broj_knjiga_po_dogadaju
WHERE BrojKnjiga > 1;

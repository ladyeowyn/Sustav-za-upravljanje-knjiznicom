USE knjiznicadb;
-- Ukupna kazna po članu s podacima o broju posudbi i zakašnjenjima
CREATE VIEW KaznePoClanuDetaljno AS
SELECT 
    c.ClanID,
    c.Ime,
    c.Prezime,
    COUNT(DISTINCT p.PosudbaID) AS BrojPosudbi,
    COUNT(DISTINCT k.KaznaID) AS BrojKazni,
    SUM(k.Iznos) AS UkupnaKazna
FROM kazne k
JOIN posudbe p ON k.PosudbaID = p.PosudbaID
JOIN clanovi c ON p.ClanID = c.ClanID
GROUP BY c.ClanID, c.Ime, c.Prezime
HAVING UkupnaKazna > 0
ORDER BY UkupnaKazna DESC;

-- Kazne po mjesecu i godini
CREATE VIEW KaznePoMjesecu AS
SELECT 
    YEAR(k.DatumIzdavanja) AS Godina,
    MONTH(k.DatumIzdavanja) AS Mjesec,
    COUNT(*) AS BrojKazni,
    SUM(k.Iznos) AS UkupanIznos
FROM kazne k
GROUP BY Godina, Mjesec
ORDER BY Godina DESC, Mjesec DESC;

-- Rezervacije koje nisu realizirane posudbom (neaktivne rezervacije)
CREATE VIEW NerealiziraneRezervacije AS
SELECT 
    r.RezervacijaID,
    r.DatumRezervacije,
    c.Ime,
    c.Prezime,
    k.Naslov
FROM rezervacije r
JOIN clanovi c ON r.ClanID = c.ClanID
JOIN knjige k ON r.KnjigaID = k.KnjigaID
LEFT JOIN posudbe p 
    ON r.ClanID = p.ClanID 
    AND r.KnjigaID = p.KnjigaID 
    AND DATE(p.DatumPosudbe) BETWEEN DATE(r.DatumRezervacije) AND DATE_ADD(r.DatumRezervacije, INTERVAL 7 DAY)
WHERE p.PosudbaID IS NULL
ORDER BY r.DatumRezervacije DESC;

-- Popularnost kategorija
CREATE VIEW PopularnostKategorija AS
SELECT 
    kat.Naziv AS Kategorija,
    COUNT(DISTINCT p.PosudbaID) AS BrojPosudbi,
    COUNT(DISTINCT r.RezervacijaID) AS BrojRezervacija
FROM kategorije kat
JOIN knjige k ON kat.KategorijaID = k.KategorijaID
LEFT JOIN posudbe p ON p.KnjigaID = k.KnjigaID
LEFT JOIN rezervacije r ON r.KnjigaID = k.KnjigaID
GROUP BY kat.Naziv;

-- Prosječno trajanje posudbi po kategoriji
CREATE VIEW ProsjecnoZadrzavanjePoKategoriji AS
SELECT 
    kat.Naziv AS Kategorija,
    ROUND(AVG(DATEDIFF(p.DatumVracanja, p.DatumPosudbe)), 1) AS ProsjecniBrojDana
FROM kategorije kat
JOIN knjige k ON kat.KategorijaID = k.KategorijaID
JOIN posudbe p ON p.KnjigaID = k.KnjigaID
WHERE p.DatumVracanja IS NOT NULL
GROUP BY kat.Naziv;



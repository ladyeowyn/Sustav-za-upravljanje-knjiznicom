CREATE VIEW rizicni_clanovi AS
SELECT 
    c.ClanID,                                  	-- ID korisnika
    CONCAT(c.Ime, ' ', c.Prezime) AS Clan,     	-- ime + prezime
    COUNT(*) AS aktivne_posudbe               	-- broj trenutno zaduženih knjiga
FROM Posudbe p
JOIN Clanovi c ON c.ClanID = p.ClanID         	-- pridruži podatke o članu
WHERE p.DatumVracanja IS NULL                  	-- samo posudbe koje još traju
GROUP BY c.ClanID, c.Ime, c.Prezime            	-- grupiramo po članu
HAVING aktivne_posudbe > 3                     	-- filtriramo na >3 aktivne
ORDER BY aktivne_posudbe DESC;


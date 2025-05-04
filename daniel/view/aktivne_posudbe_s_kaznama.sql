CREATE VIEW aktivne_posudbe_s_kaznama AS
SELECT 
    p.PosudbaID,                                  -- ID posudbe
    c.ClanID,                                     -- ID člana
    CONCAT(c.Ime, ' ', c.Prezime) AS Clan,        -- ime i prezime člana
    k.Naslov,                                     -- naslov knjige
    p.DatumPosudbe,                               -- datum kada je knjiga posuđena
    p.RokVracanja,                                -- predviđeni rok vraćanja
    CASE
        WHEN CURDATE() > p.RokVracanja
        THEN TIMESTAMPDIFF(DAY, p.RokVracanja, CURDATE()) * 0.50
        ELSE 0
    END AS IznosKazneEUR                          -- dinamički izračun kazne u €
FROM Posudbe p
JOIN Clanovi c ON c.ClanID = p.ClanID
JOIN Knjige k ON k.KnjigaID = p.KnjigaID
WHERE p.DatumVracanja IS NULL;

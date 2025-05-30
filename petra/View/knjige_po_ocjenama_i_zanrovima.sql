-- View koji prikazuje naslove knjiga sortirane po pripadajućim žanrovima i prosječnim ocjenama

CREATE VIEW Knjige_po_ocjenama_i_zanrovima AS
SELECT 
	k.KnjigaID,										-- ID knjige iz tablice Knjige
    k.Naslov,                      				    -- naslov knjige iz tablice Knjige
    kat.Naziv AS Zanr,                              -- naziv žanra iz tablice Kategorije
    AVG(r.Ocjena) AS Prosjecna_ocjena               -- računanje prosječne ocjene iz tablice Recenzije
FROM 
    Knjige k
INNER JOIN Kategorije kat ON k.KategorijaID = kat.KategorijaID  -- spajanje tablica Knjige i Kategorije po KategorijaID-u
LEFT JOIN Recenzije r ON k.KnjigaID = r.KnjigaID                -- spajanje s tablicom Recenzije 
GROUP BY 
    k.KnjigaID, k.Naslov, kat.Naziv                              -- grupiranje po naslovu i žanru
ORDER BY 
    kat.Naziv ASC,                                   -- abecedno sortiranje po žanru
    Prosjecna_ocjena DESC;                            -- sortiranje po ocjeni (od najveće do najmanje)
    
SELECT * FROM Knjige_po_ocjenama_i_zanrovima;




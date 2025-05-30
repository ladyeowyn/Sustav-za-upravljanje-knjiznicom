-- view koji prikazuju knjige s oštećenim primjercima i ocjenama manjim od 3

CREATE VIEW ostecene_knjige_s_losim_recenzijama AS
SELECT DISTINCT                   -- odabir ID-a i naslova iz tablice Knjige i statusa iz tablice Primjeri i uklanjanje potencijalnih duplikata
    k.KnjigaID,                   
    k.Naslov,                     
    p.Status,                    
    AVG(r.Ocjena) AS prosjecna_ocjena  -- izračunavanje prosječne ocjene recenzije
FROM 
    Knjige k,                    
    Primjeri p,                  
    Recenzije r                  
WHERE 
    k.KnjigaID = p.KnjigaID       -- povezivanje knjige s njenim primjercima
    AND k.KnjigaID = r.KnjigaID   -- povezivanje knjige s njenim recenzijama
    AND p.Status = 'Oštećeno'     -- uzimanje samo oštećenih primjeraka
GROUP BY 
    k.KnjigaID, k.Naslov, p.Status
HAVING 
    AVG(r.Ocjena) < 3             -- prikaz knjiga s prosjecnom ocjenom manjom od 3
ORDER BY
	prosjecna_ocjena ASC;         -- uzlazno sortiranje po prosječnoj ocjeni


SELECT * FROM ostecene_knjige_s_losim_recenzijama;

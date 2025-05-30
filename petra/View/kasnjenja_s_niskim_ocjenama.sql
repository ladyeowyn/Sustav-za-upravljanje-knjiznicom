-- view koji prikazuje knjige s barem 1 kašnjenjem čiji je prosjek ocjena manji od 3

CREATE VIEW kasnjenja_niske_ocjene AS
SELECT 
    k.KnjigaID,
    k.Naslov,
    AVG(r.Ocjena) AS prosjecna_ocjena,								-- računanje prosječne ocjene za svaku knjigu
    COUNT(DISTINCT kv.KasnoVracanjeID) AS broj_kasnjenja            -- brojanje zapisa kasnih vracanja
FROM 
    Knjige k
INNER JOIN Posudbe p ON k.KnjigaID = p.KnjigaID					-- spajanje tablica Posudbe i Knjige preko KnjigaID-a (za dobivanje svih posudbi)
INNER JOIN KasnoVracanje kv ON p.PosudbaID = kv.PosudbaID		-- spajanje tablica kasnoVracanje i Posudbe (za dobivanje kasno vraćenih posudbi)
INNER JOIN Recenzije r ON k.KnjigaID = r.KnjigaID				-- spajanje tablica Recenzije i Knjige za dobivanje ocjena knjiga
GROUP BY 
    k.KnjigaID, k.Naslov
HAVING 
    COUNT(DISTINCT kv.KasnoVracanjeID) >= 1  						-- filtrira barem 1 kasnjenje
    AND AVG(r.Ocjena) < 3;                  					    -- filtrira knjige s prosjekom manjim od 3
    
    
SELECT * FROM kasnjenja_niske_ocjene;

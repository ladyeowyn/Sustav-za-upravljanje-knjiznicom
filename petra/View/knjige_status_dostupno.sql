-- view za knjige sa statusom "dostupno" poredane po imenu autora

CREATE VIEW dostupne_knjige AS
SELECT 
	k.KnjigaID,                           -- odabir id-a knjige, naslova i statusa knjige iz tablice Knjige
    k.Naslov,
    k.Status,
    a.ImePrezime AS Autor				  -- odabir imena autora iz tablice Autori
FROM 
    Knjige k,
    KnjigaAutori ka,
    Autori a
WHERE 
     k.KnjigaID = ka.KnjigaID       	-- povezivanje knjige i autora putem vezne tablice KnjigaAutori
    AND ka.AutorID = a.AutorID     
    AND k.Status = 'dostupno'       	-- odabir knjiga sa statusom "dostupno"                
ORDER BY 
    a.ImePrezime ASC;                    -- sortiranje rezultata po imenu autora
    
    
SELECT * FROM dostupne_knjige;


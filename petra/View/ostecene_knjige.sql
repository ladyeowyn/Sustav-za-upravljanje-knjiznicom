-- view koji stvara popis knjiga s oštećenim primjercima poredanih po broju oštećenih primjeraka i imenu autora

CREATE VIEW popis_ostecenih_knjiga AS
SELECT 
    k.KnjigaID,                          		 -- odabir ID-a i naslova knjige iz tablice Knjige te imena autora iz tablice Autori 
    k.Naslov,                                
    a.ImePrezime AS Autor,                   
    COUNT(p.PrimjerID) AS broj_ostecenih         -- broj oštećenih primjeraka iz tablice Primjeri
FROM 
    Knjige k
INNER JOIN 											-- spajanje tablice Knjige i Primjeri (za brojanje oštećenih primjeraka)
    Primjeri p ON k.KnjigaID = p.KnjigaID     
INNER JOIN 
    KnjigaAutori ka ON k.KnjigaID = ka.KnjigaID 	-- spajanje tablica KnjigaAutori i Knjige
INNER JOIN 
    Autori a ON ka.AutorID = a.AutorID              -- spajanje tablica KnjigaAutori i Autori za dohvacanje imena autora
WHERE 
    p.Status = 'Oštećeno'                        	-- filtriranje oštećenih primjeraka 
GROUP BY 
    k.KnjigaID, k.Naslov, a.ImePrezime              -- grupiranje po knjizi i autoru
ORDER BY 
	broj_ostecenih DESC,							-- sortiranje prvo po broju oštećenih primjeraka, zatim po imenu autora
    a.ImePrezime ASC;            
    
SELECT * FROM popis_ostecenih_knjiga;


-- view koji daje članove koji su ostavili barem 1 recenziju poredano po broju recenzija i prezimenu člana

CREATE VIEW clanovi_recenzije AS
SELECT 
    c.ClanID,										-- odabir ID-ja člana, imena i prezimena iz tablice Clan
    c.Ime,
    c.Prezime,
    COUNT(r.ClanID) AS broj_recenzija          		-- brojanje recenzija koje je svaki član napisao
FROM 
    Clanovi c
INNER JOIN 											-- spajanje tablica Recenzije i Clanovi prema ClanID stupcu
    Recenzije r ON c.ClanID = r.ClanID			    
GROUP BY 
    c.ClanID, c.Ime, c.Prezime						-- grupiranje po članu
HAVING 
    COUNT(r.ClanID) >= 1							-- prikaz samo članova koji su napisali barem 1 recenziju
ORDER BY 											-- sortiranje prvo po broju recenzija, zatim abecedno po prezimenu člana
    broj_recenzija DESC,
    c.Prezime ASC;
    
    
SELECT * FROM clanovi_recenzije;


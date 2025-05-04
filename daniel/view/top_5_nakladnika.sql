CREATE VIEW top_5_nakladnika AS
SELECT 
    i.IzdavacID,                       -- ID nakladnika
    i.Naziv,                           -- naziv nakladnika
    COUNT(*) AS broj_posudbi          -- broj posudbi u zadnjih 12 mjeseci
FROM (
    SELECT PosudbaID, KnjigaID
    FROM Posudbe
    WHERE DatumPosudbe >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
) AS zadnja_godina                    -- subquery umjesto CTE-a
JOIN Knjige k ON k.KnjigaID = zadnja_godina.KnjigaID
JOIN Izdavaci i ON i.IzdavacID = k.IzdavacID
GROUP BY i.IzdavacID, i.Naziv
ORDER BY broj_posudbi DESC
LIMIT 5;
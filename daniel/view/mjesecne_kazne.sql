CREATE VIEW mjesecne_kazne AS
SELECT
    -- godina (ili trenutna ako nije vraćeno)
    YEAR(COALESCE(p.DatumVracanja, CURDATE())) AS god, 
    -- mjesec (ili trenutni)
    MONTH(COALESCE(p.DatumVracanja, CURDATE())) AS mj,   
    ROUND(SUM(
        CASE
            WHEN (p.DatumVracanja IS NULL AND CURDATE() > p.RokVracanja)
                THEN TIMESTAMPDIFF(DAY, p.RokVracanja, CURDATE()) * 0.50
            WHEN p.DatumVracanja > p.RokVracanja
                THEN TIMESTAMPDIFF(DAY, p.RokVracanja, p.DatumVracanja) * 0.50
            ELSE 0
        END
    ), 2) AS ukupno_kazni_eur
FROM Posudbe p
GROUP BY 
    YEAR(COALESCE(p.DatumVracanja, CURDATE())),
    MONTH(COALESCE(p.DatumVracanja, CURDATE()));

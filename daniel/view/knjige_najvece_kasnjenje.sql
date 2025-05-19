CREATE VIEW knjige_najvece_kasnjenje AS
SELECT
  k.Naslov,
  SUM(kv.DaniKasnjenja) AS UkupnoDanaKasnjenja	
FROM kasnovracanje kv
JOIN posudbe       p ON kv.PosudbaID = p.PosudbaID
JOIN knjige        k ON p.KnjigaID    = k.KnjigaID
GROUP BY k.KnjigaID, k.Naslov;
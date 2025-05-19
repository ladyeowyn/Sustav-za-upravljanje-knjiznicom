CREATE VIEW broj_posudbi_po_izdavacu AS
SELECT
  i.IzdavacID,
  i.Naziv        AS Izdavac,
  COUNT(*)       AS BrojPosudbi
FROM posudbe p
JOIN knjige     k ON p.KnjigaID   = k.KnjigaID
JOIN izdavaci   i ON k.IzdavacID  = i.IzdavacID
GROUP BY i.IzdavacID, i.Naziv;

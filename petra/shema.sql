-- Tablica za recenzije knjiga
CREATE TABLE Recenzije (
    RecenzijaID INT AUTO_INCREMENT PRIMARY KEY,
    KnjigaID INT NOT NULL,
    ClanID INT NOT NULL,
    Ocjena INT CHECK (Ocjena BETWEEN 1 AND 5),
    Komentar TEXT,
    DatumRecenzije DATE,
    FOREIGN KEY (KnjigaID) REFERENCES Knjige(KnjigaID),
    FOREIGN KEY (ClanID) REFERENCES Clanovi(ClanID)
) ENGINE=InnoDB;

-- Tablica za primjere (kopije) knjiga
CREATE TABLE Primjeri (
    PrimjerID INT AUTO_INCREMENT PRIMARY KEY,
    KnjigaID INT NOT NULL,
    Lokacija VARCHAR(255),
    Status VARCHAR(50),
    FOREIGN KEY (KnjigaID) REFERENCES Knjige(KnjigaID)
) ENGINE=InnoDB;

-- Tablica za kasna vraćanjarecenzije
CREATE TABLE KasnoVracanje (
    KasnoVracanjeID INT AUTO_INCREMENT PRIMARY KEY,
    PosudbaID INT NOT NULL,
    DaniKasnjenja INT NOT NULL,
    IznosKazne DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (PosudbaID) REFERENCES Posudbe(PosudbaID)
) ENGINE=InnoDB;







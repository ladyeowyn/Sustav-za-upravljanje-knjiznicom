-- Tablica za izdavače
CREATE TABLE Izdavaci (
    IzdavacID INT AUTO_INCREMENT PRIMARY KEY,
    Naziv VARCHAR(255) NOT NULL,
    Adresa VARCHAR(255),
    Kontakt VARCHAR(100)
) ENGINE=InnoDB;

-- Tablica za članove knjižnice
CREATE TABLE Clanovi (
    ClanID INT AUTO_INCREMENT PRIMARY KEY,
    Ime VARCHAR(100) NOT NULL,
    Prezime VARCHAR(100) NOT NULL,
    Kontakt VARCHAR(100),
    DatumPrijave DATE
) ENGINE=InnoDB;

-- Tablica za zaposlenike (bibliotekare)
CREATE TABLE Zaposlenici (
    ZaposlenikID INT AUTO_INCREMENT PRIMARY KEY,
    Ime VARCHAR(100) NOT NULL,
    Uloga VARCHAR(100),
    Kontakt VARCHAR(100)
) ENGINE=InnoDB;

-- Tablica za posudbe knjiga
CREATE TABLE Posudbe (
    PosudbaID INT AUTO_INCREMENT PRIMARY KEY,
    ClanID INT NOT NULL,
    KnjigaID INT NOT NULL,
    DatumPosudbe DATE NOT NULL,
    RokVracanja DATE NOT NULL,
    DatumVracanja DATE,
    ZaposlenikID INT,
    FOREIGN KEY (ClanID) REFERENCES Clanovi(ClanID),
    FOREIGN KEY (KnjigaID) REFERENCES Knjige(KnjigaID),
    FOREIGN KEY (ZaposlenikID) REFERENCES Zaposlenici(ZaposlenikID)
) ENGINE=InnoDB;
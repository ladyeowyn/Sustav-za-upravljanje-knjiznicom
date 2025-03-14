-- Tablica za izdavače
CREATE TABLE Izdavaci (
    IzdavacID INT AUTO_INCREMENT PRIMARY KEY,
    Naziv VARCHAR(255) NOT NULL,
    Adresa VARCHAR(255),
    Kontakt VARCHAR(100)
) ENGINE=InnoDB;

-- Tablica za kategorije (žanrove)
CREATE TABLE Kategorije (
    KategorijaID INT AUTO_INCREMENT PRIMARY KEY,
    Naziv VARCHAR(100) NOT NULL,
    Opis TEXT
) ENGINE=InnoDB;

-- Tablica za knjige
CREATE TABLE Knjige (
    KnjigaID INT AUTO_INCREMENT PRIMARY KEY,
    Naslov VARCHAR(255) NOT NULL,
    ISBN VARCHAR(20),
    GodinaIzdavanja YEAR,
    Status VARCHAR(50),
    IzdavacID INT,
    KategorijaID INT,
    FOREIGN KEY (IzdavacID) REFERENCES Izdavaci(IzdavacID),
    FOREIGN KEY (KategorijaID) REFERENCES Kategorije(KategorijaID)
) ENGINE=InnoDB;

-- Tablica za autore
CREATE TABLE Autori (
    AutorID INT AUTO_INCREMENT PRIMARY KEY,
    ImePrezime VARCHAR(255) NOT NULL,
    Biografija TEXT
) ENGINE=InnoDB;

-- Tablica za many-to-many vezu između knjiga i autora
CREATE TABLE KnjigaAutori (
    KnjigaID INT,
    AutorID INT,
    PRIMARY KEY (KnjigaID, AutorID),
    FOREIGN KEY (KnjigaID) REFERENCES Knjige(KnjigaID),
    FOREIGN KEY (AutorID) REFERENCES Autori(AutorID)
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

-- Tablica za kazne
CREATE TABLE Kazne (
    KaznaID INT AUTO_INCREMENT PRIMARY KEY,
    PosudbaID INT NOT NULL,
    Iznos DECIMAL(10,2) NOT NULL,
    DatumIzdavanja DATE,
    Status VARCHAR(50),
    FOREIGN KEY (PosudbaID) REFERENCES Posudbe(PosudbaID)
) ENGINE=InnoDB;

-- Tablica za rezervacije
CREATE TABLE Rezervacije (
    RezervacijaID INT AUTO_INCREMENT PRIMARY KEY,
    ClanID INT NOT NULL,
    KnjigaID INT NOT NULL,
    DatumRezervacije DATE NOT NULL,
    Status VARCHAR(50),
    FOREIGN KEY (ClanID) REFERENCES Clanovi(ClanID),
    FOREIGN KEY (KnjigaID) REFERENCES Knjige(KnjigaID)
) ENGINE=InnoDB;

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

-- Tablica za kasna vraćanja
CREATE TABLE KasnoVracanje (
    KasnoVracanjeID INT AUTO_INCREMENT PRIMARY KEY,
    PosudbaID INT NOT NULL,
    DaniKasnjenja INT NOT NULL,
    IznosKazne DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (PosudbaID) REFERENCES Posudbe(PosudbaID)
) ENGINE=InnoDB;

-- Tablica za događaje u knjižnici
CREATE TABLE Dogadaji (
    DogadajID INT AUTO_INCREMENT PRIMARY KEY,
    NazivDogadaja VARCHAR(255) NOT NULL,
    Datum DATE,
    Opis TEXT
) ENGINE=InnoDB;

-- Tablica za many-to-many vezu između knjiga i događaja
CREATE TABLE KnjigaDogadaji (
    KnjigaID INT,
    DogadajID INT,
    PRIMARY KEY (KnjigaID, DogadajID),
    FOREIGN KEY (KnjigaID) REFERENCES Knjige(KnjigaID),
    FOREIGN KEY (DogadajID) REFERENCES Dogadaji(DogadajID)
) ENGINE=InnoDB;

-- Tablica za inventar knjiga
CREATE TABLE Inventar (
    InventarID INT AUTO_INCREMENT PRIMARY KEY,
    KnjigaID INT NOT NULL,
    DatumNabavke DATE,
    Stanje VARCHAR(50),
    FOREIGN KEY (KnjigaID) REFERENCES Knjige(KnjigaID)
) ENGINE=InnoDB;

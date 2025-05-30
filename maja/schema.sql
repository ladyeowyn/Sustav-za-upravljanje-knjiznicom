CREATE TABLE Dogadaji (
    DogadajID INT AUTO_INCREMENT PRIMARY KEY,
    NazivDogadaja VARCHAR(100) NOT NULL,
    Datum DATE NOT NULL,
    Opis TEXT
);


CREATE TABLE Inventar (
    InventarID INT AUTO_INCREMENT PRIMARY KEY,
    KnjigaID INT NOT NULL,
    DatumNabavke DATE NOT NULL,
    Stanje VARCHAR(50),
    FOREIGN KEY (KnjigaID) REFERENCES Knjige(KnjigaID)
);


CREATE TABLE KnjigaDogadaji (
    KnjigaID INT NOT NULL,
    DogadajID INT NOT NULL,
    PRIMARY KEY (KnjigaID, DogadajID),
    FOREIGN KEY (KnjigaID) REFERENCES Knjige(KnjigaID),
    FOREIGN KEY (DogadajID) REFERENCES Dogadaji(DogadajID)
);


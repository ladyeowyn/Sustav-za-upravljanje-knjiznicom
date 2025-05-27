CREATE TABLE `kategorije` (
  `KategorijaID` int NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Opis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`KategorijaID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `kazne` (
  `KaznaID` int NOT NULL AUTO_INCREMENT,
  `PosudbaID` int NOT NULL,
  `Iznos` decimal(10,2) NOT NULL,
  `DatumIzdavanja` date DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`KaznaID`),
  KEY `PosudbaID` (`PosudbaID`),
  CONSTRAINT `kazne_ibfk_1` FOREIGN KEY (`PosudbaID`) REFERENCES `posudbe` (`PosudbaID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `rezervacije` (
  `RezervacijaID` int NOT NULL AUTO_INCREMENT,
  `ClanID` int NOT NULL,
  `KnjigaID` int NOT NULL,
  `DatumRezervacije` date NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`RezervacijaID`),
  KEY `ClanID` (`ClanID`),
  KEY `KnjigaID` (`KnjigaID`),
  CONSTRAINT `rezervacije_ibfk_1` FOREIGN KEY (`ClanID`) REFERENCES `clanovi` (`ClanID`),
  CONSTRAINT `rezervacije_ibfk_2` FOREIGN KEY (`KnjigaID`) REFERENCES `knjige` (`KnjigaID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
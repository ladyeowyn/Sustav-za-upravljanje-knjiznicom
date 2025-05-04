# 📚 Sustav za upravljanje knjižnicom – Daniel Katić

## 🔍 Opis

Ovaj direktorij sadrži moj doprinos timskom projektu iz kolegija Baze podataka. Fokus je bio na izradi i implementaciji modula baze koji obuhvaća:

- Upravljanje tablicama: **Izdavači**, **Članovi**, **Zaposlenici**, **Posudbe**
- Definiranje veza, ograničenja (CHECK, FOREIGN KEY, TRIGGER)
- Izrada pametnih i korisnički orijentiranih **SQL view-a**
- Implementacija poslovne logike direktno u bazi

---

## 🗂️ Sadržaj

| Datoteka | Opis |
|----------|------|
| `baza_knjiznice.sql` | Potpuni dump baze podataka (struktura + podaci) |
| `shema.sql` | Osnovna shema relevantnih tablica za moj modul |
| `README.md` | Ovaj dokument |
| `Dokumentacija-Daniel-Katic.pdf` | Tehnička dokumentacija mog modula kao PDF |
| `Dokumentacija-Daniel-Katic.docx` | Tehnička dokumentacija mog modula kao Word datoteka |
| `view` | U ovom direktoriju nalaze se svi view-i pisani u MySQLWorkbench |
| `dijagrami` | U ovom direktoriju nalaze se ER i EER dijagrami |

---

## 📄 Važni view-i (SQL pogledi)

1. **`top_5_nakladnika`**  
   Top 5 izdavača po broju posudbi u zadnjih 12 mjeseci.

2. **`aktivne_kazne`**  
   Izračun kazne u realnom vremenu za sve trenutne aktivne posudbe.

3. **`rizicni_clanovi`**  
   Prikaz članova koji trenutno imaju više od 3 aktivne posudbe.

4. **`mjesecne_kazne`**  
   Mjesečni pregled iznosa kazni s grupiranjem po godini i mjesecu.

---

## ⚙️ Upute za korištenje

### ✅ Uvoz baze (ako koristiš dump)
1. Otvori MySQL Workbench.
2. Kreiraj praznu shemu (npr. `knjiznicadb`).
3. Učitaj datoteku `baza_knjiznice.sql` putem File → Open SQL Script.
4. Klikni ⚡ **Execute**.

### 🧪 Testiranje view-a
Nakon uvoza baze možeš isprobati pogled:
```sql
SELECT * FROM mjesecne_kazne;
```

---

## ✍️ Autor

Daniel Katić, 0303123347
Fakultet informatike u Puli  
2025.

---

## 📎 Napomena

Za dodatne informacije ili funkcionalnosti, slobodno pogledajte ostatak projekta u glavnom direktoriju repozitorija.

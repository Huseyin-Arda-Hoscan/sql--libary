USE ETRADE;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'RandomNames')
BEGIN
    CREATE TABLE RandomNames (
        Name VARCHAR(50)
    );

    INSERT INTO RandomNames (Name) VALUES
    ('Ahmet'), ('Ayþe'), ('Burak'), ('Cansu'), ('Deniz'), ('Elif'), ('Furkan'), ('Gizem'),
    ('Hakan'), ('Ýrem'), ('Kadir'), ('Leyla'), ('Mert'), ('Nihal'), ('Okan'), ('Pýnar'),
    ('Ramazan'), ('Selin'), ('Tuðrul'), ('Umut'), ('Volkan'), ('Zeynep'),
    ('Can'), ('Ece'), ('Ali'), ('Veli'), ('Derya'), ('Emre'), ('Seda'), ('Ozan'),
    ('Aslý'), ('Barýþ'), ('Çiðdem'), ('Doðan'), ('Ezgi'), ('Fatih'), ('Gül'), ('Halil'),
    ('Jale'), ('Kemal'), ('Lale'), ('Murat'), ('Nazlý'), ('Osman'), ('Özge'), ('Serkan'),
    ('Tuba'), ('Uður'), ('Yeliz'), ('Metin'), ('Sevgi'), ('Yavuz'), ('Burcu');
END;

-- 50 adet girdi oluþturma (Fathers_Name rastgele isimlerden)
INSERT INTO CUSTOMERS (Costumer_Name, City, Birthdate, District, Gender, Fathers_Name, Nation, Age)
VALUES
('Müþteri 1', 'Ýstanbul', '1985-05-10', 'Kadýköy', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 40),
('Müþteri 2', 'Ankara', '1992-08-15', 'Çankaya', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 33),
('Müþteri 3', 'Ýzmir', '1978-03-20', 'Alsancak', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 47),
('Müþteri 4', 'Bursa', '2000-11-01', 'Osmangazi', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 25),
('Müþteri 5', 'Antalya', '1995-06-25', 'Konyaaltý', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 30),
('Müþteri 6', 'Adana', '1988-09-05', 'Seyhan', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 37),
('Müþteri 7', 'Konya', '2003-01-12', 'Selçuklu', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 22),
('Müþteri 8', 'Gaziantep', '1975-04-30', 'Þahinbey', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 50),
('Müþteri 9', 'Mersin', '1998-07-18', 'Akdeniz', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 27),
('Müþteri 10', 'Eskiþehir', '1991-12-03', 'Odunpazarý', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 34),
('Müþteri 11', 'Diyarbakýr', '1982-02-28', 'Sur', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 43),
('Müþteri 12', 'Samsun', '1997-10-22', 'Ýlkadým', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 28),
('Müþteri 13', 'Kayseri', '2001-05-07', 'Kocasinan', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 24),
('Müþteri 14', 'Trabzon', '1979-08-11', 'Ortahisar', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 46),
('Müþteri 15', 'Þanlýurfa', '1994-03-16', 'Eyyübiye', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 31),
('Müþteri 16', 'Malatya', '1987-01-02', 'Battalgazi', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 38),
('Müþteri 17', 'Erzurum', '2002-09-20', 'Yakutiye', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 23),
('Müþteri 18', 'Van', '1976-06-04', 'Edremit', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 49),
('Müþteri 19', 'Adýyaman', '1999-11-29', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 26),
('Müþteri 20', 'Afyonkarahisar', '1990-04-14', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 35),
('Müþteri 21', 'Tekirdað', '1983-07-01', 'Süleymanpaþa', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 42),
('Müþteri 22', 'Aydýn', '1996-10-25', 'Efeler', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 29),
('Müþteri 23', 'Denizli', '2000-03-10', 'Pamukkale', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 25),
('Müþteri 24', 'Sakarya', '1977-12-18', 'Adapazarý', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 48),
('Müþteri 25', 'Kocaeli', '1993-05-03', 'Ýzmit', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 32),
('Müþteri 26', 'Manisa', '1986-08-22', 'Þehzadeler', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 39),
('Müþteri 27', 'Çanakkale', '2001-01-07', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 24),
('Müþteri 28', 'Balýkesir', '1974-09-15', 'Karesi', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 51),
('Müþteri 29', 'Uþak', '1998-04-01', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 27),
('Müþteri 30', 'Kýrklareli', '1991-07-20', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 34),
('Müþteri 31', 'Edirne', '1981-03-05', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 44),
('Müþteri 32', 'Bolu', '1995-12-25', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 30),
('Müþteri 33', 'Yalova', '2002-08-10', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 23),
('Müþteri 34', 'Zonguldak', '1978-01-15', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 47),
('Müþteri 35', 'Karabük', '1999-06-30', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 26),
('Müþteri 36', 'Bartýn', '1990-05-18', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 35),
('Müþteri 37', 'Kastamonu', '1984-02-01', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 41),
('Müþteri 38', 'Çorum', '1997-11-22', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 28),
('Müþteri 39', 'Amasya', '2001-07-07', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 24),
('Müþteri 40', 'Tokat', '1975-04-12', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 50),
('Müþteri 41', 'Sivas', '1994-09-29', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 31),
('Müþteri 42', 'Yozgat', '1987-03-14', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 38),
('Müþteri 43', 'Nevþehir', '2002-01-02', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 23),
('Müþteri 44', 'Niðde', '1976-08-20', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 49),
('Müþteri 45', 'Aksaray', '1999-05-07', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 26),
('Müþteri 46', 'Kýrþehir', '1990-12-25', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 35),
('Müþteri 47', 'Kýrýkkale', '1983-01-10', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 42),
('Müþteri 48', 'Çankýrý', '1996-06-04', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 29),
('Müþteri 49', 'Düzce', '2000-11-29', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 25),
('Müþteri 50', 'Osmaniye', '1977-04-14', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'Türkiye', 48);



SELECT * FROM CUSTOMERS;
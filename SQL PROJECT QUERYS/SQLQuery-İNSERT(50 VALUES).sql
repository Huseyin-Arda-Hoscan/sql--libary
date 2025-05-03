USE ETRADE;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'RandomNames')
BEGIN
    CREATE TABLE RandomNames (
        Name VARCHAR(50)
    );

    INSERT INTO RandomNames (Name) VALUES
    ('Ahmet'), ('Ay�e'), ('Burak'), ('Cansu'), ('Deniz'), ('Elif'), ('Furkan'), ('Gizem'),
    ('Hakan'), ('�rem'), ('Kadir'), ('Leyla'), ('Mert'), ('Nihal'), ('Okan'), ('P�nar'),
    ('Ramazan'), ('Selin'), ('Tu�rul'), ('Umut'), ('Volkan'), ('Zeynep'),
    ('Can'), ('Ece'), ('Ali'), ('Veli'), ('Derya'), ('Emre'), ('Seda'), ('Ozan'),
    ('Asl�'), ('Bar��'), ('�i�dem'), ('Do�an'), ('Ezgi'), ('Fatih'), ('G�l'), ('Halil'),
    ('Jale'), ('Kemal'), ('Lale'), ('Murat'), ('Nazl�'), ('Osman'), ('�zge'), ('Serkan'),
    ('Tuba'), ('U�ur'), ('Yeliz'), ('Metin'), ('Sevgi'), ('Yavuz'), ('Burcu');
END;

-- 50 adet girdi olu�turma (Fathers_Name rastgele isimlerden)
INSERT INTO CUSTOMERS (Costumer_Name, City, Birthdate, District, Gender, Fathers_Name, Nation, Age)
VALUES
('M��teri 1', '�stanbul', '1985-05-10', 'Kad�k�y', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 40),
('M��teri 2', 'Ankara', '1992-08-15', '�ankaya', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 33),
('M��teri 3', '�zmir', '1978-03-20', 'Alsancak', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 47),
('M��teri 4', 'Bursa', '2000-11-01', 'Osmangazi', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 25),
('M��teri 5', 'Antalya', '1995-06-25', 'Konyaalt�', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 30),
('M��teri 6', 'Adana', '1988-09-05', 'Seyhan', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 37),
('M��teri 7', 'Konya', '2003-01-12', 'Sel�uklu', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 22),
('M��teri 8', 'Gaziantep', '1975-04-30', '�ahinbey', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 50),
('M��teri 9', 'Mersin', '1998-07-18', 'Akdeniz', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 27),
('M��teri 10', 'Eski�ehir', '1991-12-03', 'Odunpazar�', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 34),
('M��teri 11', 'Diyarbak�r', '1982-02-28', 'Sur', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 43),
('M��teri 12', 'Samsun', '1997-10-22', '�lkad�m', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 28),
('M��teri 13', 'Kayseri', '2001-05-07', 'Kocasinan', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 24),
('M��teri 14', 'Trabzon', '1979-08-11', 'Ortahisar', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 46),
('M��teri 15', '�anl�urfa', '1994-03-16', 'Eyy�biye', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 31),
('M��teri 16', 'Malatya', '1987-01-02', 'Battalgazi', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 38),
('M��teri 17', 'Erzurum', '2002-09-20', 'Yakutiye', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 23),
('M��teri 18', 'Van', '1976-06-04', 'Edremit', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 49),
('M��teri 19', 'Ad�yaman', '1999-11-29', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 26),
('M��teri 20', 'Afyonkarahisar', '1990-04-14', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 35),
('M��teri 21', 'Tekirda�', '1983-07-01', 'S�leymanpa�a', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 42),
('M��teri 22', 'Ayd�n', '1996-10-25', 'Efeler', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 29),
('M��teri 23', 'Denizli', '2000-03-10', 'Pamukkale', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 25),
('M��teri 24', 'Sakarya', '1977-12-18', 'Adapazar�', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 48),
('M��teri 25', 'Kocaeli', '1993-05-03', '�zmit', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 32),
('M��teri 26', 'Manisa', '1986-08-22', '�ehzadeler', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 39),
('M��teri 27', '�anakkale', '2001-01-07', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 24),
('M��teri 28', 'Bal�kesir', '1974-09-15', 'Karesi', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 51),
('M��teri 29', 'U�ak', '1998-04-01', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 27),
('M��teri 30', 'K�rklareli', '1991-07-20', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 34),
('M��teri 31', 'Edirne', '1981-03-05', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 44),
('M��teri 32', 'Bolu', '1995-12-25', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 30),
('M��teri 33', 'Yalova', '2002-08-10', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 23),
('M��teri 34', 'Zonguldak', '1978-01-15', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 47),
('M��teri 35', 'Karab�k', '1999-06-30', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 26),
('M��teri 36', 'Bart�n', '1990-05-18', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 35),
('M��teri 37', 'Kastamonu', '1984-02-01', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 41),
('M��teri 38', '�orum', '1997-11-22', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 28),
('M��teri 39', 'Amasya', '2001-07-07', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 24),
('M��teri 40', 'Tokat', '1975-04-12', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 50),
('M��teri 41', 'Sivas', '1994-09-29', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 31),
('M��teri 42', 'Yozgat', '1987-03-14', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 38),
('M��teri 43', 'Nev�ehir', '2002-01-02', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 23),
('M��teri 44', 'Ni�de', '1976-08-20', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 49),
('M��teri 45', 'Aksaray', '1999-05-07', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 26),
('M��teri 46', 'K�r�ehir', '1990-12-25', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 35),
('M��teri 47', 'K�r�kkale', '1983-01-10', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 42),
('M��teri 48', '�ank�r�', '1996-06-04', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 29),
('M��teri 49', 'D�zce', '2000-11-29', 'Merkez', 'E', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 25),
('M��teri 50', 'Osmaniye', '1977-04-14', 'Merkez', 'K', CONVERT(varbinary(50), (SELECT TOP 1 Name FROM RandomNames ORDER BY NEWID())), 'T�rkiye', 48);



SELECT * FROM CUSTOMERS;
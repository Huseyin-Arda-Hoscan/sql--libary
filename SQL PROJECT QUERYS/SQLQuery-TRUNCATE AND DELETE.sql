SELECT * FROM CUSTOMERS
DELETE CUSTOMERS;
INSERT INTO CUSTOMERS (Costumer_Name, City, Birthdate, District, Gender, Fathers_Name, Nation, Age)
VALUES ('Yeni Müþteri', 'Ýstanbul', '2003-07-15', 'Beþiktaþ', 'K', CONVERT(varbinary(50), 'Yeni Baba Adý'), 'Türkiye', 22);

SELECT* FROM CUSTOMERS;
-- ID DEÐERÝ 55 TEN BAÞLADI ÇÜNKÜ DELETE KOMUTU ÝLE SÝLMELERDE ÝS ÝDENTÝTY=YES OLAN ALANLAR DEÐERLERÝNÝ KORUR.

TRUNCATE TABLE CUSTOMERS;


INSERT INTO CUSTOMERS (Costumer_Name, City, Birthdate, District, Gender, Fathers_Name, Nation, Age)
VALUES ('Yeni Müþteri', 'Ýstanbul', '2003-07-15', 'Beþiktaþ', 'K', CONVERT(varbinary(50), 'Yeni Baba Adý'), 'Türkiye', 22);

SELECT* FROM CUSTOMERS;
-- ID ALANI 1 DEN BAÞLADI TRUNCATE KULLANIMINDA TABLO ÝLK BAÞLANGIÇTA KÝ HALÝNE DÖNER.
SELECT * FROM CUSTOMERS
DELETE CUSTOMERS;
INSERT INTO CUSTOMERS (Costumer_Name, City, Birthdate, District, Gender, Fathers_Name, Nation, Age)
VALUES ('Yeni M��teri', '�stanbul', '2003-07-15', 'Be�ikta�', 'K', CONVERT(varbinary(50), 'Yeni Baba Ad�'), 'T�rkiye', 22);

SELECT* FROM CUSTOMERS;
-- ID DE�ER� 55 TEN BA�LADI ��NK� DELETE KOMUTU �LE S�LMELERDE �S �DENT�TY=YES OLAN ALANLAR DE�ERLER�N� KORUR.

TRUNCATE TABLE CUSTOMERS;


INSERT INTO CUSTOMERS (Costumer_Name, City, Birthdate, District, Gender, Fathers_Name, Nation, Age)
VALUES ('Yeni M��teri', '�stanbul', '2003-07-15', 'Be�ikta�', 'K', CONVERT(varbinary(50), 'Yeni Baba Ad�'), 'T�rkiye', 22);

SELECT* FROM CUSTOMERS;
-- ID ALANI 1 DEN BA�LADI TRUNCATE KULLANIMINDA TABLO �LK BA�LANGI�TA K� HAL�NE D�NER.
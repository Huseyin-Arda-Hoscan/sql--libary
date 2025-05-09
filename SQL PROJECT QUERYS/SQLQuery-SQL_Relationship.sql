--Örnek bir sql relationship

CREATE TABLE Müþteriler (
    MüþteriID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50) NOT NULL,
    Soyad NVARCHAR(50) NOT NULL,
    Eposta NVARCHAR(100) UNIQUE,
    Telefon NVARCHAR(20)
);
CREATE TABLE Sipariþler (
    SipariþID INT PRIMARY KEY IDENTITY(1,1),
    MüþteriID INT NOT NULL,
    SipariþTarihi DATETIME NOT NULL,
    ToplamTutar DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_MüþteriSipariþ FOREIGN KEY (MüþteriID) REFERENCES Müþteriler(MüþteriID) ON DELETE CASCADE
);
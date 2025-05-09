--�rnek bir sql relationship

CREATE TABLE M��teriler (
    M��teriID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50) NOT NULL,
    Soyad NVARCHAR(50) NOT NULL,
    Eposta NVARCHAR(100) UNIQUE,
    Telefon NVARCHAR(20)
);
CREATE TABLE Sipari�ler (
    Sipari�ID INT PRIMARY KEY IDENTITY(1,1),
    M��teriID INT NOT NULL,
    Sipari�Tarihi DATETIME NOT NULL,
    ToplamTutar DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_M��teriSipari� FOREIGN KEY (M��teriID) REFERENCES M��teriler(M��teriID) ON DELETE CASCADE
);
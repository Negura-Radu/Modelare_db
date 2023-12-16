CREATE TABLE Proprietar (
    CNP varchar(13) PRIMARY KEY,
    Serie_CI varchar(2),
    Numar_CI int,
    Adresa varchar(255)
);
CREATE TABLE UAT(
	ID_UAT int PRIMARY KEY,
	NUME_UAT Varchar(250)
);
CREATE TABLE Teren(
	ID_teren int PRIMARY KEY,
	ID_UAT int,
	FOREIGN Key (ID_UAT)
	REFERENCES UAT(ID_UAT)
);
CREATE TABLE Proprietar_Teren (
    CNP varchar(13),
    ID_Teren int,
    PRIMARY KEY (CNP, ID_Teren),
    FOREIGN KEY (CNP) REFERENCES Proprietar(CNP),
    FOREIGN KEY (ID_Teren) REFERENCES Teren(ID_Teren)
);




CREATE TABLE Autor (
    ID INT PRIMARY KEY,
    nume VARCHAR(100),
    prenume VARCHAR(100)
);
CREATE TABLE Adresa (
    ID INT PRIMARY KEY,
    strada VARCHAR(100),
    oras VARCHAR(100),
    tara VARCHAR(100)
);

CREATE TABLE Carte (
    ID INT PRIMARY KEY,
    titlu VARCHAR(100),
    an_publicare INT,
    ID_Autor INT,
    FOREIGN KEY (ID_Autor) REFERENCES Autor(ID)
);

CREATE TABLE Review (
    ID INT PRIMARY KEY,
    rating INT,
    comentariu TEXT,
    ID_Carte INT,
    FOREIGN KEY (ID_Carte) REFERENCES Carte(ID)
);

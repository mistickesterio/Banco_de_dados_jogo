create DATABASE Jogo;
USE Jogo;

CREATE TABLE Jogador(
    Acertos INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255),
    Tempo_Gasto VARCHAR(11),
    PRIMARY KEY (ID)
);

CREATE TABLE Pontuacao(
    ID INT NOT NULL AUTO_INCREMENT,
    Jogador VARCHAR(255),
    Acertos VARCHAR(11),
    Tempo_Gasto VARCHAR(11),
    PRIMARY KEY (ID),
    FOREIGN KEY (AcertosID) REFERENCES Acertos(ID)
);

CREATE TABLE Informacaos(
    ID INT NOT NULL AUTO_INCREMENT,
    Local VARCHAR(255),
    Data DATETIME,
    Comida VARCHAR(255),
    Cor VARCHAR(255),
    Lugar VARCHAR(255),
    jogadorID INT NOT NULL,
    IDPontuação VARCHAR(2) NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (JogadorID) REFERENCES Jogadador(ID),
    FOREIGN KEY(IDProduto) REFERENCES Produto(ID)
);

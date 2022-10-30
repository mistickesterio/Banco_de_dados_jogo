create DATABASE Tres_chances;
USE Tres_chances;

CREATE TABLE Jogador(
    ID INT NOT NULL AUTO_INCREMENT,
    Nome INT NOT NULL,
    Acertos INT NOT NULL,
    Tempo_Gasto INT NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Informacoes(
    ID INT NOT NULL AUTO_INCREMENT,
    Data DATETIME,
    Comida VARCHAR(255),
    Cor VARCHAR(255),
    Lugar VARCHAR(255),
    PRIMARY KEY (ID)
);

INSERT INTO Jogador (ID, Nome, Acertos, Tempo_Gasto) VALUES
(default, 300000, 'Lucas', '15', '40s'),
(default, 20000, 'Luiz', '21', '30s'),
(default, 200000, 'Thiago', '20', '20s');

INSERT INTO Informacoes (ID, Comida, Cor, Lugar) VALUES
(default, 'BANANA', 'AZUL', 'BRASIL'),
(default, 'MACARAO', 'VERMELHO', 'MEXICO'),
(default, 'ARROZ', 'ROXO', 'MINAS'),
(default, 'LIMAO', 'LARANJA', 'GOIAS');

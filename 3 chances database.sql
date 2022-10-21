create DATABASE Fornecedor_alimenticio;
USE Fornecedor_alimenticio;

CREATE TABLE Cliente(
    ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255),
    CPF VARCHAR(11),
    PRIMARY KEY (ID)
);

CREATE TABLE Produto(
    ID VARCHAR(2) NOT NULL,
    Nome VARCHAR(255),
    PRIMARY KEY(iD)
);

CREATE TABLE Atendimento(
    ID INT NOT NULL AUTO_INCREMENT,
    Local VARCHAR(255),
    Data DATETIME,
    ClienteID INT NOT NULL,
    IDProduto VARCHAR(2) NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ID),
    FOREIGN KEY(IDProduto) REFERENCES Produto(ID)
);

INSERT INTO Cliente (Nome,CPF) VALUES
('Lucas', '12312312312'),
('Luiz', '32132132132'),
('Lourival', '12312312312'),
('Otavio', '32132132132'),
('Kerolaine', '32132132132'),
('Thiago', '34534534534');

INSERT INTO Produto (Nome,ID) VALUES
('Pipoca', '01'),
('Docê de Leite', '02'),
('Manteiga', '03'),
('Pastél', '04'),
('Coca Cola', '05'),
('Cachorro quente', '06');
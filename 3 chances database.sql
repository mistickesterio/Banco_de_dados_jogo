-- derruba banco de dados.
drop DATABASE tres_chances;
-- cria banco de dados.
CREATE DATABASE tres_chances;
USE tres_chances;

-- primeira tabela.
CREATE TABLE Jogador(
id int not null AUTO_INCREMENT primary key,  
nome varchar(255) not null,
pontos longtext not null
);

-- segunda tabela.
CREATE TABLE Dados(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Jogador int not null,
    Comida longtext not null,
    Cor VARCHAR(255) not null,
    Lugar VARCHAR(255) not null,
    Foreign key (Jogador) references Jogador (id)
);

-- primeiro insert.
INSERT INTO Jogador(nome, pontos) VALUES
("Jogador1", 10),
("Jogador2", 20),
("Jogador3", 30);

-- segundo insert.
INSERT INTO Dados values 
(default, 1, 'BANANA', 'Azul', 'Brasil'), 
(default, 2, 'MACARRAO', 'VERMELHO', 'EUA'), 
(default, 3, 'DANONE', 'ROXO', 'FRANCA');

 select * from Dados;

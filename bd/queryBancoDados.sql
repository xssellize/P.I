CREATE TABLE Cliente (
    cpfCliente BIGINT PRIMARY KEY,
    nomeCliente VARCHAR(60),
    logradouro VARCHAR(50),
    numero INT,
    complemento VARCHAR(20),
    telefone VARCHAR(15)
);

CREATE TABLE Login (
    email VARCHAR(50) PRIMARY KEY,
    senha VARCHAR(40),
    cpfCliente BIGINT FOREIGN KEY REFERENCES Cliente(cpfCliente)
);

CREATE TABLE Dados (
    idDado INT PRIMARY KEY IDENTITY (1, 1),
    data DATETIME,
    temperatura VARCHAR(5),
    umidade VARCHAR(10),
    aeracao VARCHAR(10),
    estagio VARCHAR(1),
    cpfCliente BIGINT FOREIGN KEY REFERENCES Cliente(cpfCliente)
);

SELECT * FROM Cliente;

INSERT INTO Cliente VALUES 
    (41249847825, 'Marise Oliveira', 'Rua das Pedras', 225, null, '(11) 95785-8248'),
    (87598216554, 'Gerson Camargo', 'Rua dos loucos', 1, null, '(11) 96987-2544')
;

INSERT INTO Login VALUES 
    ('marise.oliveira@foxtech.com.br', 'marise@oliveira', 41249847825),
    ('gerson.camargo@foxtech.com.br', 'gerson@camargo', 87598216554)
;

INSERT INTO Dados VALUES
    (CURRENT_TIMESTAMP, '60°', '44%', '66%', '1', 41249847825),
    (CURRENT_TIMESTAMP, '49°', '51%', '87%', '3', 87598216554)
;

SELECT * FROM Login;

SELECT * FROM Dados;
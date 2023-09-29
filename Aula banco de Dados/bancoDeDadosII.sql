CREATE DATABASE MinhaEmpresaDB;

USE MinhaEmpresaDB;

-- Tabela de Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(100)
);

-- Tabela de Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    Produto VARCHAR(50),
    Quantidade INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserir dados na tabela de Clientes
INSERT INTO Clientes (ClienteID, Nome, Email)
VALUES
    (1, 'João Silva', 'joao@email.com'),
    (2, 'Maria Santos', 'maria@email.com');

-- Inserir dados na tabela de Pedidos
INSERT INTO Pedidos (PedidoID, ClienteID, Produto, Quantidade, DataPedido)
VALUES
    (101, 1, 'Laptop', 2, '2023-09-29'),
    (102, 2, 'Smartphone', 3, '2023-09-30');

SELECT Pedidos.PedidoID, Clientes.Nome, Pedidos.Produto
FROM Pedidos
INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID;

SELECT Clientes.Nome, Pedidos.PedidoID
FROM Clientes
LEFT JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;

SELECT Pedidos.PedidoID, Clientes.Nome
FROM Pedidos
RIGHT JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID;

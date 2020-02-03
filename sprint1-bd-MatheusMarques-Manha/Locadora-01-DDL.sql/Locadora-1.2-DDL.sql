CREATE DATABASE Locadora_manha

USE Locadora_manha;


CREATE TABLE Empresa (
IdEmpresa INT PRIMARY KEY IDENTITY,
Nome    VARCHAR(200)
);


CREATE TABLE Cliente (
IdCliente INT PRIMARY KEY IDENTITY,
Nome    VARCHAR(200),
CPF    INT,
);

CREATE TABLE Marca (
IdMarca INT PRIMARY KEY IDENTITY,
Nome    VARCHAR(200),
);

CREATE TABLE Modelo (
IdModelo INT PRIMARY KEY IDENTITY,
Nome  VARCHAR(200),
IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca)
);

CREATE TABLE Veiculo (
IdVeiculo INT PRIMARY KEY IDENTITY,
Placa   VARCHAR(200),
IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa),
IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo)
);

CREATE TABLE Aluguel (
IdAluguel INT PRIMARY KEY IDENTITY,
DataInicio    DATE,
DataFim       DATE,
IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente),
IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo)
);

SELECT * FROM Aluguel;
SELECT * FROM Veiculo;
SELECT * FROM Modelo;
SELECT * FROM Marca;
SELECT * FROM Empresa;
SELECT * FROM Cliente;

----- DML--------------------------------------

ALTER TABLE Cliente
ALTER COlUMN CPF VARCHAR (50);

INSERT INTO Cliente (Nome, CPF)
VALUES ('Fernando','23324442444'),
	   ('Helena','32434554333');

INSERT INTO Empresa(Nome)
VALUES ('Unidas'),
	   ('Localiza');

INSERT INTO Marca(Nome)
VALUES  ('Ford'),
		('GM'),
		('Fiat');

INSERT INTO Modelo (Nome,IdMarca)
VALUES    ('Fiesta',1),
		  ('Onix',2),
		  ('Argo',3);

INSERT INTO Aluguel (DataInicio)



		 








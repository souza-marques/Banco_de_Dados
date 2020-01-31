CREATE DATABASE OPTUS_MANHA;

USE OPTUS_MANHA;

CREATE TABLE Artistas (
IdArtista INT PRIMARY KEY IDENTITY,
Nome      VARCHAR(200)
);

CREATE TABLE TipoUsuario (
IdTipoUsuario INT PRIMARY KEY IDENTITY,
Titulo		  VARCHAR(200)
);

CREATE TABLE Estilos (
IdEstilo  INT PRIMARY KEY IDENTITY,
Nome	VARCHAR(200)
);

CREATE TABLE Albuns (
IdAlbum INT PRIMARY KEY IDENTITY,
Nome	VARCHAR(200),
DataLancamento  DATE,
QtdMinutos INT,
Visualizacao  INT,

IdArtista  INT FOREIGN KEY REFERENCES  Artistas (IdArtista),
IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

CREATE TABLE Usuarios (
IdUsuario INT PRIMARY KEY IDENTITY,
Nome VARCHAR (200),
IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

SELECT * FROM Artistas;
SELECT * FROM TipoUsuario;
SELECT * FROM Estilos;
SELECT * FROM Usuarios;
SELECT * FROM Albuns;

INSERT INTO Artistas (Nome)
VALUES ('Racionais Mcs'),
	   ('Dua Lipa'),
	   ('Matue'),
	   ('Turma do Pagode'),
	   ('Pericles');

INSERT INTO  TipoUsuario(Titulo)
VALUES ('Comum'),
	   ('Administrador');

INSERT INTO Estilos (Nome)
VALUES ('Rap'),
	   ('Pop'),
	   ('Hip-Hop'),
	   ('Pagode'),
	   ('Samba');

INSERT INTO Usuarios(Nome,IdTipoUsuario)
VALUES ('Matheus',1),
	   ('Flávio',1),
	   ('Henrique',2),
	   ('Maria',1),
	   ('Gustavo',1);

INSERT INTO Albuns(Nome,DataLancamento,QtdMinutos,Visualizacao,IdArtista,IdEstilo)
VALUES ('Cores e Valores','20-02-1990',50,3500,1,1),
	   ('Singalong','07-06-2000',100,6000,2,2),
	   ('Celine','02-04-2008',150,6890,3,3),
	   ('Misturadin','10-12-2017',40,10000,4,4),
	   ('Sensações','30-10-2014',90,4670,5,5);

	   --Alterar Nome de um Artista
	   UPDATE Artistas 
	   SET Nome = 'Martinho da Vila'
	   WHERE IdArtista = 5;

	   --Alterar um Tipo de Usuário
	   UPDATE TipoUsuario
	   SET Titulo = 'Ouro'
	   WHERE IdTipoUsuario = 1;

	   -- Alterar a Quantidade de visualização de um Álbum
	   UPDATE Albuns
	   SET Visualizacao = '700'
	   WHERE IdAlbum = 3;

	   --Apagar  um Álbum 
	   DELETE Albuns
	   WHERE IdAlbum = 2;


	  -- Selecionar os albuns do mesmo artista
	  SELECT  * FROM Albuns WHERE IdArtista = 1;

	  -- selecionar os albuns lançados na mesma data 
	  SELECT * FROM Albuns WHERE DataLancamento = '10-12-2017';

	  --Selecionar os artistas do mesmo estilo musical 
	  SELECT * FROM Albuns WHERE IdEstilo = 4;

	  --Selecionar albuns e artistas e ordenar a data de lançamento da mais recentes para o mais antigo.
	   SELECT Nome, IdArtista,DataLancamento FROM Albuns
	   ORDER BY DataLancamento DESC;

	   


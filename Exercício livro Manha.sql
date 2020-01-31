--comando para criar banco de dados
CREATE DATABASE RoteiroLivros;

USE RoteiroLivros;

-- comando para criar tabela 
CREATE TABLE GENEROS (
-- colocando atributos , id, chave primaria, identificação
     IdGenero INT PRIMARY KEY IDENTITY  ,
	 Nome     VARCHAR(200) NOT NULL  -- campo nao nulo
	 );

	 CREATE TABLE Autores (
	 IdAutor INT PRIMARY KEY IDENTITY,
	 NomeAutor VARCHAR(200) 
	 );

	 CREATE TABLE Livros(
	 IdLivro INT PRIMARY KEY IDENTITY,
	 Titulo VARCHAR(255),
	 IdGenero INT FOREIGN KEY REFERENCES GENEROS (IdGenero),-- comando para referenciar uma chave estrangeira
	 IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor)
	 );

	

	 SELECT * FROM Autores;
	 SELECT * FROM GENEROS;
	 SELECT * FROM Livros;

	 INSERT INTO GENEROS (Nome)
	 VALUES ('Estratégia'),
			('Educação'),
			('Romance'),
			('Biografia'),
			('Economia');

	INSERT INTO Autores (NomeAutor)
	VALUES ( 'John Green'),
		   ('David Allen'),
		   ('Ángel I. Pérez Gómez'),
		   ('Daniel Kahneman'),
		   ('Anne Frannk');

		    SELECT * FROM Autores;

    INSERT INTO Livros (Titulo , IdAutor, IdGenero)
    VALUES ('A culpa é das estrelas',1,3),
		   ('O investidor inteligente estrategia',2,1),
		   ('Educação na Era Digital: A Escola Educativa',3,2),
		   ('Rápido e devagar',4,5),
		   ('O Diário de Anne Frank', 5,4);



		   UPDATE GENEROS 
		   SET Nome = 'Estratégia Digital' 
		   Where IdGenero = 1;

		  UPDATE Livros 
		  SET IdGenero = 2
		  WHERE IdLivro = 5;

		  DELETE FROM Livros 
		  WHERE IdAutor = 5;

		  DELETE FROM Autores
		  WHERE IdAutor = 5; 




				   



	
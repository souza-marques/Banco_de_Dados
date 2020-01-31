CREATE DATABASE EstiloMusical;

USE EstiloMusical;

CREATE TABLE EstilosMusicais (
IdEstilo	 INT PRIMARY KEY IDENTITY,
Nome		 VARCHAR(200) NOT NULL
);

CREATE TABLE Artistas (
 IdArtista	 INT PRIMARY KEY IDENTITY,
 Nome		 VARCHAR(200),
 IdEstilo	 INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilo)
);




SELECT * FROM EstilosMusicais;
SELECT * FROM Artistas;

ALTER TABLE EstilosMusicais
ADD Descricao VARCHAR(200);

--DML: LINGUAGEM DE MANIPULAÇAO DE DADOS

INSERT INTO EstilosMusicais (Nome, Descricao)
VALUES ('Samba','Estilo Musical'),
	   ('Rap',	'Musica  de expressão social'),
	   ('Funk', 'Musica da periferia');

	   INSERT INTO Artistas (Nome,IdEstilo)
	   VALUES ('Zeca Pagodinho',1),
		 ('Turma do Pagode', 2),
	     ('Racionais', 3),
	     ('Mc DonJuan', 4);
			
			-- UPTADE ALTERAR DADOS DE DENTRO DAS TABELAS
			UPDATE Artistas
			SET Nome = 'Alcione'
			WHERE IdArtista = 1;

			-- DELETE APAGAR DADOS DA TABELA
			DELETE FROM Artistas
			WHERE IdArtista = 3;












 
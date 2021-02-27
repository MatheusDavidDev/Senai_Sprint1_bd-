USE Filmes;

--			Tabela	Coluna
INSERT INTO Generos (Nome)
VALUES				('Ação')
				   ,('Aventura');

INSERT INTO Filmes (Titulo,idGenero)
VALUES			   ('Rambo',1)
				  ,('Vingadores',1)
				  ,('Ghost',2)
				  ,('Diário de uma paixão',2)ç

UPDATE Generos
SET Nome = 'Romance'
WHERE idGenero = 2;

DELETE FROM Filmes
WHERE idFilme = 3;
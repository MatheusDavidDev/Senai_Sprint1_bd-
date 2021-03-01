USE Optus;

INSERT INTO Artistas (Nome)
VALUES				 ('Quavo')
					,('Offset')
					,('Travis Scott')
					,('Kurt Cobain')
					,('B. B. King');

INSERT INTO Estilos (Nome)
VALUES				('Trap')
				   ,('Hip Hop')
				   ,('Blues')
				   ,('Rock');

INSERT INTO Albuns (Titulo, DataLancamento, Localizacao, Minutagem, Ativo, idArtista)
VALUES			   ('Quavo Huncho', '12/10/2018', 'EUA', '1h', 1, 1)
				  ,('Father of 4', '22/02/2019', 'EUA', '54m', 1, 2)
				  ,('Astroworld', '03/08/2018', 'EUA', '58m', 1, 3)
				  ,('Nevermind', '24/08/1991', 'EUA', '49m',1 , 4)
				  ,('Lucille', '20/12/1968', 'EUA', '37m',1 , 5)
				  ,('Culture III', '15/12/2022', 'EUA', 'Sem minutagem', 0, 2);

INSERT INTO AlbunsEstilos (idAlbum, idEstilo)
VALUES					  (1, 2)
						 ,(2, 2)
						 ,(3, 1)
						 ,(4, 4)
						 ,(5, 3)
						 ,(6, 1);

INSERT INTO Usuarios (Nome, Email, Senha, Permissao)
VALUES				 ('Felipe', 'Felipe@gmail.com', 'felipe123', 'ADM')
					,('João', 'Joao@gmail.com', 'joao12345', 'USER')
					,('Matheus', 'Matheus@gmail.com', 'matheus132', 'USER');
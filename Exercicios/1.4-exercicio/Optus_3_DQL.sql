USE Optus;

SELECT Nome, Email, Permissao FROM Usuarios;

SELECT Albuns.Titulo, DataLancamento FROM Albuns
WHERE DataLancamento LIKE '2%';

SELECT Nome, Permissao FROM Usuarios
WHERE Email LIKE 'Felipe@gmail.com%';

SELECT Titulo AS 'Album', Artistas.Nome AS 'Feito por' FROM Albuns
INNER JOIN Artistas
ON Albuns.idArtista = Artistas.idArtista

INNER JOIN AlbunsEstilos
ON Albuns.idAlbum = AlbunsEstilos.idEstilo

WHERE Ativo LIKE '1%';

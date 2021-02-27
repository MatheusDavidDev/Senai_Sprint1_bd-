USE Clinicas;

SELECT * FROM Clinicas;

SELECT * FROM TiposPats;

SELECT * FROM Racas;

SELECT * FROM Pets;

SELECT * FROM Donos;

SELECT * FROM Veterinarios;

SELECT Descricao, DataAtendimento, idPet FROM Atendimentos;

SELECT Veterinarios.Nome, CRMV, Clinicas.Nome FROM Veterinarios
INNER JOIN Clinicas
ON Veterinarios.idClinica = Clinicas.idClinica;

SELECT Descricao AS Raças FROM Racas
WHERE Descricao LIKE 'S%';

SELECT Descricao AS Animais FROM TiposPats
WHERE Descricao LIKE '%O';

SELECT Pets.Nome AS NomeDoPet, Donos.Nome AS NomeDoDono FROM Pets
INNER JOIN Donos
ON Pets.idDono = Donos.idDono;

-- Junção de join

SELECT Veterinarios.Nome AS Veterinário, Pets.Nome AS 'Nome Do Pet', Racas.Descricao AS Raça, TiposPats.Descricao AS 'Tipo De Animal' 
, Donos.Nome AS 'Nome Do Dono', Clinicas.Nome AS 'Nome Da Clinica' FROM Atendimentos

INNER JOIN Veterinarios
ON Atendimentos.idVeterinario = Veterinarios.idVeterinario

INNER JOIN Pets
ON Atendimentos.idPet = Pets.idPet

INNER JOIN Racas
ON Pets.idRaca = Racas.idRaca

INNER JOIN TiposPats
ON Racas.idTipoPet = TiposPats.idTipoPet

INNER JOIN Donos
ON Pets.idDono = Donos.idDono 

INNER JOIN Clinicas
ON Veterinarios.idClinica = Clinicas.idClinica;

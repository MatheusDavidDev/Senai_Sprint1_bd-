CREATE DATABASE Clinicas;

USE Clinicas;

CREATE TABLE Clinicas
(
	idClinica			INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(150) NOT NULL
	,CNPJ				INT NOT NULL
	,Endereco			VARCHAR(150) NOT NULL
);

CREATE TABLE TiposPats
(
	idTipoPet			INT PRIMARY KEY IDENTITY
	,Descricao			VARCHAR(100)NOT NULL
);

CREATE TABLE Racas
(
	idRaca				INT PRIMARY KEY IDENTITY
	,Descricao			VARCHAR(100)NOT NULL
	,idTipoPet			INT FOREIGN KEY REFERENCES TiposPats (idTipoPet)
);

CREATE TABLE Donos
(
	idDono				INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(100)NOT NULL
);

CREATE TABLE Pets
(
	idPet				INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(100)NOT NULL
	,DataNascimento		DATE
	,idRaca				INT FOREIGN KEY REFERENCES Racas (idRaca)
	,idDono				INT FOREIGN KEY REFERENCES Donos (idDono)
);

CREATE TABLE Veterinarios
(
	idVeterinario		INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(100)NOT NULL
	,CRMV				INT NOT NULL
	,idClinica			INT FOREIGN KEY REFERENCES Clinicas(idClinica)
);

CREATE TABLE Atendimentos
(
	idAtendimento		INT PRIMARY KEY IDENTITY
	,Descricao			VARCHAR(250)NOT NULL
	,DataAtendimento	DATE
	,idVeterinario		INT FOREIGN KEY REFERENCES Veterinarios (idVeterinario)
	,idPet				INT FOREIGN KEY REFERENCES Pets (idPet)
);

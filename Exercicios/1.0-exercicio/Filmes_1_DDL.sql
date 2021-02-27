-- Cria um banco de dados chamado Filmes
CREATE DATABASE Filmes;

-- Define o banco de dados Filmes como o que sera utilizado
USE Filmes;

CREATE TABLE Generos
(
	idGenero	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL -- NAO PODE SER NULO
);

CREATE TABLE Filmes
(
	idFilme		INT PRIMARY KEY IDENTITY
	,idGenero	INT FOREIGN KEY REFERENCES Generos (idGenero)
	,Titulo		VARCHAR(150) NOT NULL
);

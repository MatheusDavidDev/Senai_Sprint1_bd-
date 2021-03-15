CREATE DATABASE Gufi;
GO

USE Gufi
GO

CREATE TABLE tiposUsuarios
(
	idTipoUsuario		INT PRIMARY KEY IDENTITY
	,tituloTipoUsuario	VARCHAR(200) UNIQUE	NOT NULL
);
GO

CREATE TABLE usuarios
(
	idUsuario			INT PRIMARY KEY IDENTITY
	,idTipoUsuario		INT FOREIGN KEY REFERENCES tiposUsuarios(idTipoUsuario)
	,nome				VARCHAR(200) NOT NULL
	,email				VARCHAR(200) UNIQUE NOT NULL
	,senha				VARCHAR(200) NOT NULL
);
GO

CREATE TABLE instituicoes
(
	idInstituicao		INT PRIMARY KEY IDENTITY
	,cnpj				CHAR(14) UNIQUE NOT NULL
	,nomeFantasia		VARCHAR(200) NOT NULL
	,endereco			VARCHAR(250) UNIQUE NOT NULL
);
GO

CREATE TABLE tiposEventos
(
	idTipoEvento		INT PRIMARY KEY IDENTITY
	,tituloTipoEvento	VARCHAR(200) UNIQUE NOT NULL
);
GO

CREATE TABLE eventos
(
	idEvento			INT PRIMARY KEY IDENTITY
	,idTipoEvento		INT FOREIGN KEY REFERENCES tiposEventos(idTipoEvento)
	,idInstituicao		INT FOREIGN KEY REFERENCES instituicoes(idInstituicao)
	,nomeEvento			VARCHAR(250) NOT NULL
	,acessoLivre		BIT DEFAULT (1)
	,dataEvento			DATE NOT NULL
	,descricao			VARCHAR(255)
);
GO

CREATE TABLE presencas
(
	idPrecensa			INT PRIMARY KEY IDENTITY
	,idUsuario			INT FOREIGN KEY REFERENCES usuarios(idUsuario)
	,idEvento			INT FOREIGN KEY REFERENCES eventos(idEvento)
	,situacao			VARCHAR(250) NOT NULL
);
GO
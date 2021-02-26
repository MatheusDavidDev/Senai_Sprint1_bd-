USE Clinicas;

INSERT INTO Clinicas (Nome, CNPJ, Endereco)
VALUES				 ('Clinica David"s', 07700000, 'Av.Pompéia 132')
					,('Clinica Silva', 18810713, 'Av.São joaquim 182')
					,('Clinica Cristovam', 606018166, 'Rua Migues Arlindo 192');

INSERT INTO TiposPats (Descricao)
VALUES				  ('Gato')
					 ,('Cachorro')
					 ,('Coelho')
					 ,('Tartaruga');

INSERT INTO Racas (Descricao, idTipoPet)
VALUES			  ('Siamês', 1)
				 ,('persa', 1)
				 ,('Viralata', 2)
				 ,('Labrador', 2)
				 ,('Husky', 2)
				 ,('Angorá', 3)
				 ,('Rex', 3)
				 ,('Russa', 4)
				 ,('Pintada', 4);

INSERT INTO Donos (Nome)
VALUES			  ('Flávia')
				 ,('Pedro')
				 ,('Sabrina')
				 ,('Marcos')
				 ,('Ana Julía');

INSERT INTO Veterinarios (Nome, CRMV, idClinica)
VALUES					 ('Dr. Silvana', 4513, 1)
						,('Dr. Armando', 3640, 2)
						,('Dr. Giulia', 5001, 3);

INSERT INTO Pets (Nome, DataNascimento, idRaca, idDono)
VALUES			 ('Thor','25/08/2020', 3, 1)
				,('Ramon', '01/01/2015', 4, 2)
				,('Mimi', '16/12/2018', 1, 3)
				,('Miau', '07/05/2016', 2, 4)
				,('Flash', '30/09/2017', 9, 5);
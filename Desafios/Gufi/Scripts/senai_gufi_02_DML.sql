USE Gufi;
GO

INSERT INTO tiposUsuarios (tituloTipoUsuario)
VALUES					  ('Administrador')
						 ,('Comum');
GO

INSERT INTO usuarios(idTipoUsuario, nome, email, senha)
VALUES				 (1, 'Adm', 'adm@adm.com', 'adm123')
					,(2, 'Matheus', 'matheus@email.com', 'matheus123')
					,(2, 'Felipe', 'felipe@email.com', 'felipe123');
GO




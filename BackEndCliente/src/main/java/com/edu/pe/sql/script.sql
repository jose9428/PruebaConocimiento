USE master
GO

CREATE DATABASE bdCliente
GO

USE bdCliente
GO


CREATE TABLE Cliente(
	id_cliente INT IDENTITY PRIMARY KEY NOT NULL,
	nombres VARCHAR(30),
	ape_paterno VARCHAR(50),
	ape_materno VARCHAR(30),
	fecha_nac DATE,
	direccion VARCHAR(120),
	correo VARCHAR(80),
	sexo VARCHAR(20)
)
GO

CREATE PROCEDURE SP_DEL_Cliente(@id INT)
AS
BEGIN
	DELETE FROM Cliente WHERE id_cliente = @id

	SELECT @@ROWCOUNT
END
GO


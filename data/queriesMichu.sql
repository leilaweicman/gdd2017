IDUsuario int primary key identity(1,1),
	Nombre varchar(255) not null,
	Apellido varchar(255)not null,
	Direccion varchar(255)not null,
	Telefono numeric (18,0),
	DNI numeric (18,0) unique not null,
	FechaNacimiento datetime not null,
	ContraseniaEncriptada  varchar(255) not null,
	Mail varchar(50) not null,
	Habilitado bit not null,
	Calle varchar(255) ,
	Piso numeric (2,0),
	Depto varchar(10) ,
	Localidad  varchar(255)

--sp alta usuario
GO

CREATE PROCEDURE PR_altaUsuario
(@nombre varchar(255), @apellido varchar(255), @direccion varchar(255), @telefono numeric(18,0), @dni numeric (18,0),
 @fechaNac datetime, @contrasenia varchar(255), @mail varchar(50), @piso numeric(2,0), @depto varchar(10), @localidad varchar(255),
 @esChofer bit, @esCliente bit)
 AS
 BEGIN
	DECLARE @idUsuario int

	INSERT INTO [GD1C2017].[GIRLPOWER].[Usuario] (Nombre, Apellido, Direccion, Telefono, Dni, FechaNacimiento, ContraseniaEncriptada, 
	Mail, Habilitado, Piso, Depto, Localidad) VALUES 
	(@nombre, @apellido, @direccion, @telefono, @dni, @fechaNac, @contrasenia, @mail, 1, @piso, @depto, @localidad)

	SELECT @idUsuario FROM [GD1C2017].[GIRLPOWER].[Usuario] WHERE DNI = @dni

	IF (@esChofer=1)
	BEGIN
		INSERT INTO [GD1C2017].[GIRLPOWER].[Chofer] (IDChofer) VALUES (@idUsuario)
	END

	IF (@esCliente=1)
	BEGIN
		INSERT INTO [GD1C2017].[GIRLPOWER].[Cliente] (IDCliente) VALUES (@idUsuario)
	END
 END

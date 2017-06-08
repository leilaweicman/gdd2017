--SET IDENTITY_INSERT [GIRLPOWER].[Cliente] ON



/****** Object:  StoredProcedure [dbo].[PR_altaUsuario]    Script Date: 8/6/2017 12:19:18 a. m. ******/
IF OBJECT_ID ('GIRLPOWER.PR_altaUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_altaUsuario]
GO

/****** Object:  StoredProcedure [dbo].[PR_altaUsuario]    Script Date: 8/6/2017 12:19:18 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [GIRLPOWER].[PR_altaUsuario]
(@nombre varchar(255), @apellido varchar(255), @direccion varchar(255), @telefono numeric(18,0), @dni numeric (18,0),
 @fechaNac datetime, @contrasenia varchar(255), @mail varchar(50), @piso numeric(2,0), @depto varchar(10), @localidad varchar(255),
 @esChofer bit, @esCliente bit)
 AS
 BEGIN
	DECLARE @idUsuario int
	
	--BEGIN TRANSACTION
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
	--COMMIT TRANSACTION
	RETURN @@rowCount
 END

GO


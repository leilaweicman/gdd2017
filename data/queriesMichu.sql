
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
 @esChofer bit, @esCliente bit, @codPost int, @username varchar(50))
 AS
 BEGIN
	DECLARE @idUsuario int
	
	BEGIN TRANSACTION
	BEGIN TRY
		INSERT INTO [GD1C2017].[GIRLPOWER].[Usuario] (Nombre, Apellido, Direccion, Telefono, Dni, FechaNacimiento, ContraseniaEncriptada, 
		Mail, Habilitado, Piso, Depto, Localidad, Username) VALUES 
		(@nombre, @apellido, @direccion, @telefono, @dni, @fechaNac, @contrasenia, @mail, 1, @piso, @depto, @localidad, @username)

		SET @idUsuario = (SELECT IDUsuario FROM [GD1C2017].[GIRLPOWER].[Usuario] WHERE DNI = @dni)

		IF (@esChofer=1)
		BEGIN
			INSERT INTO [GD1C2017].[GIRLPOWER].[Chofer] (IDUsuario) VALUES (@idUsuario)
			INSERT INTO GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) VALUES (2, @idUsuario)
		END

		IF (@esCliente=1)
		BEGIN
			INSERT INTO [GD1C2017].[GIRLPOWER].[Cliente] (IDUsuario, CodPostal) VALUES (@idUsuario, @codPost)
			INSERT INTO GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) VALUES (3, @idUsuario)
		END

		IF @@ERROR = 0
			COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		RAISERROR('No se puede registrar el usuario', 16, 217)
			WITH SETERROR
	END CATCH
	RETURN @@rowCount
 END
GO

IF OBJECT_ID ('GIRLPOWER.PR_traerClientes', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerClientes]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerClientes] 
(@dni numeric(18,0)=null, @nombre varchar(255)=null, @apellido varchar(255)=null, @idUsuario int = null)
AS
BEGIN
	BEGIN TRY
		SELECT u.IDUsuario, u.Apellido, u.ContraseniaEncriptada, u.Depto, u.Direccion, u.DNI, u.FechaNacimiento, u.Localidad,
		u.Mail, u.Nombre, u.Piso, u.Telefono, u.Username, c.CodPostal, ru.Habilitado, c.CodPostal  FROM [GIRLPOWER].[Usuario] u 
		JOIN [GIRLPOWER].[Cliente] c ON u.IDUsuario = c.IDUsuario
		JOIN [GIRLPOWER].RolPorUsuario ru ON ru.IDUsuario = u.IDUsuario 
		WHERE ru.IDRol =3 AND (ISNULL(@dni,0)=0 OR u.dni=@dni) AND (ISNULL(@nombre,'')='' OR u.Nombre = @nombre) 
		AND (ISNULL(@apellido,'')='' OR u.Apellido = @apellido) AND (ISNULL(@idUsuario,0)=0 OR u.IDUsuario = @idUsuario)
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error cargando los clientes', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_traerChoferes', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerChoferes]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerChoferes] 
(@dni numeric(18,0)=0, @nombre varchar(255)='', @apellido varchar(255)='', @idUsuario int = 0)
AS
BEGIN
	BEGIN TRY
		SELECT u.IDUsuario, u.Apellido, u.ContraseniaEncriptada, u.Depto, u.Direccion, u.DNI, u.FechaNacimiento, u.Localidad,
		u.Mail, u.Nombre, u.Piso, u.Telefono, u.Username, ru.Habilitado /*as [RolHabilit]*/ FROM [GIRLPOWER].[Usuario] u 
		JOIN [GIRLPOWER].RolPorUsuario ru ON ru.IDUsuario = u.IDUsuario 
		WHERE ru.IDRol=2 AND (ISNULL(@dni,0)=0 OR u.dni=@dni) AND (ISNULL(@nombre,'')='' OR u.Nombre = @nombre) 
		AND (ISNULL(@apellido,'')='' OR u.Apellido = @apellido) AND (ISNULL(@idUsuario,0)=0 OR u.IDUsuario = @idUsuario)
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error cargando los choferes', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

exec girlpower.PR_traerChoferes null, null, null, null
--banca el id este es chofer y cliente soy kpa
exec girlpower.PR_traerClientes 0, null, null,92

IF OBJECT_ID ('GIRLPOWER.PR_verifExisteUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteUsuario]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_verifExisteUsuario] 
(@username varchar(50), @idUsuario int = 0) AS
BEGIN
	SELECT DNI FROM [GIRLPOWER].[Usuario] WHERE Username = @username AND (@idUsuario=0 OR IDUsuario!= @idUsuario)
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_verifExisteDni', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteDni]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_verifExisteDni] 
(@dni numeric(18,0), @idUsuario int = 0) AS
BEGIN
	SELECT DNI FROM [GIRLPOWER].[Usuario] WHERE Dni = @dni AND (@idUsuario=0 OR IDUsuario!= @idUsuario)
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_verifExisteTelefono', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteTelefono]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_verifExisteTelefono] 
(@telefono numeric(18,0), @idUsuario int = 0) AS
BEGIN
	SELECT DNI FROM [GIRLPOWER].[Usuario] WHERE Telefono = @telefono AND (@idUsuario=0 OR IDUsuario!= @idUsuario)
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_inhabilitarCliente', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_inhabilitarCliente]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_inhabilitarCliente] 
(@idUsuario int)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado=0 
		WHERE IDUsuario=@IdUsuario AND IDRol = 3 
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error eliminando al cliente', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_inhabilitarChofer', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_inhabilitarChofer]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_inhabilitarChofer] 
(@idUsuario int)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado=0 
		WHERE IDUsuario=@IdUsuario AND IDRol = 2
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error eliminando al chofer', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_editarCliente', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_editarCliente]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_editarCliente] 
(@idUsuario int, @nombre varchar(255), @apellido varchar(255), @direccion varchar(255), @telefono numeric(18,0), @dni numeric (18,0),
 @fechaNac datetime, @contrasenia varchar(255), @mail varchar(50), @piso numeric(2,0), @depto varchar(10), @localidad varchar(255),
 @codPost int, @username varchar(50), @habilitado bit)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Usuario SET nombre=@nombre, apellido= @apellido, direccion=@direccion, telefono=@telefono, dni = @dni,
			 FechaNacimiento = @fechaNac, ContraseniaEncriptada= isnull(@contrasenia, ContraseniaEncriptada), Mail=@mail, piso = @piso,
			 depto = @depto, localidad = @localidad, Username = @username
		WHERE IDUsuario = @idUsuario

		UPDATE GIRLPOWER.Cliente SET CodPostal = @codPost WHERE IDUsuario=@idUsuario

		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado = @habilitado
		WHERE IDUsuario=@idUsuario AND IDRol = 3
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error modificando el cliente', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_editarChofer', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_editarChofer]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_editarChofer] 
(@idUsuario int, @nombre varchar(255), @apellido varchar(255), @direccion varchar(255), @telefono numeric(18,0), @dni numeric (18,0),
 @fechaNac datetime, @contrasenia varchar(255), @mail varchar(50), @piso numeric(2,0), @depto varchar(10), @localidad varchar(255),
 @username varchar(50), @habilitado bit)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Usuario SET nombre=@nombre, apellido= @apellido, direccion=@direccion, telefono=@telefono, dni = @dni,
			 FechaNacimiento = @fechaNac, ContraseniaEncriptada= isnull(@contrasenia, ContraseniaEncriptada), Mail=@mail, piso = @piso,
			 depto = @depto, localidad = @localidad, Username = @username 
		WHERE IDUsuario = @idUsuario
		
		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado = @habilitado
		WHERE IDUsuario=@idUsuario AND IDRol = 2
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error modificando el chofer', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_traerRolesExtra', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerRolesExtra]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerRolesExtra] 
(@idRol int)
AS
BEGIN
	BEGIN TRY
		SELECT * FROM GIRLPOWER.Rol
		WHERE IDRol <> IDRol AND IDRol <> 1
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error cargando los roles', 16, 217)
			WITH SETERROR
	END CATCH
END
GO
/*

--EXTRAS!!! las uso para probar
SELECT * FROM [GIRLPOWER].Factura

SELECT Cliente_Telefono, Factura_Nro , Factura_Fecha_Inicio, Factura_Fecha_Fin, Factura_Fecha FROM gd_esquema.Maestra order by 1

sELECT * FROM gd_esquema.Maestra order by Cliente_Telefono

SELECT distinct(Chofer_Dni) FROM gd_esquema.Maestra order by 1

select * from GIRLPOWER.usuario WHERE dni= 18911370

select * from GIRLPOWER.RolPorUsuario

select * from GIRLPOWER.rol

SELECT u.IDUsuario, u.Apellido, u.ContraseniaEncriptada, u.Depto, u.Direccion, u.DNI, u.FechaNacimiento, u.Localidad,
		u.Mail, u.Nombre, u.Piso, u.Telefono, u.Username, c.CodPostal, ru.Habilitado /*as [RolHabilit]*/ FROM [GIRLPOWER].[Usuario] u 
		JOIN [GIRLPOWER].[Cliente] c ON u.IDUsuario = c.IDUsuario
		JOIN GIRLPOWER.RolPorUsuario ru ON ru.IDUsuario = u.IDUsuario 
		JOIN GIRLPOWER.Rol r ON r.IDRol = ru.IDRol
		WHERE r.Nombre= 'Cliente'

select * from girlpower.Rol
select * from girlpower.Usuario u JOIN GIRLPOWER.RolPorUsuario ru ON ru.IDUsuario = u.IDUsuario WHERE IDRol=3
select * from GIRLPOWER.Automovil a JOIN girlpower.turnoPorAutomovil ta ON ta.IDAutomovil = a.IDAutomovil 
JOIN GIRLPOWER.turno t on ta.IDAutomovil=t.IDTurno

insert into GIRLPOWER.Viaje (IDChofer, IDCliente, IDAutomovil, IDTurno, CantidadKilometros, FechaInicio, FechaFin, Precio)
VALUES (23, 42, 1, 1, 10, CONVERT(DateTime,'1976-04-13 17:00:00.000'), CONVERT(DateTime,'1976-04-13 18:00:00.000'), 170)
*/



IF OBJECT_ID ('GIRLPOWER.PR_traerUsuarioPorUsername', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername]
GO

IF OBJECT_ID ('GIRLPOWER.deshabilitarUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[deshabilitarUsuario]
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoRolPorUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoRolPorUsuario]
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoFuncionalidadPorRol', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoFuncionalidadPorRol]
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoRol', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoRol]
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoFuncionalidad', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoFuncionalidad]
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoRolPorNombre', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoRolPorNombre]
GO

IF OBJECT_ID ('GIRLPOWER.insertFuncionalidadPorRol', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[insertFuncionalidadPorRol]
GO

IF OBJECT_ID ('GIRLPOWER.insertRol_RetornarID', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[insertRol_RetornarID]
GO

IF OBJECT_ID ('GIRLPOWER.deleteFuncionalidadPorRol_PorIdRol', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[deleteFuncionalidadPorRol_PorIdRol]
GO

IF OBJECT_ID ('GIRLPOWER.updateRol', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[updateRol]
GO

IF OBJECT_ID ('GIRLPOWER.deshabilitarRol', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[deshabilitarRol]
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoUsuarioQueSonChoferes', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferes]
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoUsuarioQueSonClientes', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonClientes]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername] (@Username VARCHAR(30)) AS
BEGIN
	SELECT * FROM girlpower.usuario WHERE username=@Username
END
GO

CREATE PROCEDURE [GIRLPOWER].[deshabilitarUsuario] (@IdUsuario int) AS
BEGIN
	UPDATE girlpower.usuario SET Habilitado=0 WHERE IDUsuario=@IdUsuario
END
GO

CREATE PROCEDURE [GIRLPOWER].[traerListadoRolPorUsuario] (@IDUsuario int) AS
BEGIN
	SELECT * FROM girlpower.RolPorUsuario r1
	join girlpower.Rol r2 on r1.IDRol = r2.IDRol
	WHERE r1.IDUsuario=@IDUsuario AND r1.Habilitado=1 AND r2.Habilitado=1
END
GO

CREATE PROCEDURE [GIRLPOWER].[traerListadoFuncionalidadPorRol] (@IDRol int) AS
BEGIN
	SELECT * FROM girlpower.FuncionalidadPorRol f
	join girlpower.Funcionalidad f2 on f.IDFuncionalidad = f2.IDFuncionalidad
	WHERE f.IDRol=@IDRol
END
GO

CREATE PROCEDURE [GIRLPOWER].[traerListadoRol] AS
BEGIN
	SELECT * FROM girlpower.Rol
END
GO

CREATE PROCEDURE [GIRLPOWER].[traerListadoFuncionalidad] AS
BEGIN
	SELECT * FROM girlpower.Funcionalidad
END
GO

CREATE PROCEDURE [GIRLPOWER].[traerListadoRolPorNombre] (@Nombre VARCHAR(255)) AS
BEGIN
	SELECT * FROM girlpower.Rol 
	WHERE Nombre=@Nombre
END
GO

CREATE PROCEDURE [GIRLPOWER].[insertFuncionalidadPorRol] (@IDRol int, @IDFuncionalidad int) AS
BEGIN
	INSERT INTO girlpower.FuncionalidadPorRol (IDRol, IDFuncionalidad) VALUES (@IDRol, @IDFuncionalidad)
END
GO

CREATE PROCEDURE [GIRLPOWER].[insertRol_RetornarID] (@Nombre VARCHAR(255), @Habilitado bit) AS
BEGIN
	INSERT INTO girlpower.Rol (Nombre, Habilitado) VALUES (@Nombre, @Habilitado)
	SELECT @@IDENTITY AS IDRol
END
GO

CREATE PROCEDURE [GIRLPOWER].[deleteFuncionalidadPorRol_PorIdRol] (@IDRol int) AS
BEGIN
	DELETE FROM GIRLPOWER.FuncionalidadPorRol WHERE IDRol=@IDRol
END
GO

CREATE PROCEDURE [GIRLPOWER].[updateRol] (@IDRol int, @Nombre VARCHAR(255), @Habilitado bit) AS
BEGIN
	UPDATE GIRLPOWER.Rol SET Nombre=@Nombre, Habilitado=@Habilitado WHERE IDRol=@IDRol
END
GO

CREATE PROCEDURE [GIRLPOWER].[deshabilitarRol] (@IDRol int) AS
BEGIN
	UPDATE GIRLPOWER.Rol SET Habilitado=0 WHERE IDRol=@IDRol
	UPDATE GIRLPOWER.RolPorUsuario SET Habilitado=0 WHERE IDRol=@IDRol
END
GO

CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferes] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
END
GO

CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonClientes] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Cliente c on u.IDUsuario=c.IDUsuario
END
GO

IF OBJECT_ID ('GIRLPOWER.traerAutomovilDelChofer', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerAutomovilDelChofer]
GO

CREATE PROCEDURE [GIRLPOWER].[traerAutomovilDelChofer] (@IDChofer int) AS
BEGIN
	SELECT IDAutomovil, IDChofer as Chofer, ma.Nombre as Marca, mo.Nombre as Modelo, Licencia, Patente, Rodado, a.Habilitado
	FROM [GIRLPOWER].[Automovil] a 
	JOIN [GIRLPOWER].[MarcaModelo] m ON a.IDMarcaModelo = m.IDMarcaModelo
	JOIN [GIRLPOWER].Marca ma ON ma.IDMarca = m.IDMarca
	JOIN [GIRLPOWER].[Modelo] mo ON m.IDModelo = mo.IDModelo
	WHERE IDChofer=@IDChofer
END
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoTurno', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoTurno]
GO

CREATE PROCEDURE [GIRLPOWER].[traerListadoTurno] AS
BEGIN
	SELECT * FROM girlpower.Turno
END
GO

IF OBJECT_ID ('GIRLPOWER.insertViaje', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[insertViaje]
GO

CREATE PROCEDURE [GIRLPOWER].[insertViaje] (@IDChofer int, @IDTurno int, @IDCliente int, @IDAutomovil int, @CantKM numeric(18,0), @FechaInicio varchar(100), @FechaFin varchar(100) ) AS
BEGIN
	INSERT INTO girlpower.Viaje(IDChofer, IDTurno, IDCliente, IDAutomovil, CantidadKilometros, FechaInicio, FechaFin) 
	VALUES (@IDChofer, @IDTurno, @IDCliente, @IDAutomovil, @CantKM, convert(datetime,'2017-11-30 12:10:01',120), convert(datetime,'2017-11-30 14:10:01',120))
END
GO


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
	WHERE r1.IDUsuario=@IDUsuario
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


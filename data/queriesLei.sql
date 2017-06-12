
IF OBJECT_ID ('GIRLPOWER.PR_traerUsuarioPorUsername', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername]
GO

IF OBJECT_ID ('GIRLPOWER.deshabilitarUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[deshabilitarUsuario]
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoRolPorUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoRolPorUsuario]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername] (@Username VARCHAR(30)) AS
BEGIN
	SELECT * FROM girlpower.usuario WHERE username=@Username
END
GO

CREATE PROCEDURE [GIRLPOWER].[deshabilitarUsuario] (@IdUsuario VARCHAR(30)) AS
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

IF OBJECT_ID ('GIRLPOWER.PR_altaUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername]
GO

IF OBJECT_ID ('GIRLPOWER.PR_altaUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[deshabilitarUsuario]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername] (@Username VARCHAR(30)) AS
BEGIN
	SELECT * FROM girlpower.usuario WHERE username=@Username
END

CREATE PROCEDURE [GIRLPOWER].[deshabilitarUsuario] (@IdUsuario VARCHAR(30)) AS
BEGIN
	UPDATE girlpower.usuario SET Habilitado=0 WHERE IDUsuario=@IdUsuario
END
USE [GD1C2017]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonClientesHabilitados]    Script Date: 04/07/2017 22:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonClientesHabilitados] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Cliente c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on c.IDUsuario= r.IDUsuario 
	WHERE r.Habilitado = 1 and r.IDRol=3
END

go

ALTER PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitados] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario= r.IDUsuario
	WHERE r.Habilitado = 1 and r.IDRol=2
END

GO

ALTER PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitadosConAuto] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario= r.IDUsuario
	join girlpower.Automovil a on c.IDChofer=a.IDChofer
	WHERE r.Habilitado = 1 and r.IDRol=2 and a.Habilitado = 1
END
GO

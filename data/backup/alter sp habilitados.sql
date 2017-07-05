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
	join GIRLPOWER.Rol ro on ro.IDRol=r.IDRol and ro.Nombre='Cliente'
	WHERE r.Habilitado = 1
END

go

ALTER PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitados] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario= r.IDUsuario
	join GIRLPOWER.Rol ro on ro.IDRol=r.IDRol and ro.Nombre='Chofer'
	
	WHERE r.Habilitado = 1
END

GO

ALTER PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitadosConAuto] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario= r.IDUsuario
	join GIRLPOWER.Rol ro on ro.IDRol=r.IDRol and ro.Nombre='Chofer'
	
	join girlpower.Automovil a on c.IDChofer=a.IDChofer
	WHERE r.Habilitado = 1
END

GO



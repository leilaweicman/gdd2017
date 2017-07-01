
IF OBJECT_ID ('GIRLPOWER.PR_altaAutomovil', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_altaAutomovil]
GO

create procedure [GIRLPOWER].PR_altaAutomovil(
@idChofer int, @idMarca int, @idModelo int,@patente varchar(10), @licencia varchar(26),
@rodado varchar(10)
)
as 
begin
declare @idMarcaModelo int
set @idMarcaModelo=(select IDMarcaModelo from [GIRLPOWER].MarcaModelo where 
IDMarca=@idMarca and IDModelo=@idModelo)
insert into [GIRLPOWER].Automovil (IDChofer,IDMarcaModelo,Patente,Licencia,Rodado,Habilitado)values
(@idChofer,@idMarcaModelo,@patente,@licencia,@rodado,1)

	RETURN @@rowCount
end 
go 


IF OBJECT_ID ('GIRLPOWER.PR_modificarAutomovil', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_modificarAutomovil]
GO

create procedure [GIRLPOWER].PR_modificarAutomovil(
@idAutomovil int,@idChofer int, @idMarca int, @idModelo int,@patente varchar(10), @licencia varchar(26),
@rodado varchar(10)
)
as 
begin
declare @idMarcaModelo int
set @idMarcaModelo=(select IDMarcaModelo from [GIRLPOWER].MarcaModelo where 
IDMarca=@idMarca and IDModelo=@idModelo)
update [GIRLPOWER].Automovil set 
IDChofer=@idChofer,
IDMarcaModelo=@idMarcaModelo,
Patente=@patente,
Licencia=@licencia,
Rodado=@rodado
where IDAutomovil=@idAutomovil

	RETURN @@rowCount
end 
go


IF OBJECT_ID ('GIRLPOWER.PR_TraerAutomoviles', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].PR_TraerAutomoviles
GO

CREATE PROCEDURE [GIRLPOWER].PR_TraerAutomoviles (@idChofer int,@idMarca int, @patente varchar (10),@idModelo int)
 AS
BEGIN
	BEGIN TRY
		SELECT a.IDAutomovil,u.Nombre as Chofer, ma.Nombre as Marca,mo.Nombre as Modelo,Licencia,Patente,Rodado,a.Habilitado
		 FROM [GIRLPOWER].[Automovil] a 
		JOIN [GIRLPOWER].[MarcaModelo] m
		 ON a.IDMarcaModelo = m.IDMarcaModelo

		 JOIN [GIRLPOWER].Marca ma
		 ON ma.IDMarca = m.IDMarca

JOIN [GIRLPOWER].[Modelo] mo
		 ON m.IDModelo = mo.IDModelo

JOIN [GIRLPOWER].[Chofer] c
		 ON a.IDChofer = c.IDChofer

		 JOIN [GIRLPOWER].Usuario u
		 on u.IDUsuario=c.IDUsuario
		 where (@idChofer=0 OR C.IDChofer=@idChofer)AND
		 (@idMarca=0 OR ma.IDMarca=@idMarca)and
		 (@patente='' OR Patente=@patente)and
		 	 (@idModelo=0 OR m.IDModelo=@idModelo)


	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error cargando los automoviles', 16, 217)
			WITH SETERROR
	END CATCH
END
GO
IF OBJECT_ID ('GIRLPOWER.deshabilitarAutomovil', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].deshabilitarAutomovil
GO

CREATE PROCEDURE [GIRLPOWER].deshabilitarAutomovil (@id int) AS
BEGIN
	
		update [GIRLPOWER].Automovil set Habilitado=0 where IDAutomovil=@id
	
END
GO


IF OBJECT_ID ('GIRLPOWER.traerListadoTurnoPorAutomovil', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].traerListadoTurnoPorAutomovil
GO


CREATE PROCEDURE [GIRLPOWER].traerListadoTurnoPorAutomovil (@IDAutomovil INT) AS
BEGIN
	SELECT * FROM girlpower.Turno t
	inner join GIRLPOWER.TurnoPorAutomovil ta on ta.IDTurno=t.IDTurno
	 WHERE ta.IDAutomovil=@IDAutomovil
END
GO



create procedure [GIRLPOWER].PR_UltimoID(@Patente varchar (10))
as
begin
select IDAutomovil as ID from Automovil where Patente=@Patente
end

GO
create procedure [girlpower].BorrarTurnosPorAutomovil(@idAutomovil int)as
begin
delete TurnoPorAutomovil where IDAutomovil=@idAutomovil 
end


GO
CREATE PROCEDURE [GIRLPOWER].AgregarTurnoPorAutomovil(@idAutomovil int, @idTurno int)as
begin
insert TurnoPorAutomovil(IDAutomovil,IDTurno) values(@idAutomovil , @idTurno)
end
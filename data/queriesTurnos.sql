IF OBJECT_ID ('GIRLPOWER.PR_traerTurnos', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerTurnos]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerTurnos] 
(@descripcion varchar(255)=null)
AS
BEGIN
	BEGIN TRY
		SELECT * FROM [GIRLPOWER].[Turno] t
		WHERE @descripcion='' OR t.Descripcion = @descripcion
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error cargando los turnos', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_inhabilitarTurno', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_inhabilitarTurno]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_inhabilitarTurno] 
(@idTurno int)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Turno SET Habilitado=0 
		WHERE IDTurno=@idTurno
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error eliminando el turno', 16, 217)
			WITH SETERROR
	END CATCH
END
GO
/*
IF OBJECT_ID ('GIRLPOWER.TR_insertarTurnosConDatetime', 'T') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[TR_insertarTurnosConDatetime]
GO

CREATE TRIGGER [GIRLPOWER].[TR_insertarTurnosConDatetime]
ON GIRLPOWER.Turno
INSTEAD OF INSERT
AS
BEGIN
	declare @intHoraInicio numeric(18,0)
	declare @intHoraFin numeric (18,0)
	declare @horaInicio Time(0)
	declare @horaFin Time(0)
	declare @horaFinModificada Time(0)
	
	declare @descripcion varchar (255)
	declare @valKilometro numeric (18,2)
	declare @precioBase numeric (18,2)
	declare @habilitado bit
	
	SELECT @intHoraInicio=i.HoraInicio, @intHoraFin=i.HoraFin, @descripcion=i.Descripcion,
		@valKilometro=i.ValorKilometro, @precioBase = i.PrecioBase, @habilitado = i.Habilitado FROM inserted AS i
	/*set @intHoraInicio = 8
	set @intHoraFin = 0*/
	
	set @intHoraInicio = convert(int, @intHoraInicio)
	
	--set @horaInicio = (CAST(@intHoraInicio AS VARCHAR(2)))+':00:00'
	--set @horaFin = (CAST(@intHoraFin AS VARCHAR(2)))+':00:00'
	
	set @horaFinModificada = dateadd(SECOND, -1, @horaFin)

	INSERT INTO GIRLPOWER.Turno (HoraInicio,HoraFin,Descripcion,ValorKilometro,PrecioBase,Habilitado)
	VALUES (@horaInicio, @horaFinModificada, @descripcion, @valKilometro, @precioBase, @habilitado)
END
GO
*/
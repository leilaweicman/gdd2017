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

IF OBJECT_ID ('GIRLPOWER.PR_inhabilitarTurno', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_inhabilitarTurno]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_inhabilitarTurno] 
(@idTurno int)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Turno SET Habilitado=0 
		WHERE IDTurno=@IdTurno
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error eliminando el turno', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_altaTurno', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_altaTurno]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_altaTurno]
(@descripcion varchar(255), @horaInicio numeric (18,0), @horaFin numeric (18,0), @precioBase numeric (18,2), @valorKilometro numeric (18,2))
--ver si sirve pasarle el habilitado o no 
 AS
 BEGIN
	DECLARE @idUsuario int
	
	BEGIN TRANSACTION
	BEGIN TRY
		INSERT INTO [GD1C2017].[GIRLPOWER].Turno (Descripcion, HoraInicio, HoraFin, PrecioBase, ValorKilometro) VALUES 
		(@descripcion, @horaInicio, @horaFin, @precioBase, @valorKilometro)

		IF @@ERROR = 0
			COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		RAISERROR('No se puede registrar el turno', 16, 217)
			WITH SETERROR
	END CATCH
	RETURN @@rowCount
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
	declare @intHoraInicio int
	declare @intHoraFin int
	declare @horaInicio DateTime
	declare @horaFin DateTime
	declare @horaFinModificada DateTime
	
	declare @descripcion varchar (255)
	declare @valKilometro numeric (18,2)
	declare @precioBase numeric (18,2)
	declare @habilitado bit

	set @horaInicio = convert(datetime, '01/01/1999 00:00:00')
	set @horaFin = convert(datetime, '01/01/1999 00:00:00')
	
	SELECT @intHoraInicio=(convert(int,i.HoraInicio)), @intHoraFin=(convert(int, i.HoraFin)), @descripcion=i.Descripcion,
		@valKilometro=i.ValorKilometro, @precioBase = i.PrecioBase, @habilitado = i.Habilitado FROM inserted AS i
	--set @intHoraInicio = 8
	--set @intHoraFin = 0
	
	--set @intHoraInicio = 8

	--set @intHoraInicio = convert(int, @intHoraInicio)
	
	--set @horaInicio = (CAST(@intHoraInicio AS VARCHAR(2)))+':00:00'
	--set @horaFin = (CAST(@intHoraFin AS VARCHAR(2)))+':00:00'
	--set @horaInicio = DATEADD(hour, (cast(@intHoraInicio AS int)), @horaInicio)
	
	--set @horaFinModificada = dateadd(SECOND, -1, @horaFin)

	--set @horaInicio = CONVERT(datetime, 8, 120)
	--select @horaInicio

	INSERT INTO GIRLPOWER.Turno (HoraInicio,HoraFin,Descripcion,ValorKilometro,PrecioBase,Habilitado)
	VALUES (@horaInicio, @horaFinModificada, @descripcion, @valKilometro, @precioBase, @habilitado)
END
GO
*/
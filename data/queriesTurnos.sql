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

IF OBJECT_ID ('GIRLPOWER.PR_traerTurnosHabilitados', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerTurnosHabilitados]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerTurnosHabilitados] 
AS
BEGIN
	BEGIN TRY
		SELECT * FROM [GIRLPOWER].[Turno] t
		WHERE t.Habilitado=1
		ORDER BY t.HoraInicio
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

IF OBJECT_ID ('GIRLPOWER.PR_altaTurno', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_altaTurno]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_altaTurno]
(@descripcion varchar(255), @horaInicio numeric (18,0), @horaFin numeric (18,0), @precioBase numeric (18,2), @valorKilometro numeric (18,2))
--ver si sirve pasarle el habilitado o no 
 AS
 BEGIN
	
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

IF OBJECT_ID ('GIRLPOWER.PR_editarTurno', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_editarTurno]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_editarTurno] 
(@idTurno int, @descripcion varchar(255), @horaInicio numeric (18,0), @horaFin numeric (18,0), @precioBase numeric (18,2), 
@valorKilometro numeric (18,2), @habilitado bit)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Turno SET Descripcion=@descripcion, HoraInicio=@horaInicio, HoraFin=@horaFin, PrecioBase=@precioBase, 
		ValorKilometro=@valorKilometro, Habilitado = @habilitado 
		WHERE IDTurno=IDTurno
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error modificando el turno', 16, 217)
			WITH SETERROR
	END CATCH
END
GO


/*insert into GIRLPOWER.Turno (Descripcion, HoraInicio, HoraFin, PrecioBase, ValorKilometro)
Values ('asd', 22, 24, 12, 12)

select * from GIRLPOWER.Turno

delete from GIRLPOWER.Turno where IDTurno = 4

select ContraseniaEncriptada from GIRLPOWER.Usuario where Username='admin'

select hashbytes('SHA2_256', 'w32e')
select hashbytes('SHA2_256', 'w23e')
*/

/*
IF OBJECT_ID ('GIRLPOWER.TR_insertarTurnosConDatetime', 'T') IS NOT NULL
DROP TRIGGER [GIRLPOWER].[TR_insertarTurnosConDatetime]
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
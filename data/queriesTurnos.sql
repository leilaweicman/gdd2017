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

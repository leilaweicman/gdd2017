create PROCEDURE [GIRLPOWER].[PR_TieneAutoHabilitado] 
(@idChofer int,@id int) AS
BEGIN
declare @result int
	set @result=0
	IF (EXISTS (SELECT 1 FROM [GIRLPOWER].[Automovil] WHERE IDChofer = @idChofer and IDAutomovil<>@id and Habilitado=1))
		select 1 as TieneAuto
		else
		select 0 as TieneAuto
END
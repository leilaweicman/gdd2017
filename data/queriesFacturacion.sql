IF OBJECT_ID ('GIRLPOWER.PR_traerViajesFacturaDetalle', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerViajesFacturaDetalle]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerViajesFacturaDetalle] 
(@idCliente int, @fechaInicio datetime, @fechaFin datetime)
AS --tengo que validar en la aplicacion que no exista una factura en este mes
BEGIN
	SELECT * FROM GIRLPOWER.viaje WHERE IDCliente=@idCliente AND CAST(FechaFin as date) >= CAST(@fechaInicio as date) 
	AND CAST(FechaFin as date) <= CAST(@fechaFin as date)
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_verifExisteFacturaEseMes', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteFacturaEseMes]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_verifExisteFacturaEseMes] 
(@idCliente int, @fechaInicio datetime) AS
BEGIN
	SELECT FechaFin FROM [GIRLPOWER].[Factura] WHERE IDCliente= @idCliente AND MONTH(FechaInicio) = MONTH(@fechaInicio)  
	AND YEAR(FechaInicio) = YEAR(@FechaInicio);
END
GO


IF OBJECT_ID ('GIRLPOWER.PR_altaFacturaDetalle', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_altaFacturaDetalle]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_altaFacturaDetalle] 
(@idFactura int, @idCliente int, @fechaInicio datetime, @fechaFin datetime) AS
BEGIN
	INSERT INTO GIRLPOWER.FacturaDetalle (IDFactura, IDViaje, Importe)
	(SELECT @idFactura, IDViaje, Precio FROM GIRLPOWER.viaje WHERE IDCliente=@idCliente AND CAST(FechaFin as date) >= CAST(@fechaInicio as date) 
	AND CAST(FechaFin as date) <= CAST(@fechaFin as date))
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_altaFactura', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_altaFactura]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_altaFactura] 
(@idCliente int, @fechaInicio datetime, @fechaFin datetime, @importeTotal numeric(18,2), @fecha dateTime) AS
BEGIN
	declare @proxNumFactura numeric (18,0) = (select max(f.NroFactura) + 1 from GIRLPOWER.Factura f)

	INSERT INTO GIRLPOWER.Factura (IDCliente, FechaInicio, FechaFin, ImporteTotal, Fecha, NroFactura)
	VALUES (@idCliente, @fechaInicio, @fechaFin, @importeTotal, @fecha, @proxNumFactura)

	declare @idFactura int = (select IDFactura from Factura where NroFactura = @proxNumFactura)
	exec [GIRLPOWER].[PR_altaFacturaDetalle] @idFactura, @idCliente, @fechaInicio, @fechaFin
END
GO
select * from GIRLPOWER.Factura


select * from GIRLPOWER.viaje where YEAR(FechaInicio) = 2017


/*
IF OBJECT_ID ('GIRLPOWER.TR_insertarViajeFacturaDetalle', 'T') IS NOT NULL
DROP TRIGGER [GIRLPOWER].TR_insertarViajeFacturaDetalle
GO

CREATE TRIGGER [GIRLPOWER].TR_insertarViajeFacturaDetalle
ON GIRLPOWER.Viaje
AFTER INSERT
AS
BEGIN
	declare @importe numeric(18,2)
	declare @idViaje int
	declare @idFactura int
	declare @idCliente int
	declare @fecha datetime
	declare @mes varchar(250)

	SELECT @importe=i.Precio,  @idCliente = i.IDCliente, @idViaje = i.IDViaje, @fecha=i.FechaInicio FROM inserted i
	
	
	SELECT @idFactura=f.IDFactura FROM GIRLPOWER.Factura f WHERE f.FechaInicio <= @fecha AND f.FechaFin !=null AND f.IDCliente = @idCliente

	BEGIN TRANSACTION
	BEGIN TRY
		IF @idFactura=null
		BEGIN
		--hago insert en  factura		
			INSERT INTO Factura (IDCliente, FechaInicio) 
			VALUES (@idCliente, @fecha)		
				
			SELECT @idFactura=f.IDFactura FROM GIRLPOWER.Factura f 
			WHERE f.FechaInicio <= @fecha AND f.FechaFin !=null	AND f.IDCliente = @idCliente
		END 
		
		BEGIN
		--hago insert en factura detalle
			INSERT INTO GIRLPOWER.FacturaDetalle (IDFactura, IDViaje, Importe)
			VALUES (@idFactura, @idViaje, @importe)
		END
		IF @@ERROR=0
			COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		RAISERROR('No se puede registrar el viaje en la factura', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

*/


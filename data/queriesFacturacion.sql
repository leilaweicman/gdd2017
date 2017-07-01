
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
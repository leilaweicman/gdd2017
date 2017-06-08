
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
insert into [GIRLPOWER].Automovil (IDChofer,IDMarcaModelo,Patente,Licencia,Rodado)values
(@idChofer,@idMarcaModelo,@patente,@licencia,@rodado)
	RETURN @@rowCount
end 
go 
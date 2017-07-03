
IF OBJECT_ID ('GIRLPOWER.traerListadoUsuarioChoferesConMasRecaudacion', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioChoferesConMasRecaudacion]
GO

create procedure [girlpower].[traerListadoUsuarioChoferesConMasRecaudacion] (@fechaInicio datetime, @fechaFin datetime)
as begin
---CHOFERES CON MAS RECAUDACION
select top 5 u.Nombre, sum(r.ImporteTotal) as Total
from [GIRLPOWER].Rendicion r join [GIRLPOWER].Chofer c
on r.IDChofer=c.IDChofer
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
where r.Fecha between CAST(@fechaInicio as date) and CAST(@fechaFin as date)
group by r.IDChofer,u.Nombre
order by 2 desc

end
go 
IF OBJECT_ID ('GIRLPOWER.traerListadoUsuarioChoferesConViajeMasLargo', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioChoferesConViajeMasLargo]

GO

create procedure [girlpower].[traerListadoUsuarioChoferesConViajeMasLargo] (@fechaInicio datetime, @fechaFin datetime)
as begin
select top 5 u.Nombre, max(v.CantidadKilometros)as Kilometros
from [GIRLPOWER].Viaje v join [GIRLPOWER].Chofer c
on v.IDCliente=c.IDChofer
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
where v.FechaInicio between CAST(@fechaInicio as date) and CAST(@fechaFin as date)
group by v.IDChofer,u.Nombre
order by 2 desc
end
go

IF OBJECT_ID ('GIRLPOWER.traerListadoUsuarioClientesConMayorConsumo', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioClientesConMayorConsumo]
GO

create procedure [girlpower].[traerListadoUsuarioClientesConMayorConsumo](@fechaInicio datetime, @fechaFin datetime)
as begin
select top 5 u.Nombre, sum(f.ImporteTotal) as Total
from [GIRLPOWER].Factura f join [GIRLPOWER].Cliente c
on f.IDCliente=c.IDCliente
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
where f.Fecha between CAST(@fechaInicio as date) and CAST(@fechaFin as date)
group by f.IDCliente,u.Nombre
order by 2 desc
end
go

IF OBJECT_ID ('GIRLPOWER.traerListadoUsuarioClienteQueUtilizoMasVecesElMismoAuto', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioClienteQueUtilizoMasVecesElMismoAuto]

GO

create procedure [girlpower].[traerListadoUsuarioClienteQueUtilizoMasVecesElMismoAuto] (@fechaInicio datetime, @fechaFin datetime)
as begin
select top 5 u.Nombre, a.Patente, count(*) as Cantidad from [GIRLPOWER].Viaje v
join [GIRLPOWER].Cliente c on c.IDCliente=v.IDCliente
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
join [GIRLPOWER].Automovil a on a.IDAutomovil=v.IDAutomovil
where v.FechaInicio between CAST(@fechaInicio as date) and CAST(@fechaFin as date)
group by  v.IDCliente,u.Nombre,a.Patente
order by 3
end
go

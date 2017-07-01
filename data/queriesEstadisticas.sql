IF OBJECT_ID ('GIRLPOWER.PR_ChoferesConMasRecaudacion', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_ChoferesConMasRecaudacion]
GO

create procedure [girlpower].PR_ChoferesConMasRecaudacion(@fechaInicio date, @fechaFin date)
as begin
---CHOFERES CON MAS RECAUDACION
select top 5 u.Nombre, sum(r.ImporteTotal) as Total
from [GIRLPOWER].Rendicion r join [GIRLPOWER].Chofer c
on r.IDChofer=c.IDChofer
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
where r.Fecha between @fechaInicio and @fechaFin
group by r.IDChofer,u.Nombre
order by 2 desc

end
go 
IF OBJECT_ID ('GIRLPOWER.PR_ChoferesConViajeMasLargo', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_ChoferesConViajeMasLargo]

GO

create procedure [girlpower].PR_ChoferesConViajeMasLargo(@fechaInicio date, @fechaFin date)
as begin
select top 5 u.Nombre, sum(f.ImporteTotal) as Total
from [GIRLPOWER].Factura f join [GIRLPOWER].Cliente c
on f.IDCliente=c.IDCliente
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
where f.Fecha between @fechaInicio and @fechaFin
group by f.IDCliente,u.Nombre
order by 2 desc
end
go
IF OBJECT_ID ('GIRLPOWER.PR_ClientesConMayorConsumo', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_ClientesConMayorConsumo]
GO

create procedure [girlpower].PR_ClientesConMayorConsumo(@fechaInicio date, @fechaFin date)
as begin
select top 5 u.Nombre, sum(f.ImporteTotal) as Total
from [GIRLPOWER].Factura f join [GIRLPOWER].Cliente c
on f.IDCliente=c.IDCliente
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
where f.Fecha between @fechaInicio and @fechaFin
group by f.IDCliente,u.Nombre
order by 2 desc
end
go
IF OBJECT_ID ('GIRLPOWER.PR_ClienteQueUtilizoMasVecesElMismoAuto', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_ClienteQueUtilizoMasVecesElMismoAuto]

GO

create procedure [girlpower].PR_ClienteQueUtilizoMasVecesElMismoAuto(@fechaInicio date, @fechaFin date)
as begin
select top 5 u.Nombre, a.Patente, count(*) as Cantidad from [GIRLPOWER].Viaje v
join [GIRLPOWER].Cliente c on c.IDCliente=v.IDCliente
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
join [GIRLPOWER].Automovil a on a.IDAutomovil=v.IDAutomovil
where v.FechaInicio between @fechaInicio and @fechaFin
group by  v.IDCliente,u.Nombre,a.Patente
order by 3
end
go
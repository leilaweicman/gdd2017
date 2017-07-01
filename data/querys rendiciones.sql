IF OBJECT_ID ('GIRLPOWER.traerListadoRendicionDetalle', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].traerListadoRendicionDetalle
go
create procedure  girlpower.traerListadoRendicionDetalle (@fecha date, @porcentaje int,
 @idchofer int, @idturno int)as begin
  select u.Nombre,v.FechaFin,v.Precio as precioViaje,
  (v.Precio - ((v.Precio*@porcentaje)/100))as precioChofer 
  from [GD1C2017].[GIRLPOWER].Viaje v  join
   [GD1C2017].[GIRLPOWER].Cliente c on c.IDCliente=V.IDCliente
   JOIN [GD1C2017].[GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
   where v.IDTurno=@idturno and v.IDChofer=@idchofer and 
   cast(FechaFin as date)=CAST(@fecha as date )
   end
   go
   IF OBJECT_ID ('GIRLPOWER.PR_TotalRendicion', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].PR_TotalRendicion
go

   create procedure  girlpower.PR_TotalRendicion (@fecha date, @porcentaje int,
 @idchofer int, @idturno int)as begin
  select SUM
  (v.Precio - ((v.Precio*@porcentaje)/100))as total 
  from [GD1C2017].[GIRLPOWER].Viaje v  
   where v.IDTurno=@idturno and v.IDChofer=@idchofer and 
   cast(FechaFin as date)=CAST(@fecha as date )
   end
   go
      IF OBJECT_ID ('GIRLPOWER.PR_GenerarRendicion', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].PR_GenerarRendicion
go
   create procedure GIRLPOWER.PR_GenerarRendicion(@fecha date, @porcentaje int,
 @idchofer int, @idturno int)as
 begin
 declare @ultimoNroRendicion decimal(18,0)
 set @ultimoNroRendicion=(select max(NroRendicion) from [GIRLPOWER].Rendicion)
 --- inserto cabecera
 insert into [GIRLPOWER].Rendicion (IDTurno,IDChofer,Fecha,ImporteTotal,NroRendicion)
 values(@idturno,@idchofer,@fecha,0,@ultimoNroRendicion)
 ---inserto detalle
 DECLARE @ultimoID int
set @ultimoID=@@IDENTITY
 insert into [GIRLPOWER].RendicionDetalle (IDRendicion,IDViaje,Importe,Porcentaje)
 ( select @ultimoID, v.IDViaje,
  (v.Precio - ((v.Precio*@porcentaje)/100)),@porcentaje
  from [GD1C2017].[GIRLPOWER].Viaje v 
   where v.IDTurno=@idturno and v.IDChofer=@idchofer and 
   cast(FechaFin as date)=CAST(@fecha as date ))
   declare @total decimal(18,2)
   set @total=(select sum(Importe) from [GIRLPOWER].RendicionDetalle where 
   IDRendicion=@ultimoID)
   
   --actualizo
   update [GIRLPOWER].Rendicion set ImporteTotal=@total
   where IDRendicion=@ultimoID
 end
 go
     IF OBJECT_ID ('GIRLPOWER.traerListadoRendicion', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].traerListadoRendicion
go
 create procedure girlpower.traerListadoRendicion as begin
  select top 100 u.Nombre,r.NroRendicion,r.Fecha,t.Descripcion,r.ImporteTotal
  from [GD1C2017].[GIRLPOWER].Rendicion r  join
   [GD1C2017].[GIRLPOWER].Chofer c on c.IDChofer=r.IDChofer
   join   [GD1C2017].[GIRLPOWER].Turno t on t.idturno=r.IDTurno
   JOIN [GD1C2017].[GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
  order by Fecha desc
   end
   go
        IF OBJECT_ID ('GIRLPOWER.PR_verifExisteRendicion', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].PR_verifExisteRendicion
go
   create PROCEDURE [GIRLPOWER].PR_verifExisteRendicion 
(@fecha varchar(50),@idturno int,@idchofer int) AS
BEGIN
declare @result int
	set @result=0

	IF (EXISTS (SELECT 1 FROM [GIRLPOWER].Rendicion WHERE cast(Fecha as date) = cast(@fecha as date) and
	IDTurno=@idturno and IDChofer=@idchofer))
		select 1 as Existe
		else
		select 0 as Existe
END
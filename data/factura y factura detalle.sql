

alter table [GIRLPOWER].Factura add Fecha datetime not null


alter table [GIRLPOWER].Factura add NroFactura numeric(18,0) not null
--- inserto cabecera
insert into [GIRLPOWER].Factura 
(IDCliente,FechaInicio,FechaFin,ImporteTotal,NroFactura,Fecha)
(select distinct c.IDCliente,Factura_Fecha_Inicio,Factura_Fecha_Fin,0,Factura_Nro,Factura_Fecha
 from [gd_esquema].Maestra m
 inner join [GIRLPOWER].Usuario u on  u.DNI=m.Cliente_Dni
  inner join [GIRLPOWER].Cliente c on  c.IDUsuario=u.idusuario
 where Factura_Nro is not null)


 ---inserto detalle
 insert into [GIRLPOWER].FacturaDetalle(IDFactura,IDViaje,Importe)
 (
  select distinct  f.IDFactura, v.IDViaje,
  (T.PrecioBase+ (t.ValorKilometro*v.CantidadKilometros)) AS importe
 from [gd_esquema].Maestra m
 inner join [GIRLPOWER].Factura F ON f.NroFactura=m.Factura_Nro 
 inner join [GIRLPOWER].Viaje v on v.FechaInicio=m.Viaje_Fecha 
  inner join [GIRLPOWER].Turno t on t.IDTurno=V.IDTurno 
 where Factura_Nro is not null)


 --- actualizo importe
 update [GIRLPOWER].Factura set ImporteTotal=
 (select sum (Importe) from  [GIRLPOWER].FacturaDetalle fd where fd.IDFactura=f.IDFactura
 group by fd.IDFactura)
 from [GIRLPOWER].Factura f 
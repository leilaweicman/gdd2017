alter table [GIRLPOWER].Rendicion add NroRendicion numeric (18,0) not null
insert  into [GIRLPOWER].Rendicion (IDTurno,IDChofer,Fecha,ImporteTotal,NroRendicion)
(select distinct t.IDTurno,c.IDChofer,m.Rendicion_Fecha,0,m.Rendicion_Nro from gd_esquema.Maestra m
inner join [GIRLPOWER].Turno t on t.Descripcion=m.Turno_Descripcion
inner join [GIRLPOWER].Usuario u on  u.DNI=m.Chofer_Dni
  inner join [GIRLPOWER].Chofer c on  c.IDUsuario=u.idusuario
  where Rendicion_Nro is not null
)
-- detalle
insert into [GIRLPOWER].RendicionDetalle (IDRendicion,IDViaje,Importe)
(SELECT distinct  r.idRendicion, v.IDViaje,m.Rendicion_Importe
 from [gd_esquema].Maestra m
 inner join [GIRLPOWER].Rendicion r ON r.nroRendicion =m.Rendicion_Nro 
 inner join [GIRLPOWER].Viaje v on v.FechaInicio=m.Viaje_Fecha and
  v.CantidadKilometros=m.Viaje_Cant_Kilometros
 where Rendicion_Nro is not null )
 
 
 --- actualizo importe
 update [GIRLPOWER].Rendicion set ImporteTotal=
 (select sum (Importe) from  [GIRLPOWER].RendicionDetalle rd where 
 rd.IDRendicion=r.IDRendicion
 group by rd.IDRendicion)
 from [GIRLPOWER].Rendicion r
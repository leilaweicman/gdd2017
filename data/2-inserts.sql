--Inserto Marcas
insert into [GIRLPOWER].Marca
(Nombre)
(select distinct(Auto_Marca) from [gd_esquema].Maestra)
go
--Inserto Modelos
insert into [GIRLPOWER].Modelo (Nombre)
(select distinct (Auto_Modelo) from [gd_esquema].Maestra)
go 
--Inserto marca modelos
insert into [GIRLPOWER].MarcaModelo (IDMarca,IDModelo)
(select distinct m.IDMarca, mo.idmodelo from gd_esquema.Maestra gdm
inner join [GIRLPOWER].Marca m on gdm.Auto_Marca=m.Nombre
inner join [GIRLPOWER].Modelo mo on gdm.Auto_Modelo=mo.Nombre)


-- Inserto Usuarios
-- Choferes
insert into [GIRLPOWER].Usuario
(Nombre,Apellido,Direccion,Telefono,DNI,FechaNacimiento,ContraseniaEncriptada
,Mail,Username)
 (select distinct   Chofer_Nombre,Chofer_Apellido,
 Chofer_Direccion,Chofer_Telefono,Chofer_Dni,Chofer_Fecha_Nac,'E79E418E48623569D75E2A7B09AE88ED9B77B126A445B9FF9DC6989A08EFA079',Chofer_Mail,Chofer_Dni
 from [gd_esquema].Maestra 
 )
 go
 insert into [GIRLPOWER].Chofer (IDUsuario)
 (select IDUsuario from [GIRLPOWER].Usuario)
 go
-- Inserto Clientes
insert into [GIRLPOWER].Usuario
(Nombre,Apellido,Direccion,Telefono,DNI,FechaNacimiento,ContraseniaEncriptada
,Mail,Username)
(select  distinct Cliente_Nombre,Cliente_Apellido,
 Cliente_Direccion,Cliente_Telefono,Cliente_Dni,Cliente_Fecha_Nac,'E79E418E48623569D75E2A7B09AE88ED9B77B126A445B9FF9DC6989A08EFA079',Cliente_Mail,Cliente_Dni
 from [gd_esquema].Maestra 
 )
 go
 insert into [GIRLPOWER].Cliente (IDUsuario) -- codigo postal se setea en null de esta forma  
 (select   IDUsuario from [GIRLPOWER].Usuario 
 where IDUsuario not in (select IDUsuario
 FROM [GIRLPOWER].Chofer))
 go
 -- Turno
 insert into [GIRLPOWER].Turno (HoraInicio,HoraFin,Descripcion,ValorKilometro,PrecioBase,Habilitado)
 (select distinct Turno_Hora_Inicio,Turno_Hora_Fin,Turno_Descripcion,Turno_Valor_Kilometro
 ,Turno_Precio_Base,1 from [gd_esquema].Maestra)
 go
 --  Inserto Automoviles
	 insert into [GIRLPOWER].Automovil(IDChofer,IDMarcaModelo,Patente,Licencia,Rodado,Habilitado)
 (select distinct c.IDChofer,mamo.IDMarcaModelo,
	 gdm.Auto_Patente,gdm.Auto_Licencia,gdm.Auto_Rodado,1 
	 from [gd_esquema].Maestra gdm inner join [GIRLPOWER].Usuario u
	 on u.DNI=gdm.Chofer_Dni
	 inner join [GIRLPOWER].Chofer c on c.IDUsuario =u.IDUsuario
	 inner join [GIRLPOWER].Marca m on m.Nombre=gdm.Auto_Marca
	 inner join [GIRLPOWER].Modelo mo ON mo.Nombre=gdm.Auto_Modelo
	 inner join [GIRLPOWER].MarcaModelo mamo on mamo.IDModelo =mo.IDModelo 
	 and mamo.idmarca=m.idmarca)
go
--  Inserto turnos por automoviles (por cada automovil hay 3 turnos que son los insertados)
insert into [GIRLPOWER].TurnoPorAutomovil (IDTurno,IDAutomovil)
(select IDTurno,IDAutomovil from [GIRLPOWER].Turno, [GIRLPOWER].Automovil)
go
 -- Inserto Viajes


 insert into [GIRLPOWER].Viaje(IDChofer,IDCliente,IDAutomovil,IDTurno,CantidadKilometros,FechaInicio,FechaFin)
 (SELECT distinct chofer.IDChofer,cliente.IDCliente,a.IDAutomovil,t.IDTurno,
Viaje_Cant_Kilometros,Viaje_Fecha,Viaje_Fecha FROM [gd_esquema].Maestra gdm 
 inner join [GIRLPOWER].Usuario chof on chof.DNI=gdm.Chofer_Dni 
 inner join [GIRLPOWER].Chofer chofer on chofer.IDUsuario=chof.IDUsuario
 inner join [GIRLPOWER].Usuario cli on cli.DNI=gdm.Cliente_Dni
 INNER JOIN [GIRLPOWER].Cliente cliente on cliente.IDUsuario=cli.[IDUsuario]
 inner join [GIRLPOWER].Automovil a on a.Patente=gdm.Auto_Patente
 inner join [GIRLPOWER].Turno t on t.Descripcion =gdm.Turno_Descripcion
 )
 go

 --- inserto cabecera factura
insert into [GIRLPOWER].Factura 
(IDCliente,FechaInicio,FechaFin,ImporteTotal,NroFactura,Fecha)
(select distinct c.IDCliente,Factura_Fecha_Inicio,Factura_Fecha_Fin,0,Factura_Nro,Factura_Fecha
 from [gd_esquema].Maestra m
 inner join [GIRLPOWER].Usuario u on  u.DNI=m.Cliente_Dni
  inner join [GIRLPOWER].Cliente c on  c.IDUsuario=u.idusuario
 where Factura_Nro is not null)


 ---inserto factura detalle
 insert into [GIRLPOWER].FacturaDetalle(IDFactura,IDViaje,Importe)
 (
  select distinct  f.IDFactura, v.IDViaje,
  (T.PrecioBase+ (t.ValorKilometro*v.CantidadKilometros)) AS importe
 from [gd_esquema].Maestra m
 inner join [GIRLPOWER].Factura F ON f.NroFactura=m.Factura_Nro 
 inner join [GIRLPOWER].Viaje v on v.FechaInicio=m.Viaje_Fecha 
  inner join [GIRLPOWER].Turno t on t.IDTurno=V.IDTurno 
 where Factura_Nro is not null)


 --- actualizo importe factura
 update [GIRLPOWER].Factura set ImporteTotal=
 (select sum (Importe) from  [GIRLPOWER].FacturaDetalle fd where fd.IDFactura=f.IDFactura
 group by fd.IDFactura)
 from [GIRLPOWER].Factura f 

--insert into rendicion
insert  into [GIRLPOWER].Rendicion (IDTurno,IDChofer,Fecha,ImporteTotal,NroRendicion)
(select distinct t.IDTurno,c.IDChofer,m.Rendicion_Fecha,0,m.Rendicion_Nro from gd_esquema.Maestra m
inner join [GIRLPOWER].Turno t on t.Descripcion=m.Turno_Descripcion
inner join [GIRLPOWER].Usuario u on  u.DNI=m.Chofer_Dni
  inner join [GIRLPOWER].Chofer c on  c.IDUsuario=u.idusuario
  where Rendicion_Nro is not null
)
-- rendicion detalle
insert into [GIRLPOWER].RendicionDetalle (IDRendicion,IDViaje,Importe)
(SELECT distinct  r.idRendicion, v.IDViaje,m.Rendicion_Importe
 from [gd_esquema].Maestra m
 inner join [GIRLPOWER].Rendicion r ON r.nroRendicion =m.Rendicion_Nro 
 inner join [GIRLPOWER].Viaje v on v.FechaInicio=m.Viaje_Fecha and
  v.CantidadKilometros=m.Viaje_Cant_Kilometros
 where Rendicion_Nro is not null )
 
  --- actualizo importe rendicion
 update [GIRLPOWER].Rendicion set ImporteTotal=
 (select sum (Importe) from  [GIRLPOWER].RendicionDetalle rd where 
 rd.IDRendicion=r.IDRendicion
 group by rd.IDRendicion)
 from [GIRLPOWER].Rendicion r

 --insert into rol
 insert into GIRLPOWER.Rol (Nombre) Values ('Administrador')
 insert into GIRLPOWER.Rol (Nombre) Values ('Chofer')
 insert into GIRLPOWER.Rol (Nombre) Values ('Cliente')

 --insert into rol por usuario 
 --insert clientes into rol por usuario
 insert into GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) 
  (SELECT r.IDRol, u.IDUsuario FROM GIRLPOWER.Rol r, GIRLPOWER.Usuario u
	JOIN gd_esquema.Maestra m ON u.Telefono = m.Cliente_Telefono
	WHERE r.Nombre = 'Cliente' group by u.IDUsuario, r.IDRol)

--insert chofer into rol por usuario
 insert into GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) 
  (SELECT r.IDRol, u.IDUsuario FROM GIRLPOWER.Rol r, GIRLPOWER.Usuario u
	JOIN gd_esquema.Maestra m ON u.Telefono = m.Cliente_Telefono
	WHERE r.Nombre = 'Chofer' group by u.IDUsuario, r.IDRol)

--insert usuario admin 
insert into GIRLPOWER.usuario values ('admin', 'admin', 'Calle Falsa 123', 12345678, 87654321, '1976-04-13 00:00:00.000', 
	HASHBYTES('SHA2_256', 'w32e'), 'admin@admin.com', 1, 12, 'A', 'CABA', 'admin')
insert into GIRLPOWER.RolPorUsuario values (1, (select idUsuario From Girlpower.Usuario where username = 'admin'), 1)
	

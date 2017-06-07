--1)Inserto Marcas
insert into [GIRLPOWER].Marca
(Nombre)
(select distinct(Auto_Marca) from [gd_esquema].Maestra)
go
--2) Inserto Usuarios
--2.1) Choferes
insert into [GIRLPOWER].Usuario
(Nombre,Apellido,Direccion,Telefono,DNI,FechaNacimiento,ContraseniaEncriptada
,Mail,Habilitado)
(select  Chofer_Nombre,Chofer_Apellido,
 Chofer_Direccion,Chofer_Telefono,Chofer_Dni,Chofer_Fecha_Nac,'',Chofer_Mail,1
 from [gd_esquema].Maestra 
 group by Chofer_Nombre,Chofer_Apellido,Chofer_Direccion,
 Chofer_Telefono,Chofer_Dni,Chofer_Fecha_Nac,Chofer_Mail
 )
 go
 insert into [GIRLPOWER].Rol (Nombre,Habilitado) values ('Chofer',1)
 go 
 insert into [GIRLPOWER].RolPorUsuario (IDRol,IDUsuario)
 (select 1, IDUsuario from [GIRLPOWER].Usuario)
--2.2) Inserto Clientes
insert into [GIRLPOWER].Usuario
(Nombre,Apellido,Direccion,Telefono,DNI,FechaNacimiento,ContraseniaEncriptada
,Mail,Habilitado)
(select  Cliente_Nombre,Cliente_Apellido,
 Cliente_Direccion,Cliente_Telefono,Cliente_Dni,Cliente_Fecha_Nac,'',Cliente_Mail,1
 from [gd_esquema].Maestra 
 group by Cliente_Nombre,Cliente_Apellido,Cliente_Direccion,
 Cliente_Telefono,Cliente_Dni,Cliente_Fecha_Nac,Cliente_Mail
 )
 go
 insert into [GIRLPOWER].Rol (Nombre,Habilitado) values ('Cliente',2)
 go
 insert into [GIRLPOWER].RolPorUsuario (IDRol,IDUsuario)  
 (select 2,  IDUsuario from [GIRLPOWER].Usuario 
 where IDUsuario not in (select IDUsuario
 FROM [GIRLPOWER].RolPorUsuario))
 go
 --3) Turno
 insert into [GIRLPOWER].Turno (HoraInicio,HoraFin,Descripcion,ValorKilometro,PrecioBase,Habilitado)
 (select distinct Turno_Hora_Inicio,Turno_Hora_Fin,Turno_Descripcion,Turno_Valor_Kilometro
 ,Turno_Precio_Base,1 from [gd_esquema].Maestra)
 go
 --4)  Inserto Automoviles
	 insert into [GIRLPOWER].Automovil(IDChofer,IDMarca,Modelo,Patente,Licencia,Rodado)
	 (select distinct u.IDUsuario,m.IDMarca,gdm.Auto_Modelo,
	 gdm.Auto_Patente,gdm.Auto_Licencia,gdm.Auto_Rodado 
	 from [gd_esquema].Maestra gdm inner join [GIRLPOWER].Usuario u
	 on u.DNI=gdm.Chofer_Dni
	 inner join [GIRLPOWER].Marca m on m.Nombre=gdm.Auto_Marca)
go
-- 5) Inserto turnos por automoviles (por cada automovil hay 3 turnos que son los insertados)
insert into [GIRLPOWER].TurnoPorAutomovil (IDTurno,IDAutomovil)
(select IDTurno,IDAutomovil from [GIRLPOWER].Turno, [GIRLPOWER].Automovil)
go
 --6) Inserto Viajes


 insert into [GIRLPOWER].Viaje(IDChofer,IDCliente,IDAutomovil,CantidadKilometros,FechaInicio,FechaFin)
 (SELECT distinct chof.IDUsuario,cli.IDUsuario,a.IDAutomovil,Viaje_Cant_Kilometros,Viaje_Fecha,Viaje_Fecha FROM [gd_esquema].Maestra gdm 
 inner join [GIRLPOWER].Usuario chof on chof.DNI=gdm.Chofer_Dni
 inner join [GIRLPOWER].Usuario cli on cli.DNI=gdm.Cliente_Dni
 inner join [GIRLPOWER].Automovil a on a.Patente=gdm.Auto_Patente)
 go
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
,Mail,Habilitado)
 (select distinct   Chofer_Nombre,Chofer_Apellido,
 Chofer_Direccion,Chofer_Telefono,Chofer_Dni,Chofer_Fecha_Nac,'',Chofer_Mail,1
 from [gd_esquema].Maestra 
 )
 go
 insert into [GIRLPOWER].Chofer (IDUsuario)
 (select IDUsuario from [GIRLPOWER].Usuario)
 go
-- Inserto Clientes
insert into [GIRLPOWER].Usuario
(Nombre,Apellido,Direccion,Telefono,DNI,FechaNacimiento,ContraseniaEncriptada
,Mail,Habilitado)
(select  distinct Cliente_Nombre,Cliente_Apellido,
 Cliente_Direccion,Cliente_Telefono,Cliente_Dni,Cliente_Fecha_Nac,'',Cliente_Mail,1
 from [gd_esquema].Maestra 
 )
 go
 insert into [GIRLPOWER].Cliente (IDUsuario)  
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
	 insert into [GIRLPOWER].Automovil(IDChofer,IDMarcaModelo,Patente,Licencia,Rodado)
 (select distinct c.IDChofer,mamo.IDMarcaModelo,
	 gdm.Auto_Patente,gdm.Auto_Licencia,gdm.Auto_Rodado 
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
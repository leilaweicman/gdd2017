USE [GD1C2017]
GO

/****** Object:  Schema [gd_esquema]    Script Date: 16/05/2017 21:05:43 ******/

/*IF  (exists(select * FROM sys.schemas WHERE name = 'GIRLPOWER'))
DROP SCHEMA [GIRLPOWER]
GO*/

CREATE SCHEMA [GIRLPOWER]
GO

--dropea todas las tablas
IF OBJECT_ID ('GIRLPOWER.FuncionalidadPorRol', 'U') IS NOT NULL
DROP TABLE [GIRLPOWER].[FuncionalidadPorRol]
GO
IF OBJECT_ID ('GIRLPOWER.Funcionalidad', 'U') IS NOT NULL
DROP TABLE [GIRLPOWER].[Funcionalidad]
GO
IF OBJECT_ID ('GIRLPOWER.RolPorUsuario', 'U') IS NOT NULL
DROP TABLE [GIRLPOWER].[RolPorUsuario]
GO
/*es un lio porque todo se conecta con todo y no se como dropear un schema
IF OBJECT_ID ('GIRLPOWER.Rol', 'U') IS NOT NULL
DROP TABLE [GIRLPOWER].[Rol]
GO
IF OBJECT_ID ('GIRLPOWER.Chofer', 'U') IS NOT NULL
DROP TABLE [GIRLPOWER].[Chofer]
GO
IF OBJECT_ID ('GIRLPOWER.Cliente', 'U') IS NOT NULL
DROP TABLE [GIRLPOWER].[Cliente]
GO
IF OBJECT_ID ('GIRLPOWER.Administrador', 'U') IS NOT NULL
DROP TABLE [GIRLPOWER].[Administrador]
GO
IF OBJECT_ID ('GIRLPOWER.Usuario', 'U') IS NOT NULL
DROP TABLE [GIRLPOWER].[Usuario]
GO*/


CREATE TABLE[GIRLPOWER].[Funcionalidad](
	IDFuncionalidad int identity(1,1) primary key, 
	Nombre varchar(255) not null

)
go
create table [GIRLPOWER].[Rol](
	IDRol int identity(1,1) primary key,
	Nombre varchar(255) not null,
	Habilitado bit not null
)
go
create table [GIRLPOWER].[FuncionalidadPorRol](
	IDFuncionalidad int not null foreign key  (IDFuncionalidad)references [GIRLPOWER].[Funcionalidad] (IDFuncionalidad),
	IDRol  int  not null foreign key (IDRol) references [GIRLPOWER].[Rol](IDRol),
	primary key(IDFuncionalidad,IDRol)
)
GO
CREATE TABLE [GIRLPOWER].[Usuario](
	IDUsuario int primary key identity(1,1),
	Nombre varchar(255) not null,
	Apellido varchar(255)not null,
	Direccion varchar(255)not null,
	Telefono numeric (18,0),
	DNI numeric (18,0) unique not null,
	FechaNacimiento datetime not null,
	ContraseniaEncriptada  varchar(255) not null,
	Mail varchar(50) not null,
	Habilitado bit not null,
	Calle varchar(255) ,
	Piso numeric (2,0),
	Depto varchar(10) ,
	Localidad  varchar(255) 
)
go

create table [GIRLPOWER].[Chofer](
	IDChofer int primary key identity (1,1),
	IDUsuario int foreign key (IDUsuario) references [GIRLPOWER].[Usuario](IDUsuario)
)
go

create table [GIRLPOWER].[Administrador](
	IDChofer int primary key identity (1,1),
	IDUsuario int foreign key (IDUsuario) references [GIRLPOWER].[Usuario](IDUsuario)
)
go

create table [GIRLPOWER].[Cliente](
	IDCliente int primary key identity (1,1),
	IDUsuario int foreign key (IDUsuario) references [GIRLPOWER].[Usuario](IDUsuario)
)
GO

create table [GIRLPOWER].[RolPorUsuario](
	IDRol  int  not null foreign key (IDRol) references [GIRLPOWER].[Rol](IDRol),
	IDUsuario int not null foreign key  (IDUsuario)references [GIRLPOWER].[Usuario] (IDUsuario),
	
	primary key(IDUsuario,IDRol)
)
GO

create table [GIRLPOWER].[Marca](
	IDMarca int primary key identity(1,1),
	Nombre varchar(255) not null
)
GO
create table [GIRLPOWER].[Modelo](
	IDModelo int primary key identity(1,1),
	Nombre varchar(255) not null
)
go
create table [GIRLPOWER].[MarcaModelo](
	IDMarcaModelo int primary key identity(1,1),
	IDMarca int foreign key(IDMarca)references [GIRLPOWER].Marca (IDMarca),
	IDModelo int foreign key(IDModelo) references [GIRLPOWER].Modelo(IDModelo)
)
go
create table [GIRLPOWER].[Turno](
	IDTurno  int primary key identity(1,1),
	HoraInicio [numeric](18, 0) not null,
	HoraFin [numeric](18, 0) not null,
	Descripcion varchar(255),
	ValorKilometro [numeric](18, 2)not null,
	PrecioBase [numeric](18, 2) not null,
	Habilitado bit not null
)
go

create table [GIRLPOWER].[Automovil](
	IDAutomovil int primary key identity(1,1),
	IDChofer int not null foreign key (IDChofer) references [GIRLPOWER].[Chofer](IDChofer),
	IDMarcaModelo int not null foreign key (IDMarcaModelo)references [GIRLPOWER].[MarcaModelo](IDMarcaModelo),
	Patente   varchar(10)unique not null,
	Licencia  varchar(26) not null,
	Rodado varchar(10)
)
go
create table [GIRLPOWER].[TurnoPorAutomovil](
		IDTurno int not null foreign key (IDTurno) references [GIRLPOWER].[Turno](IDTurno),
		IDAutomovil int not null foreign key (IDAutomovil) references [GIRLPOWER].Automovil(IDAutomovil),
		primary key(IDTurno,IDAutomovil)
)
go
create table [GIRLPOWER].[Rendicion](
	IDRendicion int primary key identity(1,1),
	IDTurno int not null foreign key (IDTurno) references [GIRLPOWER].[Turno](IDTurno),
	IDChofer int not null foreign key (IDChofer) references [GIRLPOWER].[Chofer](IDChofer),
	Fecha datetime not null,
	ImporteTotal numeric(18,2) not null
)
go

create table [GIRLPOWER].[Factura](
	IDFactura int primary key identity(1,1), 
	IDCliente  int not null foreign key (IDCliente) references [GIRLPOWER].[Cliente](IDCliente),
	FechaInicio datetime not null,
	FechaFin datetime not null,
	ImporteTotal numeric(18,2) not null
)
go 
create table [GIRLPOWER].[Viaje](
	IDViaje int primary key identity(1,1),
	IDChofer int not null foreign key (IDChofer) references [GIRLPOWER].[Chofer](IDChofer),
	IDCliente int  not null foreign key (IDCliente) references [GIRLPOWER].[Cliente](IDCliente),
	IDAutomovil int not null foreign key (IDAutomovil) references [GIRLPOWER].[Automovil](IDAutomovil),
	IDTurno int not null foreign key(IDTurno) references [GIRLPOWER].Turno (IDTurno),
	CantidadKilometros numeric (18,0) not null,
	FechaInicio datetime not null,
	FechaFin datetime not null
	)
go 
create table [GIRLPOWER].[RendicionDetalle](
	IDRendicion int not null foreign key (IDRendicion) REFERENCES [GIRLPOWER].Rendicion (IDRendicion),
	IDViaje int not null  foreign key (IDViaje) REFERENCES [GIRLPOWER].Viaje (IDViaje),
	Importe numeric (18,2) not null,
	Porcentaje int
	primary key(IDRendicion,IDViaje)
)
go
create table [GIRLPOWER].[FacturaDetalle](
	IDFactura int not null foreign key (IDFactura) REFERENCES [GIRLPOWER].Factura (IDFactura),
	IDViaje int not null  foreign key (IDViaje) REFERENCES [GIRLPOWER].Viaje (IDViaje),
	Importe numeric (18,2) not null
	primary key(IDFactura,IDViaje)
)
go
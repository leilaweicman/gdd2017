USE [GD1C2017]
GO

/****** Object:  Schema [gd_esquema]    Script Date: 16/05/2017 21:05:43 ******/
CREATE SCHEMA [GIRLPOWER]
GO


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

create table [GIRLPOWER].[RolPorUsuario](
	IDRol  int  not null foreign key (IDRol) references [GIRLPOWER].[Rol](IDRol),
	IDUsuario int not null foreign key  (IDUsuario)references [GIRLPOWER].[Usuario] (IDUsuario),
	
	primary key(IDUsuario,IDRol)
)
GO

create table [GIRLPOWER].[Marca](
	IDMarca int primary key identity(1,1),
	Nombre varchar(255)
)
GO

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
	IDChofer int not null foreign key (IDChofer) references [GIRLPOWER].[Usuario](IDUsuario),
	IDMarca int not null foreign key (IDMarca)references [GIRLPOWER].[Marca](IDMarca),
	Modelo  varchar(255) not null,
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
	IDChofer int not null foreign key (IDChofer) references [GIRLPOWER].[Usuario](IDUsuario),
	Fecha datetime not null,
	ImporteTotal numeric(18,2) not null
)
go

create table [GIRLPOWER].[Factura](
	IDFactura int primary key identity(1,1), 
	IDCliente  int not null foreign key (IDCliente) references [GIRLPOWER].[Usuario](IDUsuario),
	FechaInicio datetime not null,
	FechaFin datetime not null,
	ImporteTotal numeric(18,2) not null
)
go 
create table [GIRLPOWER].[Viaje](
	IDViaje int primary key identity(1,1),
	IDChofer int not null foreign key (IDChofer) references [GIRLPOWER].[Usuario](IDUsuario),
	IDCliente int  not null foreign key (IDCliente) references [GIRLPOWER].[Usuario](IDUsuario),
	IDAutomovil int not null foreign key (IDAutomovil) references [GIRLPOWER].[Automovil](IDAutomovil),
	CantidadKilometros numeric (18,0) not null,
	FechaInicio datetime not null,
	FechaFin datetime not null,
	IDFactura int foreign key (IDFactura) references [GIRLPOWER].[Factura](IDFactura)
	)
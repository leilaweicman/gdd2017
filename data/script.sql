USE [GD1C2017]
GO

CREATE SCHEMA [GIRLPOWER]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__5D95E53A]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDTurno__5D95E53A]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__3864608B]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDTurno__3864608B]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__27F8EE98]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDTurno__27F8EE98]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__02C769E9]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDTurno__02C769E9]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__5CA1C101]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDCliente__5CA1C101]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__37703C52]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDCliente__37703C52]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__2704CA5F]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDCliente__2704CA5F]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__01D345B0]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDCliente__01D345B0]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__5BAD9CC8]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDChofer__5BAD9CC8]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__367C1819]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDChofer__367C1819]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__2610A626]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDChofer__2610A626]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__00DF2177]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDChofer__00DF2177]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__7FEAFD3E]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDAutomov__7FEAFD3E]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__5AB9788F]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDAutomov__5AB9788F]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__3587F3E0]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDAutomov__3587F3E0]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__251C81ED]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] DROP CONSTRAINT [FK__Viaje__IDAutomov__251C81ED]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__TurnoPorA__IDTur__03DB89B3]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[TurnoPorAutomovil]'))
ALTER TABLE [GIRLPOWER].[TurnoPorAutomovil] DROP CONSTRAINT [FK__TurnoPorA__IDTur__03DB89B3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__TurnoPorA__IDAut__04CFADEC]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[TurnoPorAutomovil]'))
ALTER TABLE [GIRLPOWER].[TurnoPorAutomovil] DROP CONSTRAINT [FK__TurnoPorA__IDAut__04CFADEC]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__RolPorUsu__IDUsu__00FF1D08]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RolPorUsuario]'))
ALTER TABLE [GIRLPOWER].[RolPorUsuario] DROP CONSTRAINT [FK__RolPorUsu__IDUsu__00FF1D08]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__RolPorUsu__IDRol__000AF8CF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RolPorUsuario]'))
ALTER TABLE [GIRLPOWER].[RolPorUsuario] DROP CONSTRAINT [FK__RolPorUsu__IDRol__000AF8CF]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDVia__0C70CFB4]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RendicionDetalle]'))
ALTER TABLE [GIRLPOWER].[RendicionDetalle] DROP CONSTRAINT [FK__Rendicion__IDVia__0C70CFB4]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDRen__0B7CAB7B]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RendicionDetalle]'))
ALTER TABLE [GIRLPOWER].[RendicionDetalle] DROP CONSTRAINT [FK__Rendicion__IDRen__0B7CAB7B]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDTur__07AC1A97]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Rendicion]'))
ALTER TABLE [GIRLPOWER].[Rendicion] DROP CONSTRAINT [FK__Rendicion__IDTur__07AC1A97]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDCho__08A03ED0]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Rendicion]'))
ALTER TABLE [GIRLPOWER].[Rendicion] DROP CONSTRAINT [FK__Rendicion__IDCho__08A03ED0]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__7755B73D]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] DROP CONSTRAINT [FK__MarcaMode__IDMod__7755B73D]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__5224328E]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] DROP CONSTRAINT [FK__MarcaMode__IDMod__5224328E]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__2CF2ADDF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] DROP CONSTRAINT [FK__MarcaMode__IDMod__2CF2ADDF]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__1C873BEC]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] DROP CONSTRAINT [FK__MarcaMode__IDMod__1C873BEC]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__76619304]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] DROP CONSTRAINT [FK__MarcaMode__IDMar__76619304]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__51300E55]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] DROP CONSTRAINT [FK__MarcaMode__IDMar__51300E55]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__2BFE89A6]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] DROP CONSTRAINT [FK__MarcaMode__IDMar__2BFE89A6]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__1B9317B3]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] DROP CONSTRAINT [FK__MarcaMode__IDMar__1B9317B3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Funcional__IDRol__1A9EF37A]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FuncionalidadPorRol]'))
ALTER TABLE [GIRLPOWER].[FuncionalidadPorRol] DROP CONSTRAINT [FK__Funcional__IDRol__1A9EF37A]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Funcional__IDFun__19AACF41]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FuncionalidadPorRol]'))
ALTER TABLE [GIRLPOWER].[FuncionalidadPorRol] DROP CONSTRAINT [FK__Funcional__IDFun__19AACF41]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__FacturaDe__IDVia__18B6AB08]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FacturaDetalle]'))
ALTER TABLE [GIRLPOWER].[FacturaDetalle] DROP CONSTRAINT [FK__FacturaDe__IDVia__18B6AB08]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__FacturaDe__IDFac__17C286CF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FacturaDetalle]'))
ALTER TABLE [GIRLPOWER].[FacturaDetalle] DROP CONSTRAINT [FK__FacturaDe__IDFac__17C286CF]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Factura__IDClien__16CE6296]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Factura]'))
ALTER TABLE [GIRLPOWER].[Factura] DROP CONSTRAINT [FK__Factura__IDClien__16CE6296]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__70A8B9AE]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente] DROP CONSTRAINT [FK__Cliente__IDUsuar__70A8B9AE]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__4B7734FF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente] DROP CONSTRAINT [FK__Cliente__IDUsuar__4B7734FF]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__2645B050]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente] DROP CONSTRAINT [FK__Cliente__IDUsuar__2645B050]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__15DA3E5D]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente] DROP CONSTRAINT [FK__Cliente__IDUsuar__15DA3E5D]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__6FB49575]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer] DROP CONSTRAINT [FK__Chofer__IDUsuari__6FB49575]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__4A8310C6]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer] DROP CONSTRAINT [FK__Chofer__IDUsuari__4A8310C6]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__25518C17]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer] DROP CONSTRAINT [FK__Chofer__IDUsuari__25518C17]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__14E61A24]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer] DROP CONSTRAINT [FK__Chofer__IDUsuari__14E61A24]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__6EC0713C]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] DROP CONSTRAINT [FK__Automovil__IDMar__6EC0713C]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__498EEC8D]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] DROP CONSTRAINT [FK__Automovil__IDMar__498EEC8D]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__245D67DE]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] DROP CONSTRAINT [FK__Automovil__IDMar__245D67DE]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__13F1F5EB]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] DROP CONSTRAINT [FK__Automovil__IDMar__13F1F5EB]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__6DCC4D03]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] DROP CONSTRAINT [FK__Automovil__IDCho__6DCC4D03]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__489AC854]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] DROP CONSTRAINT [FK__Automovil__IDCho__489AC854]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__236943A5]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] DROP CONSTRAINT [FK__Automovil__IDCho__236943A5]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__12FDD1B2]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] DROP CONSTRAINT [FK__Automovil__IDCho__12FDD1B2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Administr__IDUsu__7D2E8C24]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Administrador]'))
ALTER TABLE [GIRLPOWER].[Administrador] DROP CONSTRAINT [FK__Administr__IDUsu__7D2E8C24]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_Usuario_Localidad]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Usuario] DROP CONSTRAINT [DF_Usuario_Localidad]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_Usuario_Depto]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Usuario] DROP CONSTRAINT [DF_Usuario_Depto]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_Usuario_Piso]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Usuario] DROP CONSTRAINT [DF_Usuario_Piso]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF__Usuario__Habilit__1EA48E88]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Usuario] DROP CONSTRAINT [DF__Usuario__Habilit__1EA48E88]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_RolPorUsuario_Habilitado]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[RolPorUsuario] DROP CONSTRAINT [DF_RolPorUsuario_Habilitado]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_Cliente_CodPostal]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Cliente] DROP CONSTRAINT [DF_Cliente_CodPostal]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF__Automovil__Habil__5FBE24CE]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Automovil] DROP CONSTRAINT [DF__Automovil__Habil__5FBE24CE]
END

GO
/****** Object:  Table [GIRLPOWER].[Viaje]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Viaje]
GO
/****** Object:  Table [GIRLPOWER].[Usuario]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Usuario]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Usuario]
GO
/****** Object:  Table [GIRLPOWER].[TurnoPorAutomovil]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[TurnoPorAutomovil]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[TurnoPorAutomovil]
GO
/****** Object:  Table [GIRLPOWER].[Turno]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Turno]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Turno]
GO
/****** Object:  Table [GIRLPOWER].[RolPorUsuario]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[RolPorUsuario]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[RolPorUsuario]
GO
/****** Object:  Table [GIRLPOWER].[Rol]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Rol]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Rol]
GO
/****** Object:  Table [GIRLPOWER].[RendicionDetalle]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[RendicionDetalle]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[RendicionDetalle]
GO
/****** Object:  Table [GIRLPOWER].[Rendicion]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Rendicion]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Rendicion]
GO
/****** Object:  Table [GIRLPOWER].[Modelo]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Modelo]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Modelo]
GO
/****** Object:  Table [GIRLPOWER].[MarcaModelo]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[MarcaModelo]
GO
/****** Object:  Table [GIRLPOWER].[Marca]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Marca]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Marca]
GO
/****** Object:  Table [GIRLPOWER].[FuncionalidadPorRol]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FuncionalidadPorRol]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[FuncionalidadPorRol]
GO
/****** Object:  Table [GIRLPOWER].[Funcionalidad]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Funcionalidad]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Funcionalidad]
GO
/****** Object:  Table [GIRLPOWER].[FacturaDetalle]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FacturaDetalle]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[FacturaDetalle]
GO
/****** Object:  Table [GIRLPOWER].[Factura]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Factura]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Factura]
GO
/****** Object:  Table [GIRLPOWER].[Cliente]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Cliente]
GO
/****** Object:  Table [GIRLPOWER].[Chofer]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Chofer]
GO
/****** Object:  Table [GIRLPOWER].[Automovil]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Automovil]
GO
/****** Object:  Table [GIRLPOWER].[Administrador]    Script Date: 12/6/2017 12:43:49 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Administrador]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Administrador]
GO
/****** Object:  Table [GIRLPOWER].[Administrador]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Administrador]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Administrador](
	[IDChofer] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [int] NULL,
 CONSTRAINT [PK__Administ__02DB5D058EA98653] PRIMARY KEY CLUSTERED 
(
	[IDChofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Automovil]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Automovil](
	[IDAutomovil] [int] IDENTITY(1,1) NOT NULL,
	[IDChofer] [int] NOT NULL,
	[IDMarcaModelo] [int] NOT NULL,
	[Patente] [varchar](10) NOT NULL,
	[Licencia] [varchar](26) NOT NULL,
	[Rodado] [varchar](10) NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK__Automovi__FCABEF7649AD36A3] PRIMARY KEY CLUSTERED 
(
	[IDAutomovil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Automovi__CA6551667A19F0C5] UNIQUE NONCLUSTERED 
(
	[Patente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [GIRLPOWER].[Chofer]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Chofer](
	[IDChofer] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [int] NULL,
 CONSTRAINT [PK__Chofer__02DB5D059FD7A9D1] PRIMARY KEY CLUSTERED 
(
	[IDChofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Cliente]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Cliente](
	[IDCliente] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [int] NULL,
	[CodPostal] [int] NULL,
 CONSTRAINT [PK__Cliente__9B8553FCC7D7DC70] PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Factura]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Factura](
	[IDFactura] [int] IDENTITY(1,1) NOT NULL,
	[IDCliente] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[ImporteTotal] [numeric](18, 2) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[NroFactura] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK__Factura__492FE939ED543D91] PRIMARY KEY CLUSTERED 
(
	[IDFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[FacturaDetalle]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FacturaDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[FacturaDetalle](
	[IDFactura] [int] NOT NULL,
	[IDViaje] [int] NOT NULL,
	[Importe] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK__FacturaD__9F79974975100186] PRIMARY KEY CLUSTERED 
(
	[IDFactura] ASC,
	[IDViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Funcionalidad]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Funcionalidad]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Funcionalidad](
	[IDFuncionalidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
 CONSTRAINT [PK__Funciona__8510C6CF09E63ABA] PRIMARY KEY CLUSTERED 
(
	[IDFuncionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [GIRLPOWER].[FuncionalidadPorRol]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FuncionalidadPorRol]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[FuncionalidadPorRol](
	[IDFuncionalidad] [int] NOT NULL,
	[IDRol] [int] NOT NULL,
 CONSTRAINT [PK__Funciona__FF78DC04E0A182EE] PRIMARY KEY CLUSTERED 
(
	[IDFuncionalidad] ASC,
	[IDRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Marca]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Marca]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Marca](
	[IDMarca] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
 CONSTRAINT [PK__Marca__CEC375E7B87A986E] PRIMARY KEY CLUSTERED 
(
	[IDMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [GIRLPOWER].[MarcaModelo]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[MarcaModelo](
	[IDMarcaModelo] [int] IDENTITY(1,1) NOT NULL,
	[IDMarca] [int] NULL,
	[IDModelo] [int] NULL,
 CONSTRAINT [PK__MarcaMod__8194CF84DF07E102] PRIMARY KEY CLUSTERED 
(
	[IDMarcaModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Modelo]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Modelo]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Modelo](
	[IDModelo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
 CONSTRAINT [PK__Modelo__A33B9CD6D3BDAD48] PRIMARY KEY CLUSTERED 
(
	[IDModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [GIRLPOWER].[Rendicion]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Rendicion]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Rendicion](
	[IDRendicion] [int] IDENTITY(1,1) NOT NULL,
	[IDTurno] [int] NOT NULL,
	[IDChofer] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[ImporteTotal] [numeric](18, 2) NOT NULL,
	[NroRendicion] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK__Rendicio__127D3C550E9C72D2] PRIMARY KEY CLUSTERED 
(
	[IDRendicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[RendicionDetalle]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[RendicionDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[RendicionDetalle](
	[IDRendicion] [int] NOT NULL,
	[IDViaje] [int] NOT NULL,
	[Importe] [numeric](18, 2) NOT NULL,
	[Porcentaje] [int] NULL,
 CONSTRAINT [PK__Rendicio__C42B4225AD018DA7] PRIMARY KEY CLUSTERED 
(
	[IDRendicion] ASC,
	[IDViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Rol]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Rol](
	[IDRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL UNIQUE,
 CONSTRAINT [PK__Rol__A681ACB6BBEFE9C5] PRIMARY KEY CLUSTERED 
(
	[IDRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [GIRLPOWER].[RolPorUsuario]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[RolPorUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[RolPorUsuario](
	[IDRol] [int] NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK__RolPorUs__28590BA237EF7831] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC,
	[IDRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Turno]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Turno]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Turno](
	[IDTurno] [int] IDENTITY(1,1) NOT NULL,
	[HoraInicio] [numeric](18, 0) NOT NULL,
	[HoraFin] [numeric](18, 0) NOT NULL,
	[Descripcion] [varchar](255) NULL,
	[ValorKilometro] [numeric](18, 2) NOT NULL,
	[PrecioBase] [numeric](18, 2) NOT NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK__Turno__9763AA1E62AC0EA3] PRIMARY KEY CLUSTERED 
(
	[IDTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [GIRLPOWER].[TurnoPorAutomovil]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[TurnoPorAutomovil]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[TurnoPorAutomovil](
	[IDTurno] [int] NOT NULL,
	[IDAutomovil] [int] NOT NULL,
 CONSTRAINT [PK__TurnoPor__E8A914E97DB9DCA0] PRIMARY KEY CLUSTERED 
(
	[IDTurno] ASC,
	[IDAutomovil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Usuario]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Usuario](
	[IDUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
	[Direccion] [varchar](255) NOT NULL,
	[Telefono] [numeric](18, 0) NULL,
	[DNI] [numeric](18, 0) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[ContraseniaEncriptada] [varchar](255) NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Habilitado] [bit] NOT NULL,
	[Piso] [numeric](2, 0) NULL,
	[Depto] [varchar](10) NULL,
	[Localidad] [varchar](255) NULL,
	[Username] [varchar](50) NULL,
 CONSTRAINT [PK__Usuario__5231116964F84866] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Usuario__C035B8DD0D5106B0] UNIQUE NONCLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [GIRLPOWER].[Viaje]    Script Date: 12/6/2017 12:43:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Viaje](
	[IDViaje] [int] IDENTITY(1,1) NOT NULL,
	[IDChofer] [int] NOT NULL,
	[IDCliente] [int] NOT NULL,
	[IDAutomovil] [int] NOT NULL,
	[IDTurno] [int] NOT NULL,
	[CantidadKilometros] [numeric](18, 0) NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
 CONSTRAINT [PK__Viaje__6567E70C0642EFAF] PRIMARY KEY CLUSTERED 
(
	[IDViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF__Automovil__Habil__5FBE24CE]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Automovil] ADD  CONSTRAINT [DF__Automovil__Habil__5FBE24CE]  DEFAULT ((1)) FOR [Habilitado]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_Cliente_CodPostal]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Cliente] ADD  CONSTRAINT [DF_Cliente_CodPostal]  DEFAULT ((-1)) FOR [CodPostal]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_RolPorUsuario_Habilitado]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[RolPorUsuario] ADD  CONSTRAINT [DF_RolPorUsuario_Habilitado]  DEFAULT ((1)) FOR [Habilitado]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF__Usuario__Habilit__1EA48E88]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Usuario] ADD  CONSTRAINT [DF__Usuario__Habilit__1EA48E88]  DEFAULT ((1)) FOR [Habilitado]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_Usuario_Piso]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Usuario] ADD  CONSTRAINT [DF_Usuario_Piso]  DEFAULT ((-1)) FOR [Piso]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_Usuario_Depto]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Usuario] ADD  CONSTRAINT [DF_Usuario_Depto]  DEFAULT (' ') FOR [Depto]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_Usuario_Localidad]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Usuario] ADD  CONSTRAINT [DF_Usuario_Localidad]  DEFAULT (' ') FOR [Localidad]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Administr__IDUsu__7D2E8C24]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Administrador]'))
ALTER TABLE [GIRLPOWER].[Administrador]  WITH CHECK ADD  CONSTRAINT [FK__Administr__IDUsu__7D2E8C24] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Administr__IDUsu__7D2E8C24]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Administrador]'))
ALTER TABLE [GIRLPOWER].[Administrador] CHECK CONSTRAINT [FK__Administr__IDUsu__7D2E8C24]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__12FDD1B2]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil]  WITH CHECK ADD  CONSTRAINT [FK__Automovil__IDCho__12FDD1B2] FOREIGN KEY([IDChofer])
REFERENCES [GIRLPOWER].[Chofer] ([IDChofer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__12FDD1B2]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] CHECK CONSTRAINT [FK__Automovil__IDCho__12FDD1B2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__236943A5]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil]  WITH CHECK ADD  CONSTRAINT [FK__Automovil__IDCho__236943A5] FOREIGN KEY([IDChofer])
REFERENCES [GIRLPOWER].[Chofer] ([IDChofer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__236943A5]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] CHECK CONSTRAINT [FK__Automovil__IDCho__236943A5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__489AC854]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil]  WITH CHECK ADD  CONSTRAINT [FK__Automovil__IDCho__489AC854] FOREIGN KEY([IDChofer])
REFERENCES [GIRLPOWER].[Chofer] ([IDChofer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__489AC854]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] CHECK CONSTRAINT [FK__Automovil__IDCho__489AC854]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__6DCC4D03]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil]  WITH CHECK ADD  CONSTRAINT [FK__Automovil__IDCho__6DCC4D03] FOREIGN KEY([IDChofer])
REFERENCES [GIRLPOWER].[Chofer] ([IDChofer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDCho__6DCC4D03]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] CHECK CONSTRAINT [FK__Automovil__IDCho__6DCC4D03]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__13F1F5EB]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil]  WITH CHECK ADD  CONSTRAINT [FK__Automovil__IDMar__13F1F5EB] FOREIGN KEY([IDMarcaModelo])
REFERENCES [GIRLPOWER].[MarcaModelo] ([IDMarcaModelo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__13F1F5EB]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] CHECK CONSTRAINT [FK__Automovil__IDMar__13F1F5EB]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__245D67DE]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil]  WITH CHECK ADD  CONSTRAINT [FK__Automovil__IDMar__245D67DE] FOREIGN KEY([IDMarcaModelo])
REFERENCES [GIRLPOWER].[MarcaModelo] ([IDMarcaModelo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__245D67DE]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] CHECK CONSTRAINT [FK__Automovil__IDMar__245D67DE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__498EEC8D]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil]  WITH CHECK ADD  CONSTRAINT [FK__Automovil__IDMar__498EEC8D] FOREIGN KEY([IDMarcaModelo])
REFERENCES [GIRLPOWER].[MarcaModelo] ([IDMarcaModelo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__498EEC8D]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] CHECK CONSTRAINT [FK__Automovil__IDMar__498EEC8D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__6EC0713C]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil]  WITH CHECK ADD  CONSTRAINT [FK__Automovil__IDMar__6EC0713C] FOREIGN KEY([IDMarcaModelo])
REFERENCES [GIRLPOWER].[MarcaModelo] ([IDMarcaModelo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Automovil__IDMar__6EC0713C]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]'))
ALTER TABLE [GIRLPOWER].[Automovil] CHECK CONSTRAINT [FK__Automovil__IDMar__6EC0713C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__14E61A24]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK__Chofer__IDUsuari__14E61A24] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__14E61A24]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer] CHECK CONSTRAINT [FK__Chofer__IDUsuari__14E61A24]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__25518C17]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK__Chofer__IDUsuari__25518C17] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__25518C17]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer] CHECK CONSTRAINT [FK__Chofer__IDUsuari__25518C17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__4A8310C6]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK__Chofer__IDUsuari__4A8310C6] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__4A8310C6]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer] CHECK CONSTRAINT [FK__Chofer__IDUsuari__4A8310C6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__6FB49575]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK__Chofer__IDUsuari__6FB49575] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Chofer__IDUsuari__6FB49575]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]'))
ALTER TABLE [GIRLPOWER].[Chofer] CHECK CONSTRAINT [FK__Chofer__IDUsuari__6FB49575]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__15DA3E5D]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK__Cliente__IDUsuar__15DA3E5D] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__15DA3E5D]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente] CHECK CONSTRAINT [FK__Cliente__IDUsuar__15DA3E5D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__2645B050]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK__Cliente__IDUsuar__2645B050] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__2645B050]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente] CHECK CONSTRAINT [FK__Cliente__IDUsuar__2645B050]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__4B7734FF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK__Cliente__IDUsuar__4B7734FF] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__4B7734FF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente] CHECK CONSTRAINT [FK__Cliente__IDUsuar__4B7734FF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__70A8B9AE]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK__Cliente__IDUsuar__70A8B9AE] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Cliente__IDUsuar__70A8B9AE]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]'))
ALTER TABLE [GIRLPOWER].[Cliente] CHECK CONSTRAINT [FK__Cliente__IDUsuar__70A8B9AE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Factura__IDClien__16CE6296]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Factura]'))
ALTER TABLE [GIRLPOWER].[Factura]  WITH CHECK ADD  CONSTRAINT [FK__Factura__IDClien__16CE6296] FOREIGN KEY([IDCliente])
REFERENCES [GIRLPOWER].[Cliente] ([IDCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Factura__IDClien__16CE6296]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Factura]'))
ALTER TABLE [GIRLPOWER].[Factura] CHECK CONSTRAINT [FK__Factura__IDClien__16CE6296]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__FacturaDe__IDFac__17C286CF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FacturaDetalle]'))
ALTER TABLE [GIRLPOWER].[FacturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK__FacturaDe__IDFac__17C286CF] FOREIGN KEY([IDFactura])
REFERENCES [GIRLPOWER].[Factura] ([IDFactura])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__FacturaDe__IDFac__17C286CF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FacturaDetalle]'))
ALTER TABLE [GIRLPOWER].[FacturaDetalle] CHECK CONSTRAINT [FK__FacturaDe__IDFac__17C286CF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__FacturaDe__IDVia__18B6AB08]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FacturaDetalle]'))
ALTER TABLE [GIRLPOWER].[FacturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK__FacturaDe__IDVia__18B6AB08] FOREIGN KEY([IDViaje])
REFERENCES [GIRLPOWER].[Viaje] ([IDViaje])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__FacturaDe__IDVia__18B6AB08]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FacturaDetalle]'))
ALTER TABLE [GIRLPOWER].[FacturaDetalle] CHECK CONSTRAINT [FK__FacturaDe__IDVia__18B6AB08]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Funcional__IDFun__19AACF41]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FuncionalidadPorRol]'))
ALTER TABLE [GIRLPOWER].[FuncionalidadPorRol]  WITH CHECK ADD  CONSTRAINT [FK__Funcional__IDFun__19AACF41] FOREIGN KEY([IDFuncionalidad])
REFERENCES [GIRLPOWER].[Funcionalidad] ([IDFuncionalidad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Funcional__IDFun__19AACF41]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FuncionalidadPorRol]'))
ALTER TABLE [GIRLPOWER].[FuncionalidadPorRol] CHECK CONSTRAINT [FK__Funcional__IDFun__19AACF41]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Funcional__IDRol__1A9EF37A]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FuncionalidadPorRol]'))
ALTER TABLE [GIRLPOWER].[FuncionalidadPorRol]  WITH CHECK ADD  CONSTRAINT [FK__Funcional__IDRol__1A9EF37A] FOREIGN KEY([IDRol])
REFERENCES [GIRLPOWER].[Rol] ([IDRol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Funcional__IDRol__1A9EF37A]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[FuncionalidadPorRol]'))
ALTER TABLE [GIRLPOWER].[FuncionalidadPorRol] CHECK CONSTRAINT [FK__Funcional__IDRol__1A9EF37A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__1B9317B3]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo]  WITH CHECK ADD  CONSTRAINT [FK__MarcaMode__IDMar__1B9317B3] FOREIGN KEY([IDMarca])
REFERENCES [GIRLPOWER].[Marca] ([IDMarca])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__1B9317B3]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] CHECK CONSTRAINT [FK__MarcaMode__IDMar__1B9317B3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__2BFE89A6]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo]  WITH CHECK ADD  CONSTRAINT [FK__MarcaMode__IDMar__2BFE89A6] FOREIGN KEY([IDMarca])
REFERENCES [GIRLPOWER].[Marca] ([IDMarca])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__2BFE89A6]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] CHECK CONSTRAINT [FK__MarcaMode__IDMar__2BFE89A6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__51300E55]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo]  WITH CHECK ADD  CONSTRAINT [FK__MarcaMode__IDMar__51300E55] FOREIGN KEY([IDMarca])
REFERENCES [GIRLPOWER].[Marca] ([IDMarca])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__51300E55]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] CHECK CONSTRAINT [FK__MarcaMode__IDMar__51300E55]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__76619304]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo]  WITH CHECK ADD  CONSTRAINT [FK__MarcaMode__IDMar__76619304] FOREIGN KEY([IDMarca])
REFERENCES [GIRLPOWER].[Marca] ([IDMarca])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMar__76619304]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] CHECK CONSTRAINT [FK__MarcaMode__IDMar__76619304]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__1C873BEC]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo]  WITH CHECK ADD  CONSTRAINT [FK__MarcaMode__IDMod__1C873BEC] FOREIGN KEY([IDModelo])
REFERENCES [GIRLPOWER].[Modelo] ([IDModelo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__1C873BEC]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] CHECK CONSTRAINT [FK__MarcaMode__IDMod__1C873BEC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__2CF2ADDF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo]  WITH CHECK ADD  CONSTRAINT [FK__MarcaMode__IDMod__2CF2ADDF] FOREIGN KEY([IDModelo])
REFERENCES [GIRLPOWER].[Modelo] ([IDModelo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__2CF2ADDF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] CHECK CONSTRAINT [FK__MarcaMode__IDMod__2CF2ADDF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__5224328E]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo]  WITH CHECK ADD  CONSTRAINT [FK__MarcaMode__IDMod__5224328E] FOREIGN KEY([IDModelo])
REFERENCES [GIRLPOWER].[Modelo] ([IDModelo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__5224328E]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] CHECK CONSTRAINT [FK__MarcaMode__IDMod__5224328E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__7755B73D]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo]  WITH CHECK ADD  CONSTRAINT [FK__MarcaMode__IDMod__7755B73D] FOREIGN KEY([IDModelo])
REFERENCES [GIRLPOWER].[Modelo] ([IDModelo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__MarcaMode__IDMod__7755B73D]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]'))
ALTER TABLE [GIRLPOWER].[MarcaModelo] CHECK CONSTRAINT [FK__MarcaMode__IDMod__7755B73D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDCho__08A03ED0]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Rendicion]'))
ALTER TABLE [GIRLPOWER].[Rendicion]  WITH CHECK ADD  CONSTRAINT [FK__Rendicion__IDCho__08A03ED0] FOREIGN KEY([IDChofer])
REFERENCES [GIRLPOWER].[Chofer] ([IDChofer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDCho__08A03ED0]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Rendicion]'))
ALTER TABLE [GIRLPOWER].[Rendicion] CHECK CONSTRAINT [FK__Rendicion__IDCho__08A03ED0]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDTur__07AC1A97]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Rendicion]'))
ALTER TABLE [GIRLPOWER].[Rendicion]  WITH CHECK ADD  CONSTRAINT [FK__Rendicion__IDTur__07AC1A97] FOREIGN KEY([IDTurno])
REFERENCES [GIRLPOWER].[Turno] ([IDTurno])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDTur__07AC1A97]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Rendicion]'))
ALTER TABLE [GIRLPOWER].[Rendicion] CHECK CONSTRAINT [FK__Rendicion__IDTur__07AC1A97]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDRen__0B7CAB7B]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RendicionDetalle]'))
ALTER TABLE [GIRLPOWER].[RendicionDetalle]  WITH CHECK ADD  CONSTRAINT [FK__Rendicion__IDRen__0B7CAB7B] FOREIGN KEY([IDRendicion])
REFERENCES [GIRLPOWER].[Rendicion] ([IDRendicion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDRen__0B7CAB7B]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RendicionDetalle]'))
ALTER TABLE [GIRLPOWER].[RendicionDetalle] CHECK CONSTRAINT [FK__Rendicion__IDRen__0B7CAB7B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDVia__0C70CFB4]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RendicionDetalle]'))
ALTER TABLE [GIRLPOWER].[RendicionDetalle]  WITH CHECK ADD  CONSTRAINT [FK__Rendicion__IDVia__0C70CFB4] FOREIGN KEY([IDViaje])
REFERENCES [GIRLPOWER].[Viaje] ([IDViaje])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Rendicion__IDVia__0C70CFB4]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RendicionDetalle]'))
ALTER TABLE [GIRLPOWER].[RendicionDetalle] CHECK CONSTRAINT [FK__Rendicion__IDVia__0C70CFB4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__RolPorUsu__IDRol__000AF8CF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RolPorUsuario]'))
ALTER TABLE [GIRLPOWER].[RolPorUsuario]  WITH CHECK ADD  CONSTRAINT [FK__RolPorUsu__IDRol__000AF8CF] FOREIGN KEY([IDRol])
REFERENCES [GIRLPOWER].[Rol] ([IDRol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__RolPorUsu__IDRol__000AF8CF]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RolPorUsuario]'))
ALTER TABLE [GIRLPOWER].[RolPorUsuario] CHECK CONSTRAINT [FK__RolPorUsu__IDRol__000AF8CF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__RolPorUsu__IDUsu__00FF1D08]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RolPorUsuario]'))
ALTER TABLE [GIRLPOWER].[RolPorUsuario]  WITH CHECK ADD  CONSTRAINT [FK__RolPorUsu__IDUsu__00FF1D08] FOREIGN KEY([IDUsuario])
REFERENCES [GIRLPOWER].[Usuario] ([IDUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__RolPorUsu__IDUsu__00FF1D08]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[RolPorUsuario]'))
ALTER TABLE [GIRLPOWER].[RolPorUsuario] CHECK CONSTRAINT [FK__RolPorUsu__IDUsu__00FF1D08]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__TurnoPorA__IDAut__04CFADEC]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[TurnoPorAutomovil]'))
ALTER TABLE [GIRLPOWER].[TurnoPorAutomovil]  WITH CHECK ADD  CONSTRAINT [FK__TurnoPorA__IDAut__04CFADEC] FOREIGN KEY([IDAutomovil])
REFERENCES [GIRLPOWER].[Automovil] ([IDAutomovil])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__TurnoPorA__IDAut__04CFADEC]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[TurnoPorAutomovil]'))
ALTER TABLE [GIRLPOWER].[TurnoPorAutomovil] CHECK CONSTRAINT [FK__TurnoPorA__IDAut__04CFADEC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__TurnoPorA__IDTur__03DB89B3]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[TurnoPorAutomovil]'))
ALTER TABLE [GIRLPOWER].[TurnoPorAutomovil]  WITH CHECK ADD  CONSTRAINT [FK__TurnoPorA__IDTur__03DB89B3] FOREIGN KEY([IDTurno])
REFERENCES [GIRLPOWER].[Turno] ([IDTurno])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__TurnoPorA__IDTur__03DB89B3]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[TurnoPorAutomovil]'))
ALTER TABLE [GIRLPOWER].[TurnoPorAutomovil] CHECK CONSTRAINT [FK__TurnoPorA__IDTur__03DB89B3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__251C81ED]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDAutomov__251C81ED] FOREIGN KEY([IDAutomovil])
REFERENCES [GIRLPOWER].[Automovil] ([IDAutomovil])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__251C81ED]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDAutomov__251C81ED]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__3587F3E0]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDAutomov__3587F3E0] FOREIGN KEY([IDAutomovil])
REFERENCES [GIRLPOWER].[Automovil] ([IDAutomovil])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__3587F3E0]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDAutomov__3587F3E0]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__5AB9788F]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDAutomov__5AB9788F] FOREIGN KEY([IDAutomovil])
REFERENCES [GIRLPOWER].[Automovil] ([IDAutomovil])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__5AB9788F]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDAutomov__5AB9788F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__7FEAFD3E]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDAutomov__7FEAFD3E] FOREIGN KEY([IDAutomovil])
REFERENCES [GIRLPOWER].[Automovil] ([IDAutomovil])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDAutomov__7FEAFD3E]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDAutomov__7FEAFD3E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__00DF2177]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDChofer__00DF2177] FOREIGN KEY([IDChofer])
REFERENCES [GIRLPOWER].[Chofer] ([IDChofer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__00DF2177]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDChofer__00DF2177]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__2610A626]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDChofer__2610A626] FOREIGN KEY([IDChofer])
REFERENCES [GIRLPOWER].[Chofer] ([IDChofer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__2610A626]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDChofer__2610A626]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__367C1819]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDChofer__367C1819] FOREIGN KEY([IDChofer])
REFERENCES [GIRLPOWER].[Chofer] ([IDChofer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__367C1819]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDChofer__367C1819]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__5BAD9CC8]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDChofer__5BAD9CC8] FOREIGN KEY([IDChofer])
REFERENCES [GIRLPOWER].[Chofer] ([IDChofer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDChofer__5BAD9CC8]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDChofer__5BAD9CC8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__01D345B0]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDCliente__01D345B0] FOREIGN KEY([IDCliente])
REFERENCES [GIRLPOWER].[Cliente] ([IDCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__01D345B0]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDCliente__01D345B0]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__2704CA5F]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDCliente__2704CA5F] FOREIGN KEY([IDCliente])
REFERENCES [GIRLPOWER].[Cliente] ([IDCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__2704CA5F]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDCliente__2704CA5F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__37703C52]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDCliente__37703C52] FOREIGN KEY([IDCliente])
REFERENCES [GIRLPOWER].[Cliente] ([IDCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__37703C52]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDCliente__37703C52]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__5CA1C101]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDCliente__5CA1C101] FOREIGN KEY([IDCliente])
REFERENCES [GIRLPOWER].[Cliente] ([IDCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDCliente__5CA1C101]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDCliente__5CA1C101]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__02C769E9]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDTurno__02C769E9] FOREIGN KEY([IDTurno])
REFERENCES [GIRLPOWER].[Turno] ([IDTurno])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__02C769E9]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDTurno__02C769E9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__27F8EE98]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDTurno__27F8EE98] FOREIGN KEY([IDTurno])
REFERENCES [GIRLPOWER].[Turno] ([IDTurno])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__27F8EE98]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDTurno__27F8EE98]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__3864608B]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDTurno__3864608B] FOREIGN KEY([IDTurno])
REFERENCES [GIRLPOWER].[Turno] ([IDTurno])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__3864608B]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDTurno__3864608B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__5D95E53A]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK__Viaje__IDTurno__5D95E53A] FOREIGN KEY([IDTurno])
REFERENCES [GIRLPOWER].[Turno] ([IDTurno])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FK__Viaje__IDTurno__5D95E53A]') AND parent_object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]'))
ALTER TABLE [GIRLPOWER].[Viaje] CHECK CONSTRAINT [FK__Viaje__IDTurno__5D95E53A]
GO

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
insert into GIRLPOWER.usuario values ('admin', 'admin', 'Calle Falsa 123', 12345678, 87654321, convert(datetime,'1976-04-13 00:00:00.000',120), 
	'52D77462B24987175C8D7DAB901A5967E927FFC8D0B6E4A234E07A4AEC5E3724', 'admin@admin.com', 1, 12, 'A', 'CABA', 'admin')
insert into GIRLPOWER.RolPorUsuario values (1, (select idUsuario From Girlpower.Usuario where username = 'admin'), 1)
	
--procedures
IF OBJECT_ID ('GIRLPOWER.PR_altaAutomovil', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_altaAutomovil]
GO

create procedure [GIRLPOWER].PR_altaAutomovil(
@idChofer int, @idMarca int, @idModelo int,@patente varchar(10), @licencia varchar(26),
@rodado varchar(10)
)
as 
begin
declare @idMarcaModelo int
set @idMarcaModelo=(select IDMarcaModelo from [GIRLPOWER].MarcaModelo where 
IDMarca=@idMarca and IDModelo=@idModelo)
insert into [GIRLPOWER].Automovil (IDChofer,IDMarcaModelo,Patente,Licencia,Rodado,Habilitado)values
(@idChofer,@idMarcaModelo,@patente,@licencia,@rodado,1)
	RETURN @@rowCount
end 
go 


IF OBJECT_ID ('GIRLPOWER.PR_modificarAutomovil', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_modificarAutomovil]
GO

create procedure [GIRLPOWER].PR_modificarAutomovil(
@idAutomovil int,@idChofer int, @idMarca int, @idModelo int,@patente varchar(10), @licencia varchar(26),
@rodado varchar(10)
)
as 
begin
declare @idMarcaModelo int
set @idMarcaModelo=(select IDMarcaModelo from [GIRLPOWER].MarcaModelo where 
IDMarca=@idMarca and IDModelo=@idModelo)
update [GIRLPOWER].Automovil set 
IDChofer=@idChofer,
IDMarcaModelo=@idMarcaModelo,
Patente=@patente,
Licencia=@licencia,
Rodado=@rodado
where IDAutomovil=@idAutomovil
	RETURN @@rowCount
end 
go


IF OBJECT_ID ('GIRLPOWER.PR_TraerAutomoviles', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].PR_TraerAutomoviles
GO

CREATE PROCEDURE [GIRLPOWER].PR_TraerAutomoviles (@idChofer int,@idMarca int, @patente varchar (10))
 AS
BEGIN
	BEGIN TRY
		SELECT IDAutomovil,u.Nombre as Chofer, ma.Nombre as Marca,mo.Nombre as Modelo,Licencia,Patente,Rodado,a.Habilitado
		 FROM [GIRLPOWER].[Automovil] a 
		JOIN [GIRLPOWER].[MarcaModelo] m
		 ON a.IDMarcaModelo = m.IDMarcaModelo

		 JOIN [GIRLPOWER].Marca ma
		 ON ma.IDMarca = m.IDMarca

JOIN [GIRLPOWER].[Modelo] mo
		 ON m.IDModelo = mo.IDModelo

JOIN [GIRLPOWER].[Chofer] c
		 ON a.IDChofer = c.IDChofer

		 JOIN [GIRLPOWER].Usuario u
		 on u.IDUsuario=c.IDUsuario

		 where (@idChofer=0 OR C.IDChofer=@idChofer)AND
		 (@idMarca=0 OR ma.IDMarca=@idMarca)and
		 (@patente='' OR Patente=@patente)
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error cargando los automoviles', 16, 217)
			WITH SETERROR
	END CATCH
END
GO
IF OBJECT_ID ('GIRLPOWER.deshabilitarAutomovil', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].deshabilitarAutomovil
GO

CREATE PROCEDURE [GIRLPOWER].deshabilitarAutomovil (@id int) AS
BEGIN
	
		update [GIRLPOWER].Automovil set Habilitado=0 where IDAutomovil=@id
	
END
GO


IF OBJECT_ID ('GIRLPOWER.PR_traerUsuarioPorUsername', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername]
GO

IF OBJECT_ID ('GIRLPOWER.deshabilitarUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[deshabilitarUsuario]
GO

IF OBJECT_ID ('GIRLPOWER.traerListadoRolPorUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[traerListadoRolPorUsuario]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername] (@Username VARCHAR(30)) AS
BEGIN
	SELECT * FROM girlpower.usuario WHERE username=@Username
END
GO

CREATE PROCEDURE [GIRLPOWER].[deshabilitarUsuario] (@IdUsuario int) AS
BEGIN
	UPDATE girlpower.usuario SET Habilitado=0 WHERE IDUsuario=@IdUsuario
END
GO

CREATE PROCEDURE [GIRLPOWER].[traerListadoRolPorUsuario] (@IDUsuario int) AS
BEGIN
	SELECT * FROM girlpower.RolPorUsuario r1
	join girlpower.Rol r2 on r1.IDRol = r2.IDRol
	WHERE r1.IDUsuario=@IDUsuario
END
GO

/****** Object:  StoredProcedure [dbo].[PR_altaUsuario]    Script Date: 8/6/2017 12:19:18 a. m. ******/
IF OBJECT_ID ('GIRLPOWER.PR_altaUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_altaUsuario]
GO

/****** Object:  StoredProcedure [dbo].[PR_altaUsuario]    Script Date: 8/6/2017 12:19:18 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [GIRLPOWER].[PR_altaUsuario]
(@nombre varchar(255), @apellido varchar(255), @direccion varchar(255), @telefono numeric(18,0), @dni numeric (18,0),
 @fechaNac datetime, @contrasenia varchar(255), @mail varchar(50), @piso numeric(2,0), @depto varchar(10), @localidad varchar(255),
 @esChofer bit, @esCliente bit, @codPost int, @username varchar(50))
 AS
 BEGIN
	DECLARE @idUsuario int
	
	BEGIN TRANSACTION
	BEGIN TRY
		INSERT INTO [GD1C2017].[GIRLPOWER].[Usuario] (Nombre, Apellido, Direccion, Telefono, Dni, FechaNacimiento, ContraseniaEncriptada, 
		Mail, Habilitado, Piso, Depto, Localidad, Username) VALUES 
		(@nombre, @apellido, @direccion, @telefono, @dni, @fechaNac, @contrasenia, @mail, 1, @piso, @depto, @localidad, @username)

		SET @idUsuario = (SELECT IDUsuario FROM [GD1C2017].[GIRLPOWER].[Usuario] WHERE DNI = @dni)

		IF (@esChofer=1)
		BEGIN
			INSERT INTO [GD1C2017].[GIRLPOWER].[Chofer] (IDUsuario) VALUES (@idUsuario)
			INSERT INTO GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) VALUES ((SELECT idRol FROM GIRLPOWER.Rol WHERE nombre = 'Cliente'), @idUsuario)
		END

		IF (@esCliente=1)
		BEGIN
			INSERT INTO [GD1C2017].[GIRLPOWER].[Cliente] (IDUsuario, CodPostal) VALUES (@idUsuario, @codPost)
			INSERT INTO GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) VALUES ((SELECT idRol FROM GIRLPOWER.Rol WHERE nombre = 'Chofer'), @idUsuario)
		END

		IF @@ERROR = 0
			COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		RAISERROR('No se puede registrar el usuario', 16, 217)
			WITH SETERROR
	END CATCH
	RETURN @@rowCount
 END
GO

IF OBJECT_ID ('GIRLPOWER.PR_traerClientes', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerClientes]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerClientes] 
(@dni numeric(18,0)=null, @nombre varchar(255)=null, @apellido varchar(255)=null)
AS
BEGIN
	BEGIN TRY
		SELECT u.IDUsuario, u.Apellido, u.ContraseniaEncriptada, u.Depto, u.Direccion, u.DNI, u.FechaNacimiento, u.Localidad,
		u.Mail, u.Nombre, u.Piso, u.Telefono, u.Username, c.CodPostal, ru.Habilitado /*as [RolHabilit]*/ FROM [GIRLPOWER].[Usuario] u 
		JOIN [GIRLPOWER].[Cliente] c ON u.IDUsuario = c.IDUsuario
		JOIN [GIRLPOWER].RolPorUsuario ru ON ru.IDUsuario = u.IDUsuario 
		JOIN [GIRLPOWER].Rol r ON r.IDRol = ru.IDRol
		WHERE r.Nombre = 'Cliente' AND (@dni=0 OR u.dni=@dni) AND (@nombre='' OR u.Nombre = @nombre) 
		AND (@apellido='' OR u.Apellido = @apellido)		
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error cargando los clientes', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_traerChoferes', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_traerChoferes]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_traerChoferes] 
(@dni numeric(18,0)=null, @nombre varchar(255)=null, @apellido varchar(255)=null)
AS
BEGIN
	BEGIN TRY
		SELECT u.IDUsuario, u.Apellido, u.ContraseniaEncriptada, u.Depto, u.Direccion, u.DNI, u.FechaNacimiento, u.Localidad,
		u.Mail, u.Nombre, u.Piso, u.Telefono, u.Username, ru.Habilitado /*as [RolHabilit]*/ FROM [GIRLPOWER].[Usuario] u 
		JOIN [GIRLPOWER].RolPorUsuario ru ON ru.IDUsuario = u.IDUsuario 
		JOIN [GIRLPOWER].Rol r ON r.IDRol = ru.IDRol
		WHERE r.Nombre = 'Chofer' AND (@dni=0 OR u.dni=@dni) AND (@nombre='' OR u.Nombre = @nombre) 
		AND (@apellido='' OR u.Apellido = @apellido)
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error cargando los choferes', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_verifExisteUsuario', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteUsuario]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_verifExisteUsuario] 
(@username varchar(50)) AS
BEGIN
	
	IF (EXISTS (SELECT 1 FROM [GIRLPOWER].[Usuario] WHERE Username = @username))
		RETURN 1
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_inhabilitarCliente', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_inhabilitarCliente]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_inhabilitarCliente] 
(@idUsuario int)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado=0 
		WHERE IDUsuario=@IdUsuario AND IDRol = ( SELECT IDRol FROM GIRLPOWER.Rol WHERE Nombre= 'Cliente') --podria poner el id rol pero no lo se con seguridad
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error eliminando al cliente', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_inhabilitarChofer', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_inhabilitarChofer]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_inhabilitarChofer] 
(@idUsuario int)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado=0 
		WHERE IDUsuario=@IdUsuario AND IDRol = ( SELECT IDRol FROM GIRLPOWER.Rol WHERE Nombre= 'Chofer') --podria poner el id rol pero no lo se con seguridad
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error eliminando al chofer', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_editarCliente', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_editarCliente]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_editarCliente] 
(@idUsuario int, @nombre varchar(255), @apellido varchar(255), @direccion varchar(255), @telefono numeric(18,0), @dni numeric (18,0),
 @fechaNac datetime, @contrasenia varchar(255), @mail varchar(50), @piso numeric(2,0), @depto varchar(10), @localidad varchar(255),
 @codPost int, @username varchar(50))
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Usuario SET nombre=@nombre, apellido= @apellido, direccion=@direccion, telefono=@telefono, dni = @dni,
			 FechaNacimiento = @fechaNac, ContraseniaEncriptada= isnull(@contrasenia, ContraseniaEncriptada), Mail=@mail, piso = @piso,
			 depto = @depto, localidad = @localidad, Username = @username 
		WHERE IDUsuario = @idUsuario

		UPDATE GIRLPOWER.Cliente SET CodPostal = @codPost WHERE IDUsuario=@idUsuario
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error modificando el cliente', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

IF OBJECT_ID ('GIRLPOWER.PR_editarChofer', 'P') IS NOT NULL
DROP PROCEDURE [GIRLPOWER].[PR_editarChofer]
GO

CREATE PROCEDURE [GIRLPOWER].[PR_editarChofer] 
(@idUsuario int, @nombre varchar(255), @apellido varchar(255), @direccion varchar(255), @telefono numeric(18,0), @dni numeric (18,0),
 @fechaNac datetime, @contrasenia varchar(255), @mail varchar(50), @piso numeric(2,0), @depto varchar(10), @localidad varchar(255),
 @username varchar(50))
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Usuario SET nombre=@nombre, apellido= @apellido, direccion=@direccion, telefono=@telefono, dni = @dni,
			 FechaNacimiento = @fechaNac, ContraseniaEncriptada= isnull(@contrasenia, ContraseniaEncriptada), Mail=@mail, piso = @piso,
			 depto = @depto, localidad = @localidad, Username = @username 
		WHERE IDUsuario = @idUsuario
	END TRY
	BEGIN CATCH
		RAISERROR('Hubo un error modificando el chofer', 16, 217)
			WITH SETERROR
	END CATCH
END
GO

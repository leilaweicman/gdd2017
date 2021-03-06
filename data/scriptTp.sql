USE [GD1C2017]
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
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF__Turno__Habilitad__62465715]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Turno] DROP CONSTRAINT [DF__Turno__Habilitad__62465715]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_RolPorUsuario_Habilitado]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[RolPorUsuario] DROP CONSTRAINT [DF_RolPorUsuario_Habilitado]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF__Rol__Habilitado__7DEDA633]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Rol] DROP CONSTRAINT [DF__Rol__Habilitado__7DEDA633]
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
/****** Object:  Table [GIRLPOWER].[Viaje]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Viaje]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Viaje]
GO
/****** Object:  Table [GIRLPOWER].[Usuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Usuario]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Usuario]
GO
/****** Object:  Table [GIRLPOWER].[TurnoPorAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[TurnoPorAutomovil]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[TurnoPorAutomovil]
GO
/****** Object:  Table [GIRLPOWER].[Turno]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Turno]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Turno]
GO
/****** Object:  Table [GIRLPOWER].[RolPorUsuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[RolPorUsuario]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[RolPorUsuario]
GO
/****** Object:  Table [GIRLPOWER].[Rol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Rol]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Rol]
GO
/****** Object:  Table [GIRLPOWER].[RendicionDetalle]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[RendicionDetalle]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[RendicionDetalle]
GO
/****** Object:  Table [GIRLPOWER].[Rendicion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Rendicion]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Rendicion]
GO
/****** Object:  Table [GIRLPOWER].[Modelo]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Modelo]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Modelo]
GO
/****** Object:  Table [GIRLPOWER].[MarcaModelo]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[MarcaModelo]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[MarcaModelo]
GO
/****** Object:  Table [GIRLPOWER].[Marca]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Marca]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Marca]
GO
/****** Object:  Table [GIRLPOWER].[FuncionalidadPorRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FuncionalidadPorRol]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[FuncionalidadPorRol]
GO
/****** Object:  Table [GIRLPOWER].[Funcionalidad]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Funcionalidad]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Funcionalidad]
GO
/****** Object:  Table [GIRLPOWER].[FacturaDetalle]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[FacturaDetalle]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[FacturaDetalle]
GO
/****** Object:  Table [GIRLPOWER].[Factura]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Factura]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Factura]
GO
/****** Object:  Table [GIRLPOWER].[Cliente]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Cliente]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Cliente]
GO
/****** Object:  Table [GIRLPOWER].[Chofer]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Chofer]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Chofer]
GO
/****** Object:  Table [GIRLPOWER].[Automovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Automovil]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Automovil]
GO
/****** Object:  Table [GIRLPOWER].[Administrador]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Administrador]') AND type in (N'U'))
DROP TABLE [GIRLPOWER].[Administrador]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[updateRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[updateRol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[updateRol]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoViajeParaVerificarExistencia]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoViajeParaVerificarExistencia]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoViajeParaVerificarExistencia]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoViaje]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoViaje]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoViaje]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonClientesHabilitados]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonClientesHabilitados]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonClientesHabilitados]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonClientes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonClientes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonClientes]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitadosConAuto]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitadosConAuto]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitadosConAuto]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitados]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitados]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitados]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonChoferes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonChoferes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferes]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueEsClienteHabilitado]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueEsClienteHabilitado]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueEsClienteHabilitado]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueEsChoferHabilitado]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueEsChoferHabilitado]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueEsChoferHabilitado]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioPorIdCliente]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioPorIdCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioPorIdCliente]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioPorIdChofer]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioPorIdChofer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioPorIdChofer]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioClientesConMayorConsumo]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioClientesConMayorConsumo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioClientesConMayorConsumo]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioClienteQueUtilizoMasVecesElMismoAuto]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioClienteQueUtilizoMasVecesElMismoAuto]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioClienteQueUtilizoMasVecesElMismoAuto]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioChoferesConViajeMasLargo]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioChoferesConViajeMasLargo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioChoferesConViajeMasLargo]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioChoferesConMasRecaudacion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioChoferesConMasRecaudacion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoUsuarioChoferesConMasRecaudacion]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoTurnoPorId]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoTurnoPorId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoTurnoPorId]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoTurnoPorAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoTurnoPorAutomovil]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoTurnoPorAutomovil]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoTurnoHabilitadosPorAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoTurnoHabilitadosPorAutomovil]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoTurnoHabilitadosPorAutomovil]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoTurno]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoTurno]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoTurno]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRolPorUsuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRolPorUsuario]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoRolPorUsuario]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRolPorNombre]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRolPorNombre]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoRolPorNombre]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoRol]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRendicionDetalle]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRendicionDetalle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoRendicionDetalle]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRendicion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRendicion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoRendicion]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoFuncionalidadPorRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoFuncionalidadPorRol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoFuncionalidadPorRol]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoFuncionalidad]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoFuncionalidad]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerListadoFuncionalidad]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerAutomovilDelChofer]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerAutomovilDelChofer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[traerAutomovilDelChofer]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteUsuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteUsuario]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteUsuario]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteTelefono]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteTelefono]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteTelefono]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteRendicion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteRendicion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteRendicion]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExistePatente]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExistePatente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_verifExistePatente]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteFacturaEseMes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteFacturaEseMes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteFacturaEseMes]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteDni]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteDni]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_verifExisteDni]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_UltimoID]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_UltimoID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_UltimoID]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerViajesFacturaDetalle]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerViajesFacturaDetalle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_traerViajesFacturaDetalle]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerUsuarioPorUsername]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerUsuarioPorUsername]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerTurnosHabilitados]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerTurnosHabilitados]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_traerTurnosHabilitados]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerTurnos]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerTurnos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_traerTurnos]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerClientes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerClientes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_traerClientes]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerChoferes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerChoferes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_traerChoferes]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_TraerAutomoviles]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_TraerAutomoviles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_TraerAutomoviles]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_TotalRendicion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_TotalRendicion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_TotalRendicion]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_modificarAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_modificarAutomovil]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_modificarAutomovil]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_inhabilitarTurno]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_inhabilitarTurno]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_inhabilitarTurno]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_inhabilitarCliente]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_inhabilitarCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_inhabilitarCliente]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_inhabilitarChofer]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_inhabilitarChofer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_inhabilitarChofer]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_GenerarRendicion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_GenerarRendicion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_GenerarRendicion]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_editarTurno]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_editarTurno]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_editarTurno]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_editarCliente]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_editarCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_editarCliente]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_editarChofer]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_editarChofer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_editarChofer]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaUsuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaUsuario]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_altaUsuario]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaTurno]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaTurno]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_altaTurno]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaFacturaDetalle]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaFacturaDetalle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_altaFacturaDetalle]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaFactura]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaFactura]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_altaFactura]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaAutomovil]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[PR_altaAutomovil]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[insertViaje]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[insertViaje]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[insertViaje]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[insertRol_RetornarID]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[insertRol_RetornarID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[insertRol_RetornarID]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[insertFuncionalidadPorRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[insertFuncionalidadPorRol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[insertFuncionalidadPorRol]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[deshabilitarUsuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[deshabilitarUsuario]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[deshabilitarUsuario]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[deshabilitarRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[deshabilitarRol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[deshabilitarRol]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[deshabilitarAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[deshabilitarAutomovil]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[deshabilitarAutomovil]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[deleteFuncionalidadPorRol_PorIdRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[deleteFuncionalidadPorRol_PorIdRol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[deleteFuncionalidadPorRol_PorIdRol]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[BorrarTurnosPorAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[BorrarTurnosPorAutomovil]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[BorrarTurnosPorAutomovil]
GO
/****** Object:  StoredProcedure [GIRLPOWER].[AgregarTurnoPorAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[AgregarTurnoPorAutomovil]') AND type in (N'P', N'PC'))
DROP PROCEDURE [GIRLPOWER].[AgregarTurnoPorAutomovil]
GO
/****** Object:  Schema [GIRLPOWER]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'GIRLPOWER')
DROP SCHEMA [GIRLPOWER]
GO
/****** Object:  Schema [GIRLPOWER]    Script Date: 03/07/2017 01:33:55 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'GIRLPOWER')
EXEC sys.sp_executesql N'CREATE SCHEMA [GIRLPOWER]'

GO
/****** Object:  StoredProcedure [GIRLPOWER].[AgregarTurnoPorAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[AgregarTurnoPorAutomovil]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [GIRLPOWER].[AgregarTurnoPorAutomovil](@idAutomovil int, @idTurno int)as
begin
insert TurnoPorAutomovil(IDAutomovil,IDTurno) values(@idAutomovil , @idTurno)
end


' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[BorrarTurnosPorAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[BorrarTurnosPorAutomovil]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [GIRLPOWER].[BorrarTurnosPorAutomovil](@idAutomovil int)as
begin
delete TurnoPorAutomovil where IDAutomovil=@idAutomovil 
end


' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[deleteFuncionalidadPorRol_PorIdRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[deleteFuncionalidadPorRol_PorIdRol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[deleteFuncionalidadPorRol_PorIdRol] (@IDRol int) AS
BEGIN
	DELETE FROM GIRLPOWER.FuncionalidadPorRol WHERE IDRol=@IDRol
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[deshabilitarAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[deshabilitarAutomovil]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[deshabilitarAutomovil] (@id int) AS
BEGIN
	
		update [GIRLPOWER].Automovil set Habilitado=(case when Habilitado=0 then 1 else 0 end) where IDAutomovil=@id
	
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[deshabilitarRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[deshabilitarRol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[deshabilitarRol] (@IDRol int) AS
BEGIN
	UPDATE GIRLPOWER.Rol SET Habilitado=0 WHERE IDRol=@IDRol
	UPDATE GIRLPOWER.RolPorUsuario SET Habilitado=0 WHERE IDRol=@IDRol
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[deshabilitarUsuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[deshabilitarUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[deshabilitarUsuario] (@IdUsuario int) AS
BEGIN
	UPDATE girlpower.usuario SET Habilitado=0 WHERE IDUsuario=@IdUsuario
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[insertFuncionalidadPorRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[insertFuncionalidadPorRol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[insertFuncionalidadPorRol] (@IDRol int, @IDFuncionalidad int) AS
BEGIN
	INSERT INTO girlpower.FuncionalidadPorRol (IDRol, IDFuncionalidad) VALUES (@IDRol, @IDFuncionalidad)
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[insertRol_RetornarID]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[insertRol_RetornarID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[insertRol_RetornarID] (@Nombre VARCHAR(255)) AS
BEGIN
	INSERT INTO girlpower.Rol (Nombre) VALUES (@Nombre)
	SELECT @@IDENTITY AS IDRol
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[insertViaje]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[insertViaje]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[insertViaje] (@IDChofer int, @IDTurno int, @IDCliente int, @IDAutomovil int, @CantKM numeric(18,0), @FechaInicio varchar(100), @FechaFin varchar(100), @Precio numeric(18,2) ) AS
BEGIN
	INSERT INTO girlpower.Viaje(IDChofer, IDTurno, IDCliente, IDAutomovil, CantidadKilometros, FechaInicio, FechaFin, Precio) 
	VALUES 
	(@IDChofer, @IDTurno, @IDCliente, @IDAutomovil, @CantKM, convert(datetime,@FechaInicio,120), convert(datetime,@FechaFin,120), @Precio)
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaAutomovil]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [GIRLPOWER].[PR_altaAutomovil](
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
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaFacturaDetalle]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaFacturaDetalle]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_altaFacturaDetalle] 
(@idFactura int, @idCliente int, @fechaInicio datetime, @fechaFin datetime) AS
BEGIN
	INSERT INTO GIRLPOWER.FacturaDetalle (IDFactura, IDViaje, Importe)
	(SELECT @idFactura, IDViaje, Precio FROM GIRLPOWER.viaje WHERE IDCliente=@idCliente AND CAST(FechaFin as date) >= CAST(@fechaInicio as date) 
	AND CAST(FechaFin as date) <= CAST(@fechaFin as date))
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaFactura]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaFactura]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_altaFactura] 
(@idCliente int, @fechaInicio datetime, @fechaFin datetime, @importeTotal numeric(18,2), @fecha dateTime) AS
BEGIN
	declare @proxNumFactura numeric (18,0) = (select max(f.NroFactura) + 1 from GIRLPOWER.Factura f)

	INSERT INTO GIRLPOWER.Factura (IDCliente, FechaInicio, FechaFin, ImporteTotal, Fecha, NroFactura)
	VALUES (@idCliente, @fechaInicio, @fechaFin, @importeTotal, @fecha, @proxNumFactura)

	declare @idFactura int = (select IDFactura from Factura where NroFactura = @proxNumFactura)
	exec [GIRLPOWER].[PR_altaFacturaDetalle] @idFactura, @idCliente, @fechaInicio, @fechaFin
END
' 
END
GO

/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaTurno]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaTurno]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_altaTurno]
(@descripcion varchar(255), @horaInicio numeric (18,0), @horaFin numeric (18,0), @precioBase numeric (18,2), @valorKilometro numeric (18,2))
--ver si sirve pasarle el habilitado o no 
 AS
 BEGIN
	
	BEGIN TRANSACTION
	BEGIN TRY
		INSERT INTO [GD1C2017].[GIRLPOWER].Turno (Descripcion, HoraInicio, HoraFin, PrecioBase, ValorKilometro) VALUES 
		(@descripcion, @horaInicio, @horaFin, @precioBase, @valorKilometro)

		IF @@ERROR = 0
			COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		RAISERROR(''No se puede registrar el turno'', 16, 217)
			WITH SETERROR
	END CATCH
	RETURN @@rowCount
 END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_altaUsuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_altaUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

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
			INSERT INTO GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) VALUES (2, @idUsuario)
		END

		IF (@esCliente=1)
		BEGIN
			INSERT INTO [GD1C2017].[GIRLPOWER].[Cliente] (IDUsuario, CodPostal) VALUES (@idUsuario, @codPost)
			INSERT INTO GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) VALUES (3, @idUsuario)
		END

		IF @@ERROR = 0
			COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		RAISERROR(''No se puede registrar el usuario'', 16, 217)
			WITH SETERROR
	END CATCH
	RETURN @@rowCount
 END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_editarChofer]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_editarChofer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_editarChofer] 
(@idUsuario int, @nombre varchar(255), @apellido varchar(255), @direccion varchar(255), @telefono numeric(18,0), @dni numeric (18,0),
 @fechaNac datetime, @contrasenia varchar(255), @mail varchar(50), @piso numeric(2,0), @depto varchar(10), @localidad varchar(255),
 @username varchar(50), @habilitado bit)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Usuario SET nombre=@nombre, apellido= @apellido, direccion=@direccion, telefono=@telefono, dni = @dni,
			 FechaNacimiento = @fechaNac, ContraseniaEncriptada= isnull(@contrasenia, ContraseniaEncriptada), Mail=@mail, piso = @piso,
			 depto = @depto, localidad = @localidad, Username = @username 
		WHERE IDUsuario = @idUsuario
		
		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado = @habilitado
		WHERE IDUsuario=@idUsuario AND IDRol = 2
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error modificando el chofer'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_editarCliente]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_editarCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_editarCliente] 
(@idUsuario int, @nombre varchar(255), @apellido varchar(255), @direccion varchar(255), @telefono numeric(18,0), @dni numeric (18,0),
 @fechaNac datetime, @contrasenia varchar(255), @mail varchar(50), @piso numeric(2,0), @depto varchar(10), @localidad varchar(255),
 @codPost int, @username varchar(50), @habilitado bit)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Usuario SET nombre=@nombre, apellido= @apellido, direccion=@direccion, telefono=@telefono, dni = @dni,
			 FechaNacimiento = @fechaNac, ContraseniaEncriptada= isnull(@contrasenia, ContraseniaEncriptada), Mail=@mail, piso = @piso,
			 depto = @depto, localidad = @localidad, Username = @username
		WHERE IDUsuario = @idUsuario

		UPDATE GIRLPOWER.Cliente SET CodPostal = @codPost WHERE IDUsuario=@idUsuario

		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado = @habilitado
		WHERE IDUsuario=@idUsuario AND IDRol = 3
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error modificando el cliente'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_editarTurno]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_editarTurno]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_editarTurno] 
(@idTurno int, @descripcion varchar(255), @horaInicio numeric (18,0), @horaFin numeric (18,0), @precioBase numeric (18,2), 
@valorKilometro numeric (18,2), @habilitado bit)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Turno SET Descripcion=@descripcion, HoraInicio=@horaInicio, HoraFin=@horaFin, PrecioBase=@precioBase, 
		ValorKilometro=@valorKilometro, Habilitado = @habilitado 
		WHERE IDTurno=@idTurno
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error modificando el turno'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_GenerarRendicion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_GenerarRendicion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'   create procedure [GIRLPOWER].[PR_GenerarRendicion](@fecha date, @porcentaje int,
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
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_inhabilitarChofer]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_inhabilitarChofer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_inhabilitarChofer] 
(@idUsuario int)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado=0 
		WHERE IDUsuario=@IdUsuario AND IDRol = 2
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error eliminando al chofer'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_inhabilitarCliente]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_inhabilitarCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_inhabilitarCliente] 
(@idUsuario int)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.RolPorUsuario SET Habilitado=0 
		WHERE IDUsuario=@IdUsuario AND IDRol = 3 
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error eliminando al cliente'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_inhabilitarTurno]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_inhabilitarTurno]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_inhabilitarTurno] 
(@idTurno int)
AS
BEGIN
	BEGIN TRY
		UPDATE GIRLPOWER.Turno SET Habilitado=0 
		WHERE IDTurno=@idTurno
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error eliminando el turno'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_modificarAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_modificarAutomovil]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [GIRLPOWER].[PR_modificarAutomovil](
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
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_TotalRendicion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_TotalRendicion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
   create procedure  [GIRLPOWER].[PR_TotalRendicion] (@fecha date, @porcentaje int,
 @idchofer int, @idturno int)as begin
  select SUM
  (v.Precio - ((v.Precio*@porcentaje)/100))as total 
  from [GD1C2017].[GIRLPOWER].Viaje v  
   where v.IDTurno=@idturno and v.IDChofer=@idchofer and 
   cast(FechaFin as date)=CAST(@fecha as date )
   end
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_TraerAutomoviles]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_TraerAutomoviles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_TraerAutomoviles] (@idChofer int,@idMarca int, @patente varchar (10),@idModelo int)
 AS
BEGIN
	BEGIN TRY
		SELECT a.IDAutomovil,u.Nombre as Chofer, ma.Nombre as Marca,mo.Nombre as Modelo,Licencia,Patente,Rodado,a.Habilitado
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
		 (@patente='''' OR Patente=@patente)and
		 	 (@idModelo=0 OR m.IDModelo=@idModelo)


	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error cargando los automoviles'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerChoferes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerChoferes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_traerChoferes] 
(@dni numeric(18,0)=null, @nombre varchar(255)=null, @apellido varchar(255)=null)
AS
BEGIN
	BEGIN TRY
		SELECT u.IDUsuario, u.Apellido, u.ContraseniaEncriptada, u.Depto, u.Direccion, u.DNI, u.FechaNacimiento, u.Localidad,
		u.Mail, u.Nombre, u.Piso, u.Telefono, u.Username, ru.Habilitado /*as [RolHabilit]*/ FROM [GIRLPOWER].[Usuario] u 
		JOIN [GIRLPOWER].RolPorUsuario ru ON ru.IDUsuario = u.IDUsuario 
		WHERE ru.IDRol=2 AND (@dni=0 OR u.dni=@dni) AND (@nombre='''' OR u.Nombre = @nombre) 
		AND (@apellido='''' OR u.Apellido = @apellido)
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error cargando los choferes'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerClientes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerClientes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_traerClientes] 
(@dni numeric(18,0)=null, @nombre varchar(255)=null, @apellido varchar(255)=null)
AS
BEGIN
	BEGIN TRY
		SELECT u.IDUsuario, u.Apellido, u.ContraseniaEncriptada, u.Depto, u.Direccion, u.DNI, u.FechaNacimiento, u.Localidad,
		u.Mail, u.Nombre, u.Piso, u.Telefono, u.Username, c.CodPostal, ru.Habilitado, c.CodPostal  FROM [GIRLPOWER].[Usuario] u 
		JOIN [GIRLPOWER].[Cliente] c ON u.IDUsuario = c.IDUsuario
		JOIN [GIRLPOWER].RolPorUsuario ru ON ru.IDUsuario = u.IDUsuario 
		WHERE ru.IDRol =3 AND (@dni=0 OR u.dni=@dni) AND (@nombre='''' OR u.Nombre = @nombre) 
		AND (@apellido='''' OR u.Apellido = @apellido)		
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error cargando los clientes'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerTurnos]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerTurnos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_traerTurnos] 
(@descripcion varchar(255)=null)
AS
BEGIN
	BEGIN TRY
		SELECT * FROM [GIRLPOWER].[Turno] t
		WHERE @descripcion='''' OR t.Descripcion = @descripcion
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error cargando los turnos'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerTurnosHabilitados]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerTurnosHabilitados]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_traerTurnosHabilitados] 
AS
BEGIN
	BEGIN TRY
		SELECT * FROM [GIRLPOWER].[Turno] t
		WHERE t.Habilitado=1
		ORDER BY t.HoraInicio
	END TRY
	BEGIN CATCH
		RAISERROR(''Hubo un error cargando los turnos'', 16, 217)
			WITH SETERROR
	END CATCH
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerUsuarioPorUsername]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerUsuarioPorUsername]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [GIRLPOWER].[PR_traerUsuarioPorUsername] (@Username VARCHAR(30)) AS
BEGIN
	SELECT * FROM girlpower.usuario WHERE username=@Username
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_traerViajesFacturaDetalle]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_traerViajesFacturaDetalle]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_traerViajesFacturaDetalle] 
(@idCliente int, @fechaInicio datetime, @fechaFin datetime)
AS --tengo que validar en la aplicacion que no exista una factura en este mes
BEGIN
	SELECT * FROM GIRLPOWER.viaje WHERE IDCliente=@idCliente AND CAST(FechaFin as date) >= CAST(@fechaInicio as date) 
	AND CAST(FechaFin as date) <= CAST(@fechaFin as date)
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_UltimoID]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_UltimoID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [GIRLPOWER].[PR_UltimoID](@Patente varchar (10))
as
begin
select IDAutomovil as ID from Automovil where Patente=@Patente
end

' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteDni]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteDni]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_verifExisteDni] 
(@dni numeric(18,0), @idUsuario int = 0) AS
BEGIN
	SELECT DNI FROM [GIRLPOWER].[Usuario] WHERE Dni = @dni AND (@idUsuario=0 OR IDUsuario!= @idUsuario)
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteFacturaEseMes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteFacturaEseMes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_verifExisteFacturaEseMes] 
(@idCliente int, @fechaInicio datetime) AS
BEGIN
	SELECT FechaFin FROM [GIRLPOWER].[Factura] WHERE IDCliente= @idCliente AND MONTH(FechaInicio) = MONTH(@fechaInicio)  
	AND YEAR(FechaInicio) = YEAR(@FechaInicio);
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExistePatente]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExistePatente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [GIRLPOWER].[PR_verifExistePatente] 
(@patente varchar(50),@id int) AS
BEGIN
declare @result int
	set @result=0

	IF (EXISTS (SELECT 1 FROM [GIRLPOWER].[Automovil] WHERE Patente = @patente and IDAutomovil<>@id))
		select 1 as Existe
		else
		select 0 as Existe
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteRendicion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteRendicion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'   create PROCEDURE [GIRLPOWER].[PR_verifExisteRendicion] 
(@fecha varchar(50),@idturno int,@idchofer int) AS
BEGIN
declare @result int
	set @result=0

	IF (EXISTS (SELECT 1 FROM [GIRLPOWER].Rendicion WHERE cast(Fecha as date) = cast(@fecha as date) and
	IDTurno=@idturno and IDChofer=@idchofer))
		select 1 as Existe
		else
		select 0 as Existe
END' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteTelefono]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteTelefono]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_verifExisteTelefono] 
(@telefono numeric(18,0), @idUsuario int = 0) AS
BEGIN
	SELECT DNI FROM [GIRLPOWER].[Usuario] WHERE Telefono = @telefono AND (@idUsuario=0 OR IDUsuario!= @idUsuario)
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[PR_verifExisteUsuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[PR_verifExisteUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[PR_verifExisteUsuario] 
(@username varchar(50), @idUsuario int = 0) AS
BEGIN
	SELECT DNI FROM [GIRLPOWER].[Usuario] WHERE Username = @username AND (@idUsuario=0 OR IDUsuario!= @idUsuario)
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerAutomovilDelChofer]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerAutomovilDelChofer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerAutomovilDelChofer] (@IDChofer int) AS
BEGIN
	SELECT IDAutomovil, IDChofer as Chofer, ma.Nombre as Marca, mo.Nombre as Modelo, Licencia, Patente, Rodado, a.Habilitado
	FROM [GIRLPOWER].[Automovil] a 
	JOIN [GIRLPOWER].[MarcaModelo] m ON a.IDMarcaModelo = m.IDMarcaModelo
	JOIN [GIRLPOWER].Marca ma ON ma.IDMarca = m.IDMarca
	JOIN [GIRLPOWER].[Modelo] mo ON m.IDModelo = mo.IDModelo
	WHERE IDChofer=@IDChofer
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoFuncionalidad]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoFuncionalidad]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoFuncionalidad] AS
BEGIN
	SELECT * FROM girlpower.Funcionalidad
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoFuncionalidadPorRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoFuncionalidadPorRol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoFuncionalidadPorRol] (@IDRol int) AS
BEGIN
	SELECT * FROM girlpower.FuncionalidadPorRol f
	join girlpower.Funcionalidad f2 on f.IDFuncionalidad = f2.IDFuncionalidad
	WHERE f.IDRol=@IDRol
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRendicion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRendicion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N' create procedure [GIRLPOWER].[traerListadoRendicion] as begin
  select top 100 u.Nombre,r.NroRendicion,r.Fecha,t.Descripcion,r.ImporteTotal
  from [GD1C2017].[GIRLPOWER].Rendicion r  join
   [GD1C2017].[GIRLPOWER].Chofer c on c.IDChofer=r.IDChofer
   join   [GD1C2017].[GIRLPOWER].Turno t on t.idturno=r.IDTurno
   JOIN [GD1C2017].[GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
  order by Fecha desc
   end
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRendicionDetalle]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRendicionDetalle]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure  [GIRLPOWER].[traerListadoRendicionDetalle] (@fecha date, @porcentaje int,
 @idchofer int, @idturno int)as begin
  select u.Nombre,v.FechaFin,v.Precio as precioViaje,
  (v.Precio - ((v.Precio*@porcentaje)/100))as precioChofer 
  from [GD1C2017].[GIRLPOWER].Viaje v  join
   [GD1C2017].[GIRLPOWER].Cliente c on c.IDCliente=V.IDCliente
   JOIN [GD1C2017].[GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
   where v.IDTurno=@idturno and v.IDChofer=@idchofer and 
   cast(FechaFin as date)=CAST(@fecha as date )
   end
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoRol] AS
BEGIN
	SELECT * FROM girlpower.Rol
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRolPorNombre]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRolPorNombre]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoRolPorNombre] (@Nombre VARCHAR(255)) AS
BEGIN
	SELECT * FROM girlpower.Rol 
	WHERE Nombre=@Nombre
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoRolPorUsuario]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoRolPorUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoRolPorUsuario] (@IDUsuario int) AS
BEGIN
	SELECT * FROM girlpower.RolPorUsuario r1
	join girlpower.Rol r2 on r1.IDRol = r2.IDRol
	WHERE r1.IDUsuario=@IDUsuario AND r1.Habilitado=1 AND r2.Habilitado=1
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoTurno]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoTurno]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoTurno] AS
BEGIN
	SELECT * FROM girlpower.Turno
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoTurnoHabilitadosPorAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoTurnoHabilitadosPorAutomovil]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoTurnoHabilitadosPorAutomovil] (@IDAutomovil INT) AS
BEGIN
	SELECT * FROM girlpower.Turno t
	inner join GIRLPOWER.TurnoPorAutomovil ta on ta.IDTurno=t.IDTurno
	 WHERE ta.IDAutomovil=@IDAutomovil and t.Habilitado = 1
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoTurnoPorAutomovil]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoTurnoPorAutomovil]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [GIRLPOWER].[traerListadoTurnoPorAutomovil] (@IDAutomovil INT) AS
BEGIN
	SELECT * FROM girlpower.Turno t
	inner join GIRLPOWER.TurnoPorAutomovil ta on ta.IDTurno=t.IDTurno
	 WHERE ta.IDAutomovil=@IDAutomovil
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoTurnoPorId]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoTurnoPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoTurnoPorId] (@IDTurno int) AS
BEGIN
	SELECT TOP 1 * FROM girlpower.Turno WHERE IDTurno= @IDTurno
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioChoferesConMasRecaudacion]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioChoferesConMasRecaudacion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [GIRLPOWER].[traerListadoUsuarioChoferesConMasRecaudacion] (@fechaInicio datetime, @fechaFin datetime)
as begin
---CHOFERES CON MAS RECAUDACION
select top 5 u.Nombre, sum(r.ImporteTotal) as Total
from [GIRLPOWER].Rendicion r join [GIRLPOWER].Chofer c
on r.IDChofer=c.IDChofer
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
where r.Fecha between CAST(@fechaInicio as date) and CAST(@fechaFin as date)
group by r.IDChofer,u.Nombre
order by 2 desc

end
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioChoferesConViajeMasLargo]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioChoferesConViajeMasLargo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [GIRLPOWER].[traerListadoUsuarioChoferesConViajeMasLargo] (@fechaInicio datetime, @fechaFin datetime)
as begin
select top 5 u.Nombre, max(v.CantidadKilometros)as Kilometros
from [GIRLPOWER].Viaje v join [GIRLPOWER].Chofer c
on v.IDChofer=c.IDChofer
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
where v.FechaInicio between CAST(@fechaInicio as date) and CAST(@fechaFin as date)
group by v.IDChofer,u.Nombre
order by 2 desc
end
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioClienteQueUtilizoMasVecesElMismoAuto]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioClienteQueUtilizoMasVecesElMismoAuto]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [GIRLPOWER].[traerListadoUsuarioClienteQueUtilizoMasVecesElMismoAuto] (@fechaInicio datetime, @fechaFin datetime)
as begin
select top 5 u.Nombre, a.Patente, count(*) as Cantidad from [GIRLPOWER].Viaje v
join [GIRLPOWER].Cliente c on c.IDCliente=v.IDCliente
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
join [GIRLPOWER].Automovil a on a.IDAutomovil=v.IDAutomovil
where v.FechaInicio between CAST(@fechaInicio as date) and CAST(@fechaFin as date)
group by  v.IDCliente,u.Nombre,a.Patente
order by 3
end
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioClientesConMayorConsumo]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioClientesConMayorConsumo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [GIRLPOWER].[traerListadoUsuarioClientesConMayorConsumo](@fechaInicio datetime, @fechaFin datetime)
as begin
select top 5 u.Nombre, sum(f.ImporteTotal) as Total
from [GIRLPOWER].Factura f join [GIRLPOWER].Cliente c
on f.IDCliente=c.IDCliente
join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario
where f.Fecha between CAST(@fechaInicio as date) and CAST(@fechaFin as date)
group by f.IDCliente,u.Nombre
order by 2 desc
end
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioPorIdChofer]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioPorIdChofer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioPorIdChofer] (@IDChofer int) AS
BEGIN
	SELECT top 1 * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario = r.IDUsuario
	WHERE c.IDChofer=@IDChofer
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioPorIdCliente]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioPorIdCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioPorIdCliente] (@IDCliente int) AS
BEGIN
	SELECT top 1 * FROM girlpower.Usuario u
	join girlpower.Cliente c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario = r.IDUsuario
	WHERE c.IDCliente=@IDCliente
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueEsChoferHabilitado]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueEsChoferHabilitado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueEsChoferHabilitado] (@IDUsuario int) AS
BEGIN
	SELECT top 1 * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario= r.IDUsuario
	join girlpower.Automovil a on c.IDChofer=a.IDChofer
	WHERE r.Habilitado = 1 and u.IDUsuario=@IDUsuario
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueEsClienteHabilitado]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueEsClienteHabilitado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueEsClienteHabilitado] (@IDUsuario int) AS
BEGIN
	SELECT top 1 * FROM girlpower.Usuario u
	join girlpower.Cliente c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario= r.IDUsuario
	WHERE r.Habilitado = 1 and u.IDUsuario=@IDUsuario
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonChoferes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonChoferes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferes] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitados]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitados]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitados] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario= r.IDUsuario
	WHERE r.Habilitado = 1 and r.IDRol=2
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitadosConAuto]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitadosConAuto]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonChoferesHabilitadosConAuto] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Chofer c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on u.IDUsuario= r.IDUsuario
	join girlpower.Automovil a on c.IDChofer=a.IDChofer
	WHERE r.Habilitado = 1 and r.IDRol=2 and a.Habilitado = 1
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonClientes]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonClientes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonClientes] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Cliente c on u.IDUsuario=c.IDUsuario
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoUsuarioQueSonClientesHabilitados]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoUsuarioQueSonClientesHabilitados]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoUsuarioQueSonClientesHabilitados] AS
BEGIN
	SELECT * FROM girlpower.Usuario u
	join girlpower.Cliente c on u.IDUsuario=c.IDUsuario
	join GIRLPOWER.RolPorUsuario r on c.IDUsuario= r.IDUsuario 
	WHERE r.Habilitado = 1 and r.IDRol=3
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoViaje]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoViaje]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoViaje] AS
BEGIN
	SELECT * FROM girlpower.Viaje
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[traerListadoViajeParaVerificarExistencia]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[traerListadoViajeParaVerificarExistencia]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[traerListadoViajeParaVerificarExistencia] 
(@IDTurno int, @IDChofer int, @IDCliente int, @FechaInicio varchar (100), @FechaFin varchar(100)) AS
BEGIN
	SELECT TOP 1 * FROM girlpower.Viaje 
	WHERE IDTurno= @IDTurno AND IDCliente = @IDCliente AND IDChofer=@IDChofer 
	AND ( 
	(convert(datetime,@FechaInicio,120) between FechaInicio AND FechaFin)
	OR (convert(datetime,@FechaFin,120) BETWEEN FechaInicio AND FechaFin) 
	OR FechaInicio between convert(datetime,@FechaInicio,120) AND convert(datetime,@FechaFin,120)
	OR FechaFin between convert(datetime,@FechaInicio,120) AND convert(datetime,@FechaFin,120)
	)
END
' 
END
GO
/****** Object:  StoredProcedure [GIRLPOWER].[updateRol]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[updateRol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [GIRLPOWER].[updateRol] (@IDRol int, @Nombre VARCHAR(255), @Habilitado bit) AS
BEGIN
	UPDATE GIRLPOWER.Rol SET Nombre=@Nombre, Habilitado=@Habilitado WHERE IDRol=@IDRol
END
' 
END
GO
/****** Object:  Table [GIRLPOWER].[Administrador]    Script Date: 03/07/2017 01:33:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GIRLPOWER].[Administrador]') AND type in (N'U'))
BEGIN
CREATE TABLE [GIRLPOWER].[Administrador](
	[IDAdministrador] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [int] NULL,
 CONSTRAINT [PK__Administ__02DB5D058EA98653] PRIMARY KEY CLUSTERED 
(
	[IDAdministrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[Automovil]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Chofer]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Cliente]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Factura]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
	[FechaFin] [datetime] NULL,
	[ImporteTotal] [numeric](18, 2) NULL,
	[Fecha] [datetime] NULL,
	[NroFactura] [numeric](18, 0) NULL,
 CONSTRAINT [PK__Factura__492FE939ED543D91] PRIMARY KEY CLUSTERED 
(
	[IDFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [GIRLPOWER].[FacturaDetalle]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Funcionalidad]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[FuncionalidadPorRol]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Marca]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[MarcaModelo]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Modelo]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Rendicion]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[RendicionDetalle]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Rol]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
	[Nombre] [varchar](255) NOT NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK__Rol__A681ACB6BBEFE9C5] PRIMARY KEY CLUSTERED 
(
	[IDRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Rol__75E3EFCFA4B25FA0] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [GIRLPOWER].[RolPorUsuario]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Turno]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[TurnoPorAutomovil]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
/****** Object:  Table [GIRLPOWER].[Usuario]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
	[Username] [varchar](50) NOT NULL,
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
/****** Object:  Table [GIRLPOWER].[Viaje]    Script Date: 03/07/2017 01:33:56 a.m. ******/
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
	[CantidadKilometros] [numeric](18, 2) NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
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
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF__Rol__Habilitado__7DEDA633]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Rol] ADD  CONSTRAINT [DF__Rol__Habilitado__7DEDA633]  DEFAULT ((1)) FOR [Habilitado]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF_RolPorUsuario_Habilitado]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[RolPorUsuario] ADD  CONSTRAINT [DF_RolPorUsuario_Habilitado]  DEFAULT ((1)) FOR [Habilitado]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[GIRLPOWER].[DF__Turno__Habilitad__62465715]') AND type = 'D')
BEGIN
ALTER TABLE [GIRLPOWER].[Turno] ADD  CONSTRAINT [DF__Turno__Habilitad__62465715]  DEFAULT ((1)) FOR [Habilitado]
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




--INSERTS

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
 insert into [GIRLPOWER].Viaje(IDChofer,IDCliente,IDAutomovil,IDTurno,CantidadKilometros,FechaInicio,FechaFin, Precio)
 (SELECT distinct chofer.IDChofer,cliente.IDCliente,a.IDAutomovil,t.IDTurno,
Viaje_Cant_Kilometros,Viaje_Fecha,DATEADD(minute,(Viaje_Cant_Kilometros * 5),Viaje_Fecha),t.PrecioBase+(Viaje_Cant_Kilometros * t.ValorKilometro) FROM [gd_esquema].Maestra gdm 
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
  inner join [GIRLPOWER].Viaje v on v.FechaInicio=m.Viaje_Fecha and v.CantidadKilometros=m.Viaje_Cant_Kilometros and 
 v.IDCliente=f.IDCliente
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
  v.CantidadKilometros=m.Viaje_Cant_Kilometros and v.IDChofer=r.IDChofer
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
insert into GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) 
(select 3, IDUsuario from GIRLPOWER.Cliente)

--insert chofer into rol por usuario
insert into GIRLPOWER.RolPorUsuario (IDRol, IDUsuario) 
(select 2, IDUsuario from GIRLPOWER.Chofer)


--insert usuario admin 
insert into GIRLPOWER.usuario values ('admin', 'admin', 'Calle Falsa 123', 12345678, 87654321, convert(datetime,'1976-04-13 00:00:00.000',120), 
	'52D77462B24987175C8D7DAB901A5967E927FFC8D0B6E4A234E07A4AEC5E3724', 'admin@admin.com', 1, 12, 'A', 'CABA', 'admin')
insert into GIRLPOWER.RolPorUsuario values (1, (select idUsuario From Girlpower.Usuario where username = 'admin'), 1)

--insert funcionalidades
INSERT INTO GIRLPOWER.Funcionalidad
(Nombre)
VALUES
('ABM_Rol'),
('ABM_Cliente'),
('ABM_Automovil'),
('ABM_Chofer'),
('Registro_Viajes'),
('Rendicion_Cuenta'),
('Facturacion'),
('Listado_Estadistico'),
('ABM_Turno'),
('Datos_Personales')

--insert funcionalidadPorRol
INSERT INTO GIRLPOWER.FuncionalidadPorRol (IDFuncionalidad, IDRol) 
VALUES (1,1), (2,1), (3,1), (4,1), (5,1), (6,1), (7,1), (8,1), (9,1),
(5,2), (6,2), (10,2),
(5,3), (10,3)
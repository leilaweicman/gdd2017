
--begin transaction

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
('ABM_Turno')
INSERT INTO GIRLPOWER.FuncionalidadPorRol (IDFuncionalidad, IDRol) 
VALUES (1,1), (2,1), (3,1), (4,1), (5,1), (6,1), (7,1), (8,1), (9,1),
(5,2), (6,2),
(5,3), (7,3)
select * from GIRLPOWER.Funcionalidad
select * from GIRLPOWER.FuncionalidadPorRol
--commit
--rollback

begin transaction
alter table GIRLPOWER.Usuario
add Username varchar(50);

update GIRLPOWER.Usuario SET Username='93506616', ContraseniaEncriptada='E79E418E48623569D75E2A7B09AE88ED9B77B126A445B9FF9DC6989A08EFA079' 
WHERE IdUsuario=1

SELECT * from GIRLPOWER.Usuario
--commit
--rollback
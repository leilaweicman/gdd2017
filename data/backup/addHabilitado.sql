

begin transaction
alter table GIRLPOWER.Rol
add Habilitado bit;

ALTER TABLE girlpower.rol
ADD DEFAULT 1 FOR Habilitado

alter table girlpower.rol alter column Habilitado bit Not null;


select * from girlpower.rol

update GIRLPOWER.rol SET habilitado=1
--commit
--rollback
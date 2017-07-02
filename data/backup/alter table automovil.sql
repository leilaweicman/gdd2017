alter table [GIRLPOWER].Automovil add Habilitado bit
update [GIRLPOWER].Automovil set Habilitado=1
alter table [GIRLPOWER].Automovil alter column Habilitado bit not null

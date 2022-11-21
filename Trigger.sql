--Crear un trigger que impida que un operario atienda mas de 5 drones--

--Crea funcion prohibicion--
create or replace function prohibicion()
returns trigger as $$
	declare
--Declara la variable tendra el total de operaciones--
	totaloperaciones int;	
begin
--contea el total de operaciones de drone que atiende un operario--
	select count (*) into totaloperaciones from operacion_drones where id_operario=new.id_operario;
	if (totaloperaciones >= 5) then
		raise exception 'El operario no puede atender mas de 5 drones';
	end if;
	return new;
end;
$$	
language plpgsql;

--Creamos trigger y le asignamos la funcion prohibicion esta ejecutara con before
--para que haga la validacion antes de dejar entrar el dato--
create trigger ImpedirOperario before insert
on operacion_drones for each row
execute procedure prohibicion();

--Prueba para verificar si funciona el trigger--

insert into operacion_drones values(9,1,4,'Vigilancia de casa familiar','Configuracion de 6 horas del dia');

/* Cursor 
Que aparezca cada operario cuantos drones a operado en total en la empresa
y cuantos de esos drones están en funcionamiento y no están en funcionamiento
*/
do
	$$
	Declare 
		datos_operarios RECORD;
		cursor_operarios cursor for
	Select
		sum ((select count (Drone.estado) from drone where drone.estado ='activado'
			 and id_drone=operacion_drones.id_drone)) as Activado,
			 
		sum ((select count (Drone.estado) from drone where drone.estado ='off'
			 and id_drone=operacion_drones.id_drone)) as Desactivado,
			 
	    count (operarios)  as Atendidos,
             operarios.nombre
              
	From operacion_drones
		inner join drone on drone.id_drone = operacion_drones.id_drone
        inner join operarios on operarios.id_operario = operacion_drones.id_operario
        group by operarios.nombre;
	Begin 
		OPEN cursor_operarios;
		FETCH cursor_operarios INTO datos_operarios;
		WHILE (found) Loop
		RAISE NOTICE
		'Operario: %
         Drones Operados: %
         En funcionamiento: %
         Fuera de servicio: % 
         ',
	     datos_operarios.nombre,datos_operarios.Atendidos,datos_operarios.Activado,
         datos_operarios.Desactivado;
		FETCH cursor_operarios INTO datos_operarios;
	end Loop;
end $$
language 'plpgsql';
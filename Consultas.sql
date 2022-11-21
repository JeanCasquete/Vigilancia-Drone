/*Historico de contrato de los que ha estado cada drone 
 con el total de horas que estuvo volando*/
select drone.serie as Drone_Serie,
count (contrato) as Numero_de_ontratos,
sum(contrato.horas_de_vuelo) as Total_horas_de_vuelo
from contrato
INNER JOIN drone on drone.id_drone=contrato.id_drone
group by drone.serie

/*Historico de atención de incidencias de los técnicos 
(Año, Nombre cada técnico, numero de incidencias atendida por año*/
select extract(Year from fecha_mantenimiento) as año,
tecnicos.nombre as Tecnico,
count(mantenimiento) as Numero_de_incidencias_atendidas
from mantenimiento
INNER JOIN tecnicos on tecnicos.id_tecnico=mantenimiento.id_tecnico
group by tecnicos.nombre,extract(Year from fecha_mantenimiento)


/*Historico de contrataciones que ha tenido la empresa 
para servicio de vigilancia por año y sus ganancias
*/
select extract(Year from fecha_inicio) as año,
count (contrato) as Contrataciones,
sum(pago) as Total_Dinero
from contrato
group by extract(Year from fecha_inicio) 


/*  Historico de mantenimiento recibido por cada drone y su tiempo de uso
( El drone pxf recibio 500 mantenimiento, tiene trabajando con nosotros 10 años 5 meses 20 dias.) */
select drone.serie as Drone_Serie,
count (mantenimiento) as mantenimientos,
AGE( drone.fecha_adquisicion) as Tiempo_de_uso
from mantenimiento
INNER JOIN incidencias on incidencias.id_incidencia=mantenimiento.id_incidencia
INNER JOIN operacion_drones on operacion_drones.id_operacion_drone=incidencias.id_operacion_drone
INNER JOIN drone on drone.id_drone=operacion_drones.id_drone
group by drone.serie,AGE( drone.fecha_adquisicion)
--Insertar datos fabricante--
insert into fabricante values(1,'LG');
insert into fabricante values(2,'XIAOMI');
insert into fabricante values(3,'Samsung');
insert into fabricante values(4,'HUAWEI');

--Insertar datos drones--
insert into drone values(1,'PCX45',1,'3500mAh',400,'activado','2015-09-20');
insert into drone values(2,'PCX40',2,'5000mAh',500,'activado','2018-11-15');
insert into drone values(3,'RTX40',3,'6000mAh',650,'off','2020-11-10');
insert into drone values(4,'LGDRON',1,'6000mAh',650,'off','2022-11-10');


--insertar datos drones line--
insert into drone_line values(1,1,25);
insert into drone_line values(2,2,15);

--insertar datos ciudad---

insert into ciudad values(1,'Manta');
insert into ciudad values(2,'Guayaquill');
insert into ciudad values(3,'Quito');

-- Insertar datos cliente--

insert into cliente values(1,'Jean','Fisica',1,1253155693,'Calle 404',0988456510);
insert into cliente values(2,'Erick','Fisica',2,1852165693,'Calle 202',0988556510);
insert into cliente values(3,'Pedro','Fisica',2,1852165693,'Calle 206',0988556510);
insert into cliente values(4,'Esquina de Ales','Juridica',2,1852165693,'Calle 206',0988556510);


--insertar datos operarios --
insert into operarios values(1,'Juan','Perez',1317568823);
insert into operarios values(2,'Rene','Diaz',1320448823);
insert into operarios values(3,'Taez','Ibarra',1345449623);
insert into operarios values(4,'Ronald','Araujo',1345449623);


--insertar datos operacion drones --
insert into operacion_drones values(1,1,1,'Vigilancia de casa familiar','Configuracion de 12 horas del dia');
insert into operacion_drones values(2,1,2,'Vigilancia de local de comida','Configuracion de 5 horas del dia');
insert into operacion_drones values(3,2,3,'Vigilancia de casa familiar','Configuracion de 8 horas del dia');
insert into operacion_drones values(4,2,4,'Vigilancia de casa regular','Configuracion de 8 horas del dia');
insert into operacion_drones values(5,3,2,'Vigilancia de casa regular','Configuracion de 9 horas del dia');
insert into operacion_drones values(6,1,3,'Vigilancia de casa regular','Configuracion de 9 horas del dia');
insert into operacion_drones values(7,1,3,'Vigilancia de casa regular','Configuracion de 9 horas del dia');
insert into operacion_drones values(8,1,3,'Vigilancia de casa regular','Configuracion de 9 horas del dia');

--Insertar datos incidencias--

insert into incidencias values(1,1,'Todo normal con el drone','2020-05-15');
insert into incidencias values(2,2,'El drone no vuela alto','2020-11-15');
insert into incidencias values(3,3,'Todo normal con el drone','2021-05-15');

--Insert datos tecnicos--
insert into tecnicos values(1,'Daniel','Rodriguez',1317468897);
insert into tecnicos values(2,'Mike','Peralta',1320968897);
insert into tecnicos  values(3,'Homer','Casquete',1320968897);

--Insertar datos mantenimiento--
insert into mantenimiento values(1,2,1,'Semanal','2019-05-15');
insert into mantenimiento values(2,1,2,'Semanal','2020-07-15');
insert into mantenimiento values(3,1,2,'Semanal','2020-07-16');


--Insert datos horarios--
insert into horarios values(1,1,'de Lunes a Juevenes');
insert into horarios values(2,2,'Martes a Sabado');

--Insertar datos de contratos--
insert into contrato values(1,1,1,'2020-07-11','2021-07-11',300,5000);
insert into contrato values(2,2,2,'2019-07-11','2021-07-11',300,5000);
insert into contrato values(3,2,1,'2018-07-11','2022-07-11',400,6500);
insert into contrato values(4,1,1,'2020-07-11','2021-07-11',300,5000);
insert into contrato values(5,3,2,'2019-08-11','2024-07-11',300,6000);
insert into contrato values(6,4,4,'2017-08-11','2023-07-11',300,8000);
insert into contrato values(7,4,3,'2017-08-11','2017-12-15',300,2000);
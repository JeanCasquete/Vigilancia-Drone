

/* Creacion Tabla Facribante*/
Create table fabricante(
    id_fabricante int  Constraint PK_ID_FABRICANTE primary key,
    fabriante varchar(25)
);

/* Creacion Tabla Drone y su relacion con tabla fabricante*/
Create table drone(
    id_drone int  Constraint PK_ID_DRONE primary key NOT NULL,
    serie varchar(25),
    id_fabricante int,
    bateria varchar(10),
    horas_de_vuelo int,
    Estado varchar(10),
    Fecha_adquisicion date,
    CONSTRAINT FK_ID_FABRICANTE 
    FOREIGN KEY (id_fabricante) REFERENCES fabricante (id_fabricante)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

/* Creacion Tabla Drone Line con su relacion con la tabla DRONE*/
Create table drone_line(
    id_drone_line int constraint PK_ID_DRONE_LINE PRIMARY KEY,
    id_drone int,
    unidades int,
    CONSTRAINT FK_ID_DRONE 
    FOREIGN KEY (id_drone) REFERENCES drone (id_drone)
    ON DELETE RESTRICT ON UPDATE CASCADE   
);
Create table ciudad(
    id_ciudad int CONSTRAINT PK_ID_CIUDAD PRIMARY KEY,
    nom_ciudad varchar(25)
);
Create table Cliente(
    id_cliente int CONSTRAINT PK_ID_CLIENTE PRIMARY KEY,
    nombre varchar(50),
    entidad varchar(25),
    id_ciudad int,
    cedula int,
    direccion varchar(50),
    telefono int,
    CONSTRAINT FK_ID_CIUDAD
    FOREIGN KEY (id_ciudad) REFERENCES ciudad (id_ciudad)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

/* Creacion Tabla Operarios*/

create table operarios(
    id_operario int CONSTRAINT PK_ID_OPERARIO PRIMARY KEY,
    nombre varchar(25),
    apellido varchar(25),
    cedula int
);

/* Creacion Tabla Operarcion Drones */

create table operacion_drones(
    id_operacion_drone int CONSTRAINT PK_ID_OPERACION_DRONE PRIMARY KEY,
    id_operario int,
    id_drone int,
    servicio varchar(50),
    configuracion varchar(50),
    CONSTRAINT FK_ID_OPERARIO 
    FOREIGN KEY (id_operario) REFERENCES operarios (id_operario),
    CONSTRAINT FK_ID_DRONE 
    FOREIGN KEY (id_drone) REFERENCES drone (id_drone)
    ON DELETE RESTRICT ON UPDATE CASCADE  
);

/* Creacion Tabla Incidencias y su relacion con la tabla operacion drones*/

create table incidencias(
    id_incidencia int CONSTRAINT PK_ID_INCIDENCIAS PRIMARY KEY,
    id_operacion_drone int,
    obervaciones varchar(30),
    fecha_inci date,
    CONSTRAINT FK_ID_OPERACION_DRONE
    FOREIGN KEY (id_operacion_drone) REFERENCES operacion_drones (id_operacion_drone)
    ON DELETE RESTRICT ON UPDATE CASCADE   
);

/* Creacion Tabla tecnico*/

create table tecnicos(
    id_tecnico int CONSTRAINT PK_ID_tecnico PRIMARY KEY,
    nombre varchar(25),
    apellido varchar(25),
    cedula int   
);

/* Creacion Tabla mantenimiento y su relacion con la tabla tecnico y tabla incidencias*/

Create table mantenimiento(
    id_mantenimiento int CONSTRAINT PK_ID_MANTENIMIENTO PRIMARY KEY,
    id_incidencia int,
    id_tecnico int,
    frecuencia varchar(25),
    fecha_mantenimiento date,
    CONSTRAINT FK_ID_INCIDENCIA 
    FOREIGN KEY (id_incidencia) REFERENCES incidencias (id_incidencia),
    CONSTRAINT FK_ID_TECNICO 
    FOREIGN KEY (id_tecnico) REFERENCES tecnicos (id_tecnico)
    ON DELETE RESTRICT ON UPDATE CASCADE 
);

/* Creacion Tabla horarios y 
su relacion con la tabla drone*/

create table horarios(
    id_horario int CONSTRAINT PK_ID_HORARIO PRIMARY KEY,
    id_operacion_drone int,
    horarios varchar(50),
    CONSTRAINT FK_ID_OPERACION_DRONE 
    FOREIGN KEY (id_operacion_drone) REFERENCES operacion_drones (id_operacion_drone)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

/* Creacion Tabla contrato y su relacion 
tabla drone y su tabla operario*/

create table contrato(
    id_contrato int CONSTRAINT PK_ID_CONTRATO PRIMARY KEY,
    id_cliente int,
    id_drone int,
    fecha_inicio date,
    fecha_expira date,
    Horas_de_vuelo int,
    pago int,
    CONSTRAINT FK_ID_ICLIENTE 
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
    CONSTRAINT FK_ID_DRONE
    FOREIGN KEY (id_drone) REFERENCES drone (id_drone)
    ON DELETE RESTRICT ON UPDATE CASCADE
);
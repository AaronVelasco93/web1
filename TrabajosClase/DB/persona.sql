/*Si la bases de datos existe eliminala*/
DROP SCHEMA IF EXISTS `fes_ico`;

/*Creación de la base de Datos*/

CREATE SCHEMA IF NOT EXISTS `fes_ico` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;

/*unsamos nuestra base de datos*/
USE `fes_ico`;

/*creacion de una tabla*/

CREATE TABLE `alumno`(
    `nombre_usuario` text not null,
    `carrera` text not null,
    `no_cuenta` int (10) not null,
    `direccion` text not null,
    `telefono`varchar (12) not null,
    `email` text not null,
    `password` varchar (8) not null,
    `fecha_registro` datetime not null default current_timestamp,
    `permisos` int (11) not null default '1'

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Agregar registros*/
INSERT INTO `alumno`(`nombre_usuario`, `carrera`, `no_cuenta`, `direccion`, `telefono`, `email`,`password`)values
('Aaron Velasco', 'ICO','413112576','Callejon la Gloria 15','26198295','aaronvelasco1993@outlook.com','18456'),
('Maria de Jesus Flores', 'ENE','521654','Santa Cruz','51351552','maryFH@otlook.com','12348');


/*definir la llave primaria */

ALTER TABLE `alumno`
    ADD PRIMARY KEY (`no_cuenta`);





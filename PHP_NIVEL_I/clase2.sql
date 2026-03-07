-- CONEXIÓN A LA BASE DE DATOS
-- Acceder a la consola de xampp
mysql -u root -p {ENTER}
* ENTER NUEVAMENTE PASSWORD EN BLANCO

-- CREACIÓN DE LA BBDD agenda_
-- Ricardo, Salomón, Gabriel, Sebastián

CREATE DATABASE agenda_ricardo;
CREATE DATABASE agenda_salomon;
CREATE DATABASE agenda_gabriel;
CREATE DATABASE agenda_sebastian;
CREATE DATABASE agenda_joelys;

-- CONECTARSE A LA BBDD
use agenda_profesor;

-- CREACIÓN DE LA TABLA PERSONAS;
create table personas(
    id integer auto_increment,
    cedula varchar(10),
    nombre varchar(80),
    apellido varchar(80),
    fechanac date,
    sexo char(1),
    telefono varchar(30),
    correoelectronico varchar(255),
    direccion text,
    primary key(id),
    unique(cedula),
    unique(correoelectronico)
);


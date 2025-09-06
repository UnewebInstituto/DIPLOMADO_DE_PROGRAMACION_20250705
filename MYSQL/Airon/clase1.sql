-- Conexion a la Base de Datos
mysql -u root -p

-- Creacion de Base de Datos
create database bd_airon_20250830;

-- Visaulizar las Bases de Datos Contenidas en el Servidor
show databases;

-- Mostrar las Bases de Datos Filtradas
show databases like "%_2025830%";

-- Cambiar Base de Datos

use bd_airon_20250830;

-- Ver Tablas
show tables;

--  Crear Tabla de Contactos
create table contactos(
    nombre varchar(80),
    apellido varchar(80),
    telefono varchar(11),
    direccion text,
    correo_electronico text
);

-- Consultar Estructura de la Tabla
-- 1era forma
describe contactos;

-- 2da forma
show create table contactos;

-- Guardar Datos en una Tabla
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
value
("Ana", "Vasquez", "02121234567", "Santa Fe", "av@gmail.com");

-- Consultar los Datos de una Tabla
-- Ver todas las columnas
select * from contactos;

-- Ver Alguna columna de la Tabla (se indica la lista de campos)
select nombre, telefono from contactos;

-- Guardar Varios Registros en la Tabla
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
values
("Yolanda", "Tortoza", "02124526798", "Catia La Mar", "yt@gmail.com"),
("Ytzali", "Rodriguez", "02122795183", "Charallave o Los Teques", "yr@gmail.com");

-- Borrar Registros
-- Borrado Total
delete from contactos;

-- Otra Forma
truncate contactos; -- Reinicia el contador de registros (auto increment)

-- Borrado Condicionado
delete from contactos where nombre = "Ana";

-- Modificacion de Tabla
--Borrar Campo de la Tabla
alter table contactos drop column telefono;

-- Añadir un Campo en la Tabla
-- Se Añadira el Campo ID (Identificador) de tipo entero y autoincremental
-- Este Campo debe ser Clave Primeria
alter table contactos add column id integer auto_increment primary key first;

-- Añadir campos en una tabla
-- Por omision los campos se añaden al final
alter table contactos add column telefono_ofi varchar(11);

-- Añadir Campo despues de campo preexistente
alter table contactos add column telefono_hab varchar(11) after correo_electronico;

alter table contactos add column telefono_cel varchar(11) after telefono_hab;

-- Cambiar nombre de Campos o tipo de datos
alter table contactos change column telefono_cel telf_cel varchar(11);
alter table contactos change column telefono_ofi telf_ofi varchar(11);
alter table contactos change column telefono_hab telf_hab varchar(11);

-- Actualizacion del contenido de un campo en la tabla
-- Todos los registros
update contactos set telefono_hab = "02125476395";
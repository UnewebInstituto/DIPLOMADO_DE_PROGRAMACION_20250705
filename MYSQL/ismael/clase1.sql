-- creacion de base de datos
mysql -u root -p

create database bd_ismael_20250830;

--visualizar las base de datos contenidas 
--en el servidor 
show database;

-- MOSTRAR LAS BASES DE DATOS, QUE EN EL CONTENIDO
-- DEL NOMBRE SE ENCUENTRE EL TEXTO _20250830
        show database like '%_20250830%';

--creacion de la tabla contactos
create table contactos(
    NOMBRE varchar(80),
    apellido varchar(80),
    telefono varchar(11),
    direcion text,
    correo_electronico text
);

--consurtar estructura de una tabla
--1ra forma 
Describe contactos;
--2da forma 
show create table contactos;

--guardar datos en una tabla 
insert into contactos(NOMBRE,apellido,telefono,direcion,correo_electronico)
value
('oscar','perez','0212665745','chacao','hdhe@gmail.com'),
('katalina','añes','0234923823','valle','kata@gmail.com'),
('pedro','lozano','04342348899','catia','pedrol@gmail.com');
--consultar datos de una tabla 
--ver todas las columnas*
select * from contactos;

--borrar registro de la tabla 
--borrar total
delete from contactos;--mantiene el contador de registros
--otra forma 
truncate contactos;--reinicia el contacto de registros (auto increment)
--borrado condicionado 
delete from contactos where NOMBRE = 'ana';
delete from contactos where NOMBRE = 'pedro';

--modificacion de la estructura de tablas
--borrar campo de tabla 
alter table contactos drop column telefono;

--añadir un campo de tabla 
--se añadira el campo id (identificador) de tipo entero 
--y auto incremental , al principio 
--este campo debe clave primaria 
alter table contactos add column id integer auto_increment primary key first;

--Añadir campo en una tabla 
--por omision los campos se añare al final 
alter table contactos add column telefono varchar(11);
alter table contactos add column telefono_hab varchar(11);
alter table contactos add column telefono_ofic varchar(11);
--añadir campo pre existente
alter table contactos add column telefono_hab varchar(11) alter correo_electronico;

alter table contactos add column telefono_ofic varchar(11) alter telefono_hab;

--cambiar nombre del campo 
alter table contactos change column telefono
tlf_cel varchar(11);
alter table contactos change column telefono_hab
tlf_hab varchar(11);
alter table contactos chage column telefono_ofic
tlf_ofic varchar(11); 

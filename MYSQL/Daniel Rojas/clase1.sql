--Conexion a la base de datos 
mysql -u root -p

-- Creacion de BBDD 
create database bd_daniel_20250830;


--visualizar las base de datos contenidas en el servidor 
show database;


--mostrar las base de datos, que en el contenido 
-- del nombre se encuentre el texto 
show database like '%_20250830%';


--creacion de la tabla contactos

create table contactos(
    nombre varchar (80),
    apellido varchar (80),
    telefono varchar (11),
    direccion text,
    correo_electronico text
);

--consultar estructura de tabla contacto
--1era forma
describe contactos;
--2da. forma:
show create table contactos;

--Guardar datos en una tabla 
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
value
('Johana','Mujica','04223556644','valencia santa rosa los samanes casa 435','tucorreo@gmail.com');

-- consultar datos de una tabla 
--ver todas las columnas *
select * from contactos;

--ver algunas columnas de la tabla (se indica la lista de campo)
select nombre, apellido, telefono from contactos;


--Guardar varios registros en la tabla 
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
value
('isaac','Rojas','04223556345','Valencia','ir@gmail.com'),
('Ester','Rojas','04244575926','Mariara','er@gmail.com'),
('Estella','Rojas','04144785987','Caracas','estellar@gmail.com'),
('Mariana','Melendez','04163547898','Margarita','mmenelendez@gmail.com');
 

 --borrar registro de la tabla
 --borrado total
 delete from contactos; --Mantiene el contador de registro 
 --otra forma 
 truncate contactos; --Reinicia el contador de registro (auto increment) 
 --borrado condicionado
 delete from contactos where nombre = 'sorgalim';

 --modificacion de la estructura de tablas 
 --borrar campo de la tabla 
 alter table contactos drop column telefono;

 --añadir un campo en la tabla
 -- se añadira el campo id(indentificador) de tipo entero 
 --y auto incremental, al principio
 -- este campo debe ser clave primaria 
 alter table contactos add column id integer auto_increment primary key first;


--añadir campos en una tabla
--por omision los campos se añade al final 
 alter table contactos add column telefono varchar(11);

 -- añadir despues de campo pre existente
 alter table contactos add column telefono_hab varchar(11) after correo_electronico;


--para cambiar nombre de campos o tipos de datos
alter table contactos change column telefono_hab telf_cel varchar (11);
alter table contactos change column telefono telf_p varchar (11);
alter table contactos change column telefono_oficina telf_of varchar (11);


--actualizacion del contenido de un campo en la tabla 
--todos los registros 

update contactos set telefono_hab = '02124575926';
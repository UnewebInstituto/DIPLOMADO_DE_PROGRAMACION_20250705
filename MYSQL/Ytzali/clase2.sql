-- Prueba para verificar que campo ID es único
insert into contactos(id, nombre, apellido, direccion, correo_electronico, telf_hab, telf_cel, telf_ofi) values
(1,'LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');

--RESULTADO
MariaDB [bd_ytzali_20250830]> insert into contactos(id,nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values
    -> (1,'LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');

ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'

-- EN ESTE CASO EL REGISTRO SERÁ ALMACENADO DADO QUE 
-- EL CAMPO ID SE GENERARÁ AUTOMÁTICAMENTE, EN VISTA
-- DE QUE AUTO_INCREMENT
insert into contactos(nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values
('LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');


-- RESULTADO 
MariaDB [bd_ytzali_20250830]> insert into contactos(nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values
    -> ('LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');

Query OK, 1 row affected (0.002 sec)



-- Se modifica la tabla contactos para que el campo correo_electronico sea clave unica 

alter table contactos add unique(correo_electronico);

--Comprobación de que no admite correo electrónico duplicado 
insert into contactos(nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values
('LILIANA','GAMEZ','CARICUAO','lg@gmail.com','02191234567','04148876543','02127345678');

-- Creación de índices
alter table contactos add index (correo_electronico); 


-- CLAVES FORANEAS 
-- Declaración de la tabla Proveedores 
create table proveedores(
    id integer AUTO_INCREMENT,
    nombre varchar(30),
    direccion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

--DECLARACION DE LA TABLA DE PRODUCTOS
    create table productos(
    id integer AUTO_INCREMENT,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id),
    index(proveedor_id),
    foreign key(proveedor_id) references proveedores(id)
);


--CARGAS DE DATOS EN LA TABLA 
insert into proveedores(nombre, direccion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');

insert into productos(proveedor_id, nombre, precio, cantidad)
values
(1, 'NEVERA', 500.25, 6),
(1, 'COCINA', 300.75, 12),
(1, 'LAVADORA', 350.50, 3),
(1, 'SECADORA', 750.00, 3),
(2, 'AIRE ACONDICIONADO', 450.75, 4),
(2, 'COCINA ELECTRICA', 45.00, 2),
(3, 'LAVADORA', 700.00, 6),
(3, 'CONGELADOR', 250.75, 5),
(4, 'NEVERA', 650.25, 12),
(4, 'COCINA', 280.75, 6),
(4, 'LAVADORA', 450.50, 5),
(4, 'SECADORA', 550.00, 5);


--codigo por revisar select from * nombre de la tabla.

-- PRUEBAS DE INTEGRIDAD REFERENCIAL DE LOS DATOS
-- PRUEBA 1
-- SE INTENTA CREAR UN REGISTRO EN LA TABLA PRODUCTOS
-- CON UN VALOR PARA EL CAMPO proveedor_id, QUE NO EXISTE
-- EN LA TABLA proveedores
-- proveedor_id == 9 NO EXISTE
insert into productos(proveedor_id, nombre, precio, cantidad)
values
(9, 'NEVERA', 500.25,6),

--RESULTADO
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`bd_ytzali_20250830`.`productos`, CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`))

-- PRUEBA 2
--SE INTENTA BORRAR UN REGISTRO DE PROVEEDORES, DEL CUAL DEPENDEN REGISTROS EN LA TABLA DE PRODUCTOS
-- id == 1 (GE: GENERAL ELECTRIC)
delete from proveedores where id = 1,

--RESULTADO 
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`bd_ytzali_20250830`.`productos`, CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`))


--PRUEBA 3
--Se intenta actualizar el valor del campo id, en la tabla proveedores, del cual dependen registros en la tabla productos
update proveedores set id = 11 where id = 1;

--RESULTADO 
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`bd_ytzali_20250830`.`productos`, CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`))

--Actualización y modificación en cascada
-- Declaración de la tabla Proveedores1
create table proveedores1(
    id integer AUTO_INCREMENT,
    nombre varchar(30),
    direccion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

--DECLARACION DE LA TABLA DE PRODUCTOS1
    create table productos1(
    id integer AUTO_INCREMENT,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id),
    index(proveedor_id),
    foreign key(proveedor_id) references proveedores1(id) on delete cascade on update CASCADE
);

--CARGAS DE DATOS EN LA TABLA 
insert into proveedores1(nombre, direccion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');

insert into productos1(proveedor_id, nombre, precio, cantidad)
values
(1, 'NEVERA', 500.25, 6),
(1, 'COCINA', 300.75, 12),
(1, 'LAVADORA', 350.50, 3),
(1, 'SECADORA', 750.00, 3),
(2, 'AIRE ACONDICIONADO', 450.75, 4),
(2, 'COCINA ELECTRICA', 45.00, 2),
(3, 'LAVADORA', 700.00, 6),
(3, 'CONGELADOR', 250.75, 5),
(4, 'NEVERA', 650.25, 12),
(4, 'COCINA', 280.75, 6),
(4, 'LAVADORA', 450.50, 5),
(4, 'SECADORA', 550.00, 5);


-- PRUEBA PARA ELIMINACIÓN Y ACTUALIZACIÓN EN CASCADA

-- PRUEBA 1
-- SE INTENTA BORRAR UN REGISTRO DE PROVEEDORES1, DEL CUAL
-- DEPENDEN REGISTROS EN LA TABLA DE PRODUCTOS1
-- id == 1 (GE: GENERAL ELECTRIC)
delete from proveedores1 where id = 1;

-- PRUEBA 3
-- SE INTENTA ACTUALIZAR EL VALOR DEL CAMPO id, EN LA TABLA
-- PROVEEDORES1, DEL CUAL DEPENDEN REGISTROS EN LA TABLA 
-- productos1
update proveedores1 set id = 22 where id = 2;

--Consulta combinada de ambas tablas
select proveedores.nombre,
productos.nombre,
productos.precio,
productos.cantidad
from proveedores, productos
where proveedores.id = productos.proveedor_id;

--Definicion de alias para tablas y campos
select A.nombre as proveedor,
B.nombre as producto,
B.precio,
B.cantidad
from proveedores as A, productos as B
where A.id = B.proveedor_id;

-- CREACIÓN DE VISTA
create view vista_proveedores_productos as
select A.nombre as proveedor,
B.nombre as producto,
B.precio,
B.cantidad
from proveedores as A, productos as B
where A.id = B.proveedor_id;




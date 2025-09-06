insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
values
('YOLANDA','TORTOZA','02123741234','CATIA LA MAR','yt@hotmail.com'),
('LIBIA','COLS','02123534100','GUARENAS','lc@gmail.com'),
('HERDRINA','MONASTERIOS','02126741234','LOS VALLES DEL TUY','hm@hotmail.com');


-- PRUEBA PARA VERIFICAR QUE CAMPO id ES ÚNICO:

insert into contactos(id,nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values

(1,'LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');

MariaDB [bd_profesor_20250830]> insert into contactos(id,nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values

    -> (1,'LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');

ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'
MariaDB [bd_profesor_20250830]>


-- En este caso el registro sera almacenado dado que el campo id se generara automaticamente, en vista de que se auto_increment

insert into contactos(nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values

('LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');

-- Se modifica la tabla de contactos para que el campo correo_electronico sea calve unica

alter table contactos add unique(correo_electronico);

-- Comprobacion de que no admite correo electronico duplicado

insert into contactos(id,nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values

(1,'Liliana','Gamez','Caricuao','lg@gmail.com','02121234567','04149876543','02122345678');

-- Creacion de indices, se creo un indice para el correo electronico.

alter table contactos add index(correo_electronico);

--Claves foraneas, declaracion de la tabla proveedoras 

Create table proveedores(

    id integer auto_increment,
    nombre varchar(30),
    apellido text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

-- Declaracion de la tabla de productos

create table productos(

    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id),
    index(proveedor_id),
    foreign key(proveedor_id) references proveedores(id)

);

--Carga de datos en las tablas

Insert into proveedores(nombre, direccion, correo_electronico, telefono)

values

('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');

insert into productos(proveedor_id, nombre, precio, cantidad)

values

(1, 'nevera', 500.25,6),
(1, 'cocina a gas', 300.74,12),
(1, 'lavadora', 350.39,3),
(1, 'secadora', 750,00.3),
(2, 'Aire acondicionado', 450,75.4),
(2, 'cocina electrica', 425.00,2),
(3, 'lavadora', 700.00,6),
(3, 'congelador', 250.74,6),
(4,'nevera',650.25,9),
(4,'cocina a gas',280.75,6),
(4,'lavadora',450.50,5),
(4,'secadora',550.00,5);

--Pruebas de integridad referencial de los datos

-- Prueba N°1: se intenta crear un registro en la tabla productor con un valor para el campo proveedor_id; que no existe en la tabla proveedores.

-- Provedor_id == 9 no existe

insert into productos(proveedor_id, nombre, precio, cantidad)

value

(9, 'nevera', 500.25,6);

--Prueba N°2: Se intenta eliminar un registro de proveedores del cual dependen registros en la tabla de productos.

-- id == 1 (GE: general electric)

delete from proveedores where id = 1;

--Prueba N°3: se intenta actualizar el valor del campo id en la tabla proveedores del cual dependen registro de la tabla producto

update proveedores set id = 11 where id = 1;

-- Actualizacion y modificacion en cascada

--Claves foraneas, declaracion de la tabla proveedores1

Create table proveedores1(

    id integer auto_increment,
    nombre varchar(30),
    direccion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

-- Declaracion de la tabla de productos1

create table productos1(

    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id),
    index(proveedor_id),
    foreign key(proveedor_id) references proveedores1(id) on delete cascade on update cascade 

);

Insert into proveedores1(nombre, direccion, correo_electronico, telefono)

values

('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');

insert into productos1(proveedor_id, nombre, precio, cantidad)

values

(1, 'nevera', 500.25,6),
(1, 'cocina a gas', 300.74,12),
(1, 'lavadora', 350.39,3),
(1, 'secadora', 750,00.3),
(2, 'Aire acondicionado', 450,75.4),
(2, 'cocina electrica', 425.00,2),
(3, 'lavadora', 700.00,6),
(3, 'congelador', 250.74,6),
(4,'nevera',650.25,9),
(4,'cocina a gas',280.75,6),
(4,'lavadora',450.50,5),
(4,'secadora',550.00,5);

-- Prueba para la eliminacion y actualizacion de cascada

-- PRUEBA 1
-- SE INTENTA BORRAR UN REGISTRO DE PROVEEDORES1, DEL CUAL
-- DEPENDEN REGISTROS EN LA TABLA DE PRODUCTOS1
-- id == 1 (GE: GENERAL ELECTRIC)

delete from proveedores1 where id = 1;

-- PRUEBA 2
-- SE INTENTA ACTUALIZAR EL VALOR DEL CAMPO id, EN LA TABLA
-- PROVEEDORES1, DEL CUAL DEPENDEN REGISTROS EN LA TABLA 
-- productos1

update proveedores1 set id = 22 where id = 2;

-- CONSULTA COMBINADA DE AMBAS TABLAS

SELECT A.nombre as proveedor,
       B.nombre as prodictor,
       B.precio,
       B.cantidad
       from proveedores as a, productos as b 
       where A.id = B.proveedor_id;

-- CREACIÓN

create view vista_proveedores_productos as
SELECT A.nombre as proveedor,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;





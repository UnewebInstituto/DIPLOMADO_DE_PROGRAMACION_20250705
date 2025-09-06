-- PRUEBA PARA VERIFICAR QUE CAMPO ID ES ÚNICO
insert into contactos(nombre, apellido, direccion, correo_electronico, telf_hab, telf_cel, telf_ofi) values
(1,'LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');

MariaDB [bd_profesor_20250830]> insert into contactos(id,nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values
    -> (1,'LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'
MariaDB [bd_profesor_20250830]>


-- EN ESTE CASO EL REGISTRO SERÁ ALMACENADO DADO QUE 
-- EL CAMPO ID SE GENERARÁ AUTOMÁTICAMENTE, EN VISTA
-- DE QUE AUTO_INCREMENT
insert into contactos(nombre,apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values
('LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');

--SE MODIFICA LA TABLA contactos PARA QUE EL CAMPO correo_electronico  SEA ÚNICA
alter table contactos add unique(correo_electronico);

-- COMPROBACIÓN DE QUE NO ADMITE CORREO ELECTRÓNICO DUPLICADO
insert into contactos(nombre, apellido, direccion, correo_electronico, telf_hab, telf_cel, telf_ofi) values
('LILIANA','GAMEZ','CARICUAO','lg@gmail.com','02191234567','04148876543','02127345678');

-- CREACIÓN DE ÍNDICES
alter table contactos add index(correo_electronico);

--CLAVES FORÁNEAS
--DECLARACIÓN DE LA PROVEEDORES
create table proveedores(
    id integer AUTO_INCREMENT,
    nombre varchar(30),
    direccion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

--DECLARACIÓN DE LA TABLA PRODUCTOS
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

-- CARGA DE DATOS EN LAS TABLAS
insert into proveedores(nombre, direccion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');

insert into productos(proveedor_id, nombre, precio, cantidad)
values
(1,'NEVERA',500.25,6),
(1,'COCINA A GAS',300.75,12),
(1,'LAVADORA',350.50,3),
(1,'SECADORA',750.00,3),
(2,'AIRE ACONDICIONADO',450.75,4),
(2,'COCINA ELECTRICA',425.00,2),
(3,'LAVADORA',700.00,6),
(3,'CONGELADOR',250.75,5),
(4,'NEVERA',650.25,9),
(4,'COCINA A GAS',280.75,6),
(4,'LAVADORA',450.50,5),
(4,'SECADORA',550.00,5);

--PRUEBAS DE INTEGRIDAD REFERENCIAL DE LOS DATOS
--PRUEBA 1
--SE INTETNTA CREAR UN REGISTRO EN LA TABLA PRODUCTOS CON UN VALOR PARA EL CAMPO proveedor_id QUE NO EXISTE EN LA TABLA proveedores
--proveedor_id== 9 NO EXISTE
insert into productos(proveedor_id, nombre, precio, cantidad)
values
(9, 'NEVERA', 500.25, 6);

--RESPUESTA
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`bd_barbara_20250830`.`productos`, CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`))
MariaDB [bd_barbara_20250830]>

--PRUEBA 2
--SE INTENTA BORRAR UN REGISTRO DE PROVEEDORES DEL CUAL DEPENDE REGISTROS EN LA TABLA DE PRODUCTOS
--id == (GE: GENERAL ELECTRIC)
delete from proveedores where id = 1;

--RESPUESTA
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`bd_barbara_20250830`.`productos`, CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`))
MariaDB [bd_barbara_20250830]>


--PRUEBA 3
-- SE INTENTA ACTUALIZAR EL VALOR DEL CAMPO id, EN LA TABLA PROVEEDORES, DEL CUAL DEPENDEN REGISTROS EN LA TABLA productos
update proveedores set id = 11 where id = 1;

--RESPUESTA
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`bd_barbara_20250830`.`productos`, CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`))
MariaDB [bd_barbara_20250830]>

--ACTUALIZACIÓN Y MODIFICACIÓN EN CASCADA

-- CLAVES FORANEAS
-- DECLARACIÓN DE LA TABLA PROVEEDORES1
create table proveedores1(
    id integer AUTO_INCREMENT,
    nombre varchar(30),
    direccion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

-- DECLARACIÓN DE LA TABLA PRODUCTOS1
create table productos1(
    id integer AUTO_INCREMENT,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id),
    index(proveedor_id),
    foreign key(proveedor_id) references proveedores1(id) on delete cascade on update cascade
);

-- CARGA DE DATOS EN LAS TABLAS
insert into proveedores1(nombre, direccion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');

insert into productos1(proveedor_id, nombre, precio, cantidad)
values
(1,'NEVERA',500.25,6),
(1,'COCINA A GAS',300.75,12),
(1,'LAVADORA',350.50,3),
(1,'SECADORA',750.00,3),
(2,'AIRE ACONDICIONADO',450.75,4),
(2,'COCINA ELECTRICA',425.00,2),
(3,'LAVADORA',700.00,6),
(3,'CONGELADOR',250.75,5),
(4,'NEVERA',650.25,9),
(4,'COCINA A GAS',280.75,6),
(4,'LAVADORA',450.50,5),
(4,'SECADORA',550.00,5);


--PRUEBA 2
--SE INTENTA BORRAR UN REGISTRO DE PROVEEDORES DEL CUAL DEPENDE REGISTROS EN LA TABLA DE PRODUCTOS
--id == (GE: GENERAL ELECTRIC)
delete from proveedores1 where id = 1;

--RESPUESTA
Query OK, 1 row affected (0.001 sec)

--PRUEBA 3
-- SE INTENTA ACTUALIZAR EL VALOR DEL CAMPO id, EN LA TABLA PROVEEDORES, DEL CUAL DEPENDEN REGISTROS EN LA TABLA productos
update proveedores1 set id = 22 where id = 2;

--RESPUESTA
Query OK, 1 row affected (0.005 sec)
Rows matched: 1  Changed: 1  Warnings: 0


--CONSULTA COMBINADA DE AMBAS TABLAS 
select proveedores.nombre,
        productos.nombre,
        productos.precio,
        productos.cantidad
        from proveedores, productos
        where proveedores.id = productos.proveedor_id;

-- DEFINICIÓN DE ALIAS PARA TABLAS Y CAMPOS
select A.nombre as proveedor,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;

--CREACIÓN
create view vista_proveedores_productos as
select A.nombre as proveedor,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;

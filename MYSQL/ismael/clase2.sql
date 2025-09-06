--prueba para verificar que el campo id es unico :

insert into contactos( id, NOMBRE , apellido,direcion,correo_electronico,tlf_cel, telefono_hab,telefono_ofic) values
(1,'laura','gonzales','dos caminos','jh@gmail.com','0234567321','023451235','04124556789');

--errol
MariaDB [bd_ismael_20250830]> insert into contactos( id, NOMBRE , apellido,direcion,correo_electronico,tlf_cel, telefono_hab,telefono_ofic) values
    -> (1,'laura','gonzales','dos caminos','jh@gmail.com','0234567321','023451235','04124556789');
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'

--en este caso el registro sera almacenado dado que 
--el campo id se genera automaticamente, en vista 
--de que auto_increment

insert into contactos(NOMBRE , apellido,direcion,correo_electronico,tlf_cel, telefono_hab,telefono_ofic) values
('laura','gonzales','dos caminos','jh@gmail.com','0234567321','023451235','04124556789');

--resutado
MariaDB [bd_ismael_20250830]> insert into contactos(NOMBRE , apellido,direcion,correo_electronico,tlf_cel, telefono_hab,telefono_ofic) values
    -> ('laura','gonzales','dos caminos','jh@gmail.com','0234567321','023451235','04124556789');
Query OK, 1 row affected (0.001 sec)


-- se modifica la tabla contactos para el que el campo correo_electronico
--sea unica 

alter table contactos add unique (correo_electronico);

--comprobacion de que no admite correo duplicado 

insert into contactos(NOMBRE , apellido,direcion,correo_electronico,tlf_cel, telefono_hab,telefono_ofic) values
('paula','volja','recreo','jh@gmail.com','0234567321','023451235','04124556789');


--creacion de indices
--se creo un indice para el correo electronico 
alter table contactos add index(correo_electronico);

---claves foraneas 
--declaracion de la tabla proveedores
create table proveedores(
    id integer auto_increment,
    nombre varchar(30),
    direcion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

--declaracion de la tabla productos
create table productos(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id),
    foreign key(proveedor_id) references proveedores(id)
);


-- CARGA DE DATOS EN LAS TABLAS
INSERT INTO proveedores(nombre, direccion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');

INSERT INTO productos(proveedor_id, nombre, precio, cantidad)
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


--prueba de integridad referencial de los datos 
--prueba 1
--se intenta creal un registro en la tabla productos 
--con un valor para el campo proveedor_id que no existe 
--en la tabla proveedores 
--proveedor_id == 9 no existe 

insert into productos(proveedor_id,nombre,precio,cantidad)
values
(9,'nevera',500.25,6);

--prueba dos 
--se intenta borrar un registro de proveedores del cual 
--dependen registro en la tabla de productos 
--id == 1 (gen: general electric)
delete from proveedores where id = 1;

--prueba3
--se intenta actualizar el valor del campo id ,en la tabla 
--proveedores , del cual depende registro en la tabla 
--productos
update proveedores set id = 11 where id =1;


--clave foranea 
--declaracion de la tabla proveedores
create table proveedores1(
    id integer auto_increment,
    nombre varchar(30),
    direcion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

--declaracion de la tabla productos
create table productos1(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id),
    foreign key(proveedor_id) references proveedores(id)on delete cascade on update cascade
);

-- CARGA DE DATOS EN LAS TABLAS
INSERT INTO PROVEEDORES1(nombre, direccion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');

INSERT INTO PRODUCTOS1(proveedor_id, nombre, precio, cantidad)
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


--prueba para eliminacion y actualizacion en cascada 
--se intenta actualizar el valor del campo


delete from proveedores1 where id =1;

--prueba2
UPDATE proveedores1 set id = 22 where id = 2;

---cosulta combinadas de ambas tablas 
select proveedores.nombre,
       productos.nombre,
       productos.precio,
       productos.cantidad
       from proveedores, productos
       where proveedor_id = productos.proveedor_id;



--definicion de alias para la tabla y campo 
---cosulta combinadas de ambas tablas 
select a.nombre as proveedor,
       b.nombre as producto,
       b.precio,
       b.cantidad
       from proveedores as productos as b
       where a.id = b.proveedor_id;

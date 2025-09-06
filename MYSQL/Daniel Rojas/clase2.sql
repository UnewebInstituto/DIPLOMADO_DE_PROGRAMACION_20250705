--PRUEBA PARA VERIFICAR QUE CAMPO ID, ES UNICO:

insert into contactos(id,nombre,apellido,direccion,correo_electronico,telf_cel,telf_p,telf_of) values
(1,'sorgalim','pereira','petare','sorga365@gmail.com','04143654787','02125986978','02126987896');

--En este caso el registro sera almacenado dado que 
--el campo id se generara 
--prueba 2

insert into contactos(nombre,apellido,direccion,correo_electronico,telf_cel,telf_p,telf_of) values
('Johana','Mujica','Los Guayos','johana_m365@gmail.com','04143654787','02125986978','02126987896');



-- SE MODIFICA LA TABLA CONTACTOS, PARA QUE EL CAMPO CORREO_ELECTRONICO SEA --CLAVE UNICA.

alter table contactos add unique(correo_electronico);


--COMPROBACION DE QUE NO ADMITE CORREO ELECTRONICO DUPLICADO
insert into contactos(nombre,apellido,direccion,correo_electronico,telf_cel,telf_p,telf_of) values
('sorgalim','pereira','petare','yr@gmail.com','04143657887','02125965978','02126987896');

--CREACION DE INDICES
-- SE CREO INDICE PARA EL CORREO ELECTRONICO


alter table contactos add index(correo_electronico);


--CLAVES FORANEAS
--DECLARACION DE LA TABLA PROVEEDORES 
create table proveedores(
    id integer auto_increment,
    nombre varchar (30),
    direccion text,
    telefono varchar (30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

--DECLARACION DE LA TABLA PRODUCTOS
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


--PRUEBAS DE INTEGRIDAD REFERENCIAL DE LOS DATOS 
--PRUEBA 1
--SE INTENTA CREAR UN REGISTRO EN LA TABLA PRODUCTOS 
--CON UN VALOR PARA EL CAMPO PROVEEDOR_ID, QUE NO EXISTE 
--EN LA TABLA PROVEEDORES.
-- PROVVEDOR_ID == 8 NO EXISTE
INSERT INTO productos(proveedor_id, nombre, precio, cantidad)
values
(8,'NEVERA',500.25,6);

--PRUEBA 2 
--SE INTENTA BORRAR UN REGISTRO DE PROVEEDORES, DEL CUAL 
--DEPENDE REGISTROS EN LA TABLA DE PRODUCTOS
--id == 1 (GE: GENERAL ELECTRIC)
delete from proveedores where id = 1;


--PRUEBA 3
--SE INTENTA ACTUALIZAR EL VALOR DEL CAMPO ID, EN LA TABLA 
--PROVEEDORES, DEL CUAL DEPENDE REGISTROS EN LA TABLA 
-- PRODUCTOS 

update proveedores set id = 11 where id = 1;

--PRUEBA 4
--ACTUALIZACION Y MODIFICACION EN CASCADA 
--CLAVES FORANEAS
--DECLARACION DE LA TABLA PROVEEDORES 
create table proveedores1(
    id integer auto_increment,
    nombre varchar (30),
    direccion text,
    telefono varchar (30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

--DECLARACION DE LA TABLA PRODUCTOS
create table productos1(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id),
    index(proveedor_id),
    foreign key(proveedor_id) references proveedores1(id) ON delete cascade on update cascade 
);


insert INTO proveedores1(nombre, direccion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');

INSERT INTO productos1(proveedor_id, nombre, precio, cantidad)
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

--prueba para eliminicacion y actualizacion en cascada 

--PRUEBA 2 
--SE INTENTA BORRAR UN REGISTRO DE PROVEEDORES, DEL CUAL 
--DEPENDE REGISTROS EN LA TABLA DE PRODUCTOS
--id == 1 (GE: GENERAL ELECTRIC)
delete from proveedores1 where id = 1;


--PRUEBA 3
--SE INTENTA ACTUALIZAR EL VALOR DEL CAMPO ID, EN LA TABLA 
--PROVEEDORES, DEL CUAL DEPENDE REGISTROS EN LA TABLA 
-- PRODUCTOS1 

update proveedores1 set id = 22 where id = 2;

--consulta conbinadas de ambas tablas 

select proveedores.nombre,
       productos.nombre,
       productos.precio,
       productos.cantidad,
       from proveedores, productos
       where proveedor_id = productos.proveedor_id;

--definicion de alias para tablas y campos
SELECT A.nombre as proveedor,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;


-- CREACIÓN
create view vista_proveedores_productos as
SELECT A.nombre as proveedor,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;
-- Prueba para verificar para ver que campo id es único
insert into contactos(id, nombre, apellido, direccion,correo_electronico, telf_hab, telf_ofi,telf_cel)
values 
(1, "Laura", "Gonzalez", "Dos Caminos", "lg@gmail.com", "02124685739", "04147935148", "02129543876");

-- Resultado
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'

-- En este caso, el registro será almacenado, dado que el campo id se generará automáticamente 
insert into contactos(nombre, apellido, direccion,correo_electronico, telf_hab, telf_ofi,telf_cel)
values 
("Laura", "Gonzalez", "Dos Caminos", "lg@gmail.com", "02124685739", "04147935148", "02129543876");

-- Se modifica la tabla contactos para que el campo correo_electronico sea clave unica

alter table contactos add unique(correo_electronico);

-- Comprobacion que no admite correo electronico duplicado
insert into contactos(nombre, apellido, direccion,correo_electronico, telf_hab, telf_ofi,telf_cel)
values 
("Mariangel", "Orosco", "Dos Caminos", "mkom@gmail.com", "02124845739", "04147935628", "02129543837");

-- Creacion de Indices
alter table contactos add index(correo_electronico);

-- Clave Foranea
-- Declaración de la tabla Proveedores

create table proveedores1(
    id integer auto_increment,
    nombre varchar(30),
    direccion text,
    telefono varchar(11),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
    );

-- Declaración de la tabla Productos

create table productos1(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id),
    index(proveedor_id),
    foreign key(proveedor_id) references proveedores(id)
);

-- Carga de datos en las tablar
insert into proveedores(nombre, direccion, correo_electronico, telefono)
values
("General Electrics", "Av. Lecuna", "info@ge.com", "02124589763"),
("Mabe", "Av. Romulo Gallegos", "info@mabe.com", "02124597638"),
("Whirpool", "Av. Francisco de Miranda", "info@whirpoll.com", "02126587935"),
("Siragon", "Av. Libertidar", "info@siragon.com", "02125479821");

insert into productos(proveedor_id,  nombre, precio, cantidad)
values
(1, "nevera", 500.25, 6),
(1, "cocina a gas", 300.75, 12),
(1, "lavadora", 350.50, 3),
(1, "secadora", 750.00, 5),
(2, "aire acondicionado", 450.75, 4),
(2, "cocina electrica", 425.00, 2),
(3, "lavadora", 700.00, 6),
(3, "congelador", 250.75, 6),
(4, "nevera", 650.25, 5),
(4, "cocina a gas", 280.75, 6),
(4, "lavadora", 450.50, 5),
(4, "secadora", 550.00, 8);

-- Pruebas de integridad referencial de los datos
-- Prueba 1
-- Se intenta crear un registro en la tabla productos con un valor para el campo proveedor_id que no existe en la tabla proveedores
insert into productos(proveedor_id,  nombre, precio, cantidad)
values
(9, "nevera", 500.25, 6);

-- Resultado
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`bd_airon_20250830`.`productos`, CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`))

-- Prueba 2
-- Se intenta borrar un registro de proveedores del cual dependen registros en la tabla de productos

delete from proveedores where id = 1;

-- Resultado
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`bd_airon_20250830`.`productos`, CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`))

-- Prueba 3
-- Se intenta actualizar el valor del campo id en la tabla proveedores del cual dependen registros en la tabla productos
update proveedores set id = 11 where id = 1;

-- Resultado
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`bd_airon_20250830`.`productos`, CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`))

-- Actualizacion y Modificacion en Cascada
-- Declaración de la tabla Proveedores

create table proveedores1(
    id integer auto_increment,
    nombre varchar(30),
    direccion text,
    telefono varchar(11),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
    );

-- Declaración de la tabla Productos

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

-- Carga de datos en las tablar
insert into proveedores1(nombre, direccion, correo_electronico, telefono)
values
("General Electrics", "Av. Lecuna", "info@ge.com", "02124589763"),
("Mabe", "Av. Romulo Gallegos", "info@mabe.com", "02124597638"),
("Whirpool", "Av. Francisco de Miranda", "info@whirpoll.com", "02126587935"),
("Siragon", "Av. Libertidar", "info@siragon.com", "02125479821");

insert into productos1(proveedor_id,  nombre, precio, cantidad)
values
(1, "nevera", 500.25, 6),
(1, "cocina a gas", 300.75, 12),
(1, "lavadora", 350.50, 3),
(1, "secadora", 750.00, 5),
(2, "aire acondicionado", 450.75, 4),
(2, "cocina electrica", 425.00, 2),
(3, "lavadora", 700.00, 6),
(3, "congelador", 250.75, 6),
(4, "nevera", 650.25, 5),
(4, "cocina a gas", 280.75, 6),
(4, "lavadora", 450.50, 5),
(4, "secadora", 550.00, 8);

-- Prueba para eliminacion y actualizacion en cascada
-- Prueba 1
-- Se intenta borrar un registro de proveedores1 del cual dependen registros en la tabla de productos

delete from proveedores where id = 1;


-- Prueba 2
-- Se intenta actualizar el valor del campo id en la tabla proveedores del cual dependen registros en la tabla productos2
update proveedores set id = 22 where id = 2;

-- Consulta combinada de ambas tablas
select proveedores.nombre, productos.nombre, productos.precio, productos.cantidad from proveedores, productos where proveedores.id = productos.proveedor_id;

-- Definicion de alias para tablas y campos
select A.nombre as proveedor,
       B.nombre as producto, 
       B.precio, 
       B.cantidad 
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;

-- Creacion de vista
create view vista_proveedores_productos as
select A.nombre as proveedor,
       B.nombre as producto, 
       B.precio, 
       B.cantidad 
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;
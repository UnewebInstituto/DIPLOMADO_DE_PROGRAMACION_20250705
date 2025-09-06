--prueba para verificar que campo id es unico :
insert into contactos(id,nombre, apellido,direccion,correo_electronico,telefono_hab,telefono_cel,telefono_ofi) values
( 1,'LAURA','GONZALES','DOS CAMINOS','lg@gmail.com','02121234567','0414498765432','0121123456')
--en este caso el registro sera almacenado dado que
--el campo ID se genera automaticamente, en vista 
--de que auto increment
insert into contactos(nombre, apellido,direccion,correo_electronico,telefono_hab,telefono_cel,telefono_ofi) values
( 1,'LAURA','GONZALES','DOS CAMINOS','lg@gmail.com','02121234567','0414498765432','0121123456')



--se modifica la tabla contacto para que el camppo correo_electonico sea ha clave unica
alter table contactos add unique(correo_electronico);
--comparacion de que no admite correo electronico dublicado
insert into contactos(nombre, apellido,direccion,correo_electronico,telf_hab,telf_cel,telf_ofi) values
('LILIANA','GAMEZ','CARICUAO','lc@gmail.com','02121234567','0414498765432','0121123456');
--creacion de indices
alter table contactos add index(correo_electronico);
--claves foraneas
--declaracion de la tabla provedorres
create table proveedores(
    id integer auto_increment,
    nombre varchar(30),
    direccion text,
    telefono varchar(30),
    correo_electronico text,
    primary key (id),
    unique(correo_electronico)
    );
    --declaracion de tabla producctos
    create table productos(
        id integer auto_increment,
        proveedor_id integer,
        nombre varchar(30),
        precio decimal (13,2),
        cantidad integer,
        primary key(id),
        index(proveedor_id),
        foreign key(proveedor_id) references proveedores(id)
        );
        --carga de datos en la tablas
        insert into proveedores( nombre, direccion,correo_electronico,telefono)
        values
        ('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');
insert into productos(proveedor_id,nombre, precio,cantidad)
value
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
--pruebas de integridad refefrencial de los datos
-- prueba 1
--se intenta crear un registro en la tabla productos
--con un valor el campo proveedor_id que no existe en la tabla
--en la tabla proveedores
insert into productos(proveedor_id,nombre, precio,cantidad)
value
(9,'NEVERA',500.25,6);
--PRUEBA 2
--se intenta borrar un dregistro de proveedores
-- depende registros en la tabla de productos
delete from proveedores where id =1;
        

--prueba 3
--se intenta actualizar el alor del campo id, en la tabla
--proveedores, del cual depende registros en la tabla 
--productos
update proveedores set id = 11 where id = 1;
--actualizacio y modificacion en cascada



create table proveedores1(
    id integer auto_increment,
    nombre varchar(30),
    direccion text,
    telefono varchar(30),
    correo_electronico text,
    primary key (id),
    unique(correo_electronico)
    );
    --declaracion de tabla producctos
    create table productos1(
        id integer auto_increment,
        proveedor_id integer,
        nombre varchar(30),
        precio decimal (13,2),
        cantidad integer,
        primary key(id),
        index(proveedor_id),
        foreign key(proveedor_id) references proveedores(id)
        );
    --declaracion de tabla producctos
    create table productos1(
        id integer auto_increment,
        proveedor_id integer,
        nombre varchar(30),
        precio decimal (13,2),
        cantidad integer,
        primary key(id),
        index(proveedor_id),
        foreign key(proveedor_id) references proveedores1(id) on  delete cascade 
        on update cascade
        );--carga de datos en la tablas
        insert into proveedores1( nombre, direccion,correo_electronico,telefono)
        values
        ('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234');
insert into productos1(proveedor_id,nombre, precio,cantidad)
value
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
--PRUEBA 1
--se intenta borrar un dregistro de proveedores
-- depende registros en la tabla de productos1
--id --1 (GE: GENERAL ELECTRIC)
delete from proveedores1 where id =1;
        

--prueba 2
--se intenta actualizar el alor del campo id, en la tabla
--proveedores, del cual depende registros en la tabla 
--productos
update proveedores1 set id = 22 where id = 2;
--actualizacio y modificacion en cascada
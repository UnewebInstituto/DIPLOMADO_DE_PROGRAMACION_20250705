--diferente tipos de join
--inner join
select proveedores2.NOMBRE as provedor,
productos2.NOMBRE as productos,
productos2.precio as precio,
productos2.cantidad as existencia
from proveedores2
inner join productos2
on proveedores2.id = productos2.proveedor_id;

--declaracion de la tabla productos


create table proveedores2(
    id integer auto_increment,
    nombre varchar(30),
    direcion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);



create table productos2(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id)
);

INSERT INTO proveedores2(nombre, direcion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@query.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR'12,'info@sirangon.com','02127531234'),
('Damasco','AV. casanova','ihgb@t31.com','02125053123');

INSERT INTO productos2(proveedor_id, nombre, precio, cantidad)
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
(4,'SECADORA',550.00,5),
(99,'NEVERA',650.25,9),
(100,'COCINA A GAS',280.75,6),
(101,'LAVADORA',450.50,5),
(102,'SECADORA',550.00,5);

--vista a partir de la consurta  inner join
CREATE VIEW view_inner_join_proveedores2_productos2 as 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       inner join productos2
       on proveedores2.id = productos2.proveedor_id;


--lett join 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       left join productos2
       on proveedores2.id = productos2.proveedor_id;

--vista  de left join
CREATE VIEW view_left_join_proveedores2_productos2 as 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       left join productos2
       on proveedores2.id = productos2.proveedor_id;

--right join
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       right join productos2
       on proveedores2.id = productos2.proveedor_id;
--vista  de right join
CREATE VIEW view_right_join_proveedores2_productos2 as 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       right join productos2
       on proveedores2.id = productos2.proveedor_id;

--full join
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       left join productos2
       on proveedores2.id = productos2.proveedor_id
    union   
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       right join productos2
       on proveedores2.id = productos2.proveedor_id;

vista de full join
CREATE VIEW view_full_join_proveedores2_productos2 as
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       left join productos2
       on proveedores2.id = productos2.proveedor_id
    union   
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       right join productos2
       on proveedores2.id = productos2.proveedor_id;

-------------
--nombre base de datos 

bd_catalago_ismael


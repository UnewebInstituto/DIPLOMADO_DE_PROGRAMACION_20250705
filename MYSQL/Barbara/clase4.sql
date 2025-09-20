create table proveedores2(
    id integer AUTO_INCREMENT,
    nombre varchar(30),
    direccion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

--DECLARACIÓN DE LA TABLA PRODUCTOS
create table productos2(
    id integer AUTO_INCREMENT,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id)
);


INSERT INTO proveedores2(nombre, direccion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@ge.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sirangon.com','02127531234'),
('LG','AV. PRESIDENTE MEDINA','info@lg.com','02123631234'),
('DAMASCO','AV. ROOSVELT','info@damasco.com','02124062140'),
('HIER','AV. PPAL. DEL VALLE','info@hier.com','02127531234');


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


-- INNER JOIN
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       inner join productos2
       on proveedores2.id = productos2.proveedor_id;

-- vista a partir de la consulta inner join
CREATE VIEW view_inner_join_proveedores2_productos2 as 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       inner join productos2
       on proveedores2.id = productos2.proveedor_id;


-- LEFT JOIN
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       left join productos2
       on proveedores2.id = productos2.proveedor_id;

-- vista a partir de la consulta left join
CREATE VIEW view_left_join_proveedores2_productos2 as 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       left join productos2
       on proveedores2.id = productos2.proveedor_id;


-- RIGHT JOIN
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       right join productos2
       on proveedores2.id = productos2.proveedor_id;

-- vista a partir de la consulta right join
CREATE VIEW view_right_join_proveedores2_productos2 as 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       right join productos2
       on proveedores2.id = productos2.proveedor_id;

-- FULL JOIN
select proveedores2.nombre as proveedor,
productos2.nombre as producto,
productos2.precio as precio,
productos2.cantidad as existencia
from proveedores2
left join productos2
on proveedores2.id = productos2.proveedor_id

union 

select proveedores2.nombre as proveedor,
productos2.nombre as producto,
productos2.precio as precio,
productos2.cantidad as existencia
from proveedores2
RIGHT join productos2
on proveedores2.id = productos2.proveedor_id;

-- vista a partir de la consulta full join
CREATE VIEW view_full_join_proveedores2_productos2 as 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       left join productos2
       on proveedores2.id = productos2.proveedor_id
UNION
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       right join productos2
       on proveedores2.id = productos2.proveedor_id;



-- PARA LEVANTAR PHPMYADMIN
-- http://localhost/phpmyadmin/
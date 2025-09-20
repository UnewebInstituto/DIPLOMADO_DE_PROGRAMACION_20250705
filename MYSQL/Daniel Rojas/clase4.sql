create table proveedores2(
    id integer auto_increment,
    nombre varchar (30),
    direccion text,
    telefono varchar (30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);


--DECLARACION DE LA TABLA PRODUCTOS
create table productos2(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id)
);

INSERT INTO proveedores2(nombre, direccion, correo_electronico, telefono)
values
('GE','AV. LECUNA','info@maria.com','02124431234'),
('MABE','AV. RÓMULO GALLEGOS','info@mabe.com','02122631234'),
('WHIRPOOL','AV. FRANCISCO DE MIRANDA','info@whirpool.com','02122062140'),
('SIRAGON','AV. LIBERTADOR','info@sira.com','02127531234'),
('DAMASCO','AV. PRADOS DEL ESTE','info@muy.com','02124431234'),
('HIER','AV. ANDRES BELLO','info@hier.com','02122631234'),
('SIRAGON','AV. cCANDELARIA','info@sirangon.com','02127531234');

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

--inner join

select proveedores2.nombre as proveedor,
    productos2.nombre as producto,
    productos2.precio as precio,
    productos2.cantidad as existencia
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

--left join

select proveedores2.nombre as proveedor,
    productos2.nombre as producto,
    productos2.precio as precio,
    productos2.cantidad as existencia
    from proveedores2
    left join productos2
    on proveedores2.id = productos2.proveedor_id;

-- vista a partir de la consulta inner join
CREATE VIEW view_left_join_proveedores2_productos2 as 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       left join productos2
       on proveedores2.id = productos2.proveedor_id;

--right join 

select proveedores2.nombre as proveedor,
    productos2.nombre as producto,
    productos2.precio as precio,
    productos2.cantidad as existencia
    from proveedores2
    right join productos2
    on proveedores2.id = productos2.proveedor_id;

-- vista a partir de la consulta inner join
create VIEW view_right_join_proveedores2_productos2 as 
SELECT PROVEEDORES2.NOMBRE as proveedor,
       PRODUCTOS2.NOMBRE as producto,
       PRODUCTOS2.PRECIO as precio,
       PRODUCTOS2.CANTIDAD as existencia
       from proveedores2
       right join productos2
       on proveedores2.id = productos2.proveedor_id;

--full join

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
    right join productos2
    on proveedores2.id = productos2.proveedor_id;


   create VIEW view_full_join_proveedores2_productos2 as 
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
    right join productos2
    on proveedores2.id = productos2.proveedor_id;


    --CATALOGO DE TIENDA VIRTUAL--

    NOMBRE DE BASE DE DATOS
    bd_catalogo_daniel

    --crear tabla productos

    id
    nombre
    cantidad
    precio
    descripcion
    categoria_id

    --tabla categoria

    id
    nombre
    descripcion

    --tabla imagenes
    
    id
    producto_id
    nombre
    ruta
    descripcion 

    --tabla de etiquetas--

    id
    producto_id
    nombre
    descripcion

   --tabla usuarios
   id
   correo
   nombre
   apellido
   clave
   rol_id

   --tabla rol
   id
   nombre
   descripcion


   --tabla calificaciones
   id
   usuario_id
   producto_id
   calificacion
   fecha_hora


   phpmyadmin


   
-- PARA LEVANTAR PHPMYADMIN
-- http://localhost/phpmyadmin/




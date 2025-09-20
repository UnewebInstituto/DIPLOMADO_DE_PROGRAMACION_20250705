create table proveedores2(
    id integer AUTO_INCREMENT,
    nombre varchar(30),
    direccion text,
    telefono varchar(30),
    correo_electronico text,
    primary key(id),
    unique(correo_electronico)
);

-- DECLARACIÓN DE LA TABLA PRODUCTOS
create table productos2(
    id integer AUTO_INCREMENT,
    proveedor_id integer,
    nombre varchar(30),
    precio decimal(13,2),
    cantidad integer,
    primary key(id)
);


-- INNER JOIN



-- LEFT JOIN

-- RIGHT JOIN

-- FULL JOIN

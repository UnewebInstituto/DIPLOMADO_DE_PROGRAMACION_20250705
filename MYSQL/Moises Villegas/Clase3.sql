-- Colummnas calculadas

-- Sumatoria
select sum(cantidad) from vista_proveedores_productos;

-- Valor minimo para el precio
select min(precio) from vista_proveedores_productos;

--Valor maximo para el precio
select max(precio) from vista_proveedores_productos;

--Valor promedio para el precio
select avg(precio) from vista_proveedores_productos;

--Cantidad de registro en la tabla
select count(*) from vista_proveedores_productos;

--Agrupamiento de datos.
--Distinct

Select Distinct producto from vista_proveedores_productos;

-- Group By

SELECT productos FROM vista_proveedores_productos Group By producto;

-- Agrupamiento del resultado de los calculos

SELECT producto, min(precio), max(precio), avg(precio) FROM vista_proveedores_productos GROUP BY producto;

-- ALIAS para el nombre de los campos

SELECT producto AS articulo,
min(precio) AS precio_minimo,
max(precio) AS precio_maximo,
avg(precio) AS precio_promedio
FROM vista_proveedores_productos GROUP BY producto;

-- Creacion de vista a partir de la consulta anterior;

CREATE VIEW vista_resumen_productos AS
SELECT producto AS articulo,
min(precio) AS precio_minimo,
max(precio) AS precio_maximo,
round (avg(precio),2) AS precio_promedio
FROM vista_proveedores_productos GROUP BY producto;

SELECT * FROM vista_resumen_productos;

--Eliminacion de entidades

-- Borrar tablas
DROP TABLE nombre_tabla;

-- Borrar vista
DROP VIEW nombre_vista;

--Borrar una base de datos
DROP DATABASE nombre_base_de_datos;

-- por ejemplo:
DROP VIEW vista_resumen_productos;

-- Otro ejemplo:
CREATE VIEW vista_resumen_productos AS
SELECT producto AS  marca,
min(precio) AS precio_minimo,
max(precio) AS precio_maximo,
round (avg(precio),2) AS precio_promedio
FROM vista_proveedores_productos GROUP BY proveedor;

-- Ordenamiento del contenido

--Orden BY ASC/DESC

SELECT * FROM vista_proveedores_productos ORDER BY precio ASC;

SELECT * FROM vista_proveedores_productos ORDER BY precio DESC;

-- COMBINANDO CAMPOs
SELECT * FROM vista_proveedores_productos ORDER BY producto ASC, precio DESC;

producto  precio 
aabb      500
aabb      400
aabb      300
bbcc
bbcd 
bbdd


--Consulta condicionadas 

-- WHERE CAMPO <opeador relacional> VALOR 

-- WHERE CAMPO <operador relacional> VALOR <operador Logico> CAMPO <operador relacional>

--Operadores logicos
-- >, >=, <, <=, <>, =

--Operadores logicos
-- AND, OR, NOT

--Ejemplo de consulta basado en operador relacional
SELECT proveedor, producto, precio FROM vista_proveedores_productos WHERE precio > 350;

SELECT proveedor, producto, precio FROM vista_proveedores_productos WHERE precio > 350 AND precio < 600;

SELECT proveedor, producto, precio FROM vista_proveedores_productos WHERE (precio > 350 AND precio <600) AND producto = "Lavadora";

--Lista de productos
SELECT proveedor, producto, precio FROM vista_proveedores_productos WHERE producto = "Nevera" OR producto = "Lavadora" OR pruducto = "Secadora";

--Equivalente al anterior
SELECT proveedor, pruducto, precio FROM vista_proveedores_productos WHERE producto IN("Nevera","Lavadora","Secadora");

--Negacion de las 2 expresiones previas
SELECT proveedor, pruducto, precio FROM vista_proveedores_productos WHERE NOT producto IN("Nevera","Lavadora","Secadora");

--Equivalente al anteior 

SELECT proveedor, pruducto, precio FROM vista_proveedores_productos WHERE producto NOT IN("Nevera","Lavadora","Secadora");

-- Condicional basado en un rango;
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE precio >= 350 and precio =< 600;

-- EQUIVALENTE CONDICIONAL BASADO EN UN RANGO:
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE precio BETWEEN 350 AND 600;

-- NEGACIÓN DEL RANGO EN LA DOS EXPRESIONES
-- ANTERIORES
-- NEGADO CONDICIONAL BASADO EN UN RANGO:
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE NOT(precio >= 350 and precio <= 600);

-- NEGADO EQUIVALENTE CONDICIONAL BASADO EN UN RANGO:
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE NOT(precio BETWEEN 350 AND 600);

--NULL ES DIFERENTE DE ESPACIO EN BLANCO;
INSERT INTO proveedores(nombre, direccion, telefono, correo_electronico) VALUES ("", "AV.Victoria", "02129998877", "info@nulo.com");

-- Planteamiento de la consulta

SELECT * FROM proveedores WHERE nombre = " ";

SELECT * FROM proveedores WHERE nombre IS NULL;

--Asociacion a muchos a muchos
--Creacion de las tablas

--Tabla alumnos
CREATE TABLE alumnos(
    id INTEGER auto_increment,
    nombre VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLA alumnos_asignaturas(
    alumno_id INTEGER,
    asignatura_id INTEGER,
    PRIMARY KEY(alumno_id, asignatura_id),
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id) ON DELETE CASCADE ON UPDATE cascade,
    FOREIGN KEY(asignatura_id) REFERENCES asignaturas(id) ON DELETE CASCADE ON UPDATE cascade  
);

--CARGA DE DATOS
INSERT INTO alumnos(nombre, apellido)
VALUES
("Barbara", "Villasmil"),
("Ytzali", "Rodriguez"),
("Airon", "Ortega"),
("Moises", "Villegas"),
("Ricardo", "Motta"),
("Ismael", "Hernandez"),
("Daniel", "Rojas");

INSERT INTO asignaturas(nombre)
VALUES
("Matematicas"),
("Fisica"),
("Quimica"),
("Castellano");

INSERT INTO alumnos_asignaturas(
    alumno_id, asignatura_id) VALUES
    (1,1),
    (1,2),
    (1,3),
    (1,4),
    (2,1),
    (2,3),
    (3,2),
    (3,4),
    (4,1),
    (4,3),
    (4,4),
    (5,2),
    (6,1),
    (6,2),
    (6,3),
    (6,4),
    (7,4);

    --Consulta combinada de las tres tablas
    SELECT alumnos.nombre, alumnos.apellido, asignaturas.nombre FROM alumnos, asignaturas, alumnos_asignaturas WHERE alumnos.id = alumnos_asignaturas.alumnos_id AND alumno.id = alumnos_asignaturas.asignaturas_id ORDER BY alumnos.nombre, alumnos.apellido;
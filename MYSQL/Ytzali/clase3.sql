-- Columnas calculadas 

--ESTO SON FUNCIONES DE MANEJADORES DE DATOS
-- Como ver más funciones help functions;


--SUMATORIA
select sum(cantidad) from vista_proveedores_productos;
--VALOR MINIMO PARA EL PRECIO
select min(precio) from vista_proveedores_productos;
--VALOR MAXIMO PARA EL PRECIO
select max(precio) from vista_proveedores_productos;
--VALOR PROMEDIO PARA EL PRECIO
select avg(precio) from vista_proveedores_productos;
-- CANTIDAD DE REGISTROS EN LA TABLA
select count(*) from vista_proveedores_productos;



--Agrupamiento de datos
--Se hace mediante las agrupaciones:
-- Distinct
select Distinct producto from vista_proveedores_productos;

--Group By
select producto from vista_proveedores_productos Group By producto;

--Agrupamiento del resultado de los cálculos 

select producto, min(precio), max(precio), avg(precio) from vista_proveedores_productos Group By producto;

--Vamos a colocarle un alias a los nombres de los campos
select producto as ARTICULO, min(precio) as PRECIO_MINIMO, max(precio) as PRECIO_MAXIMO, avg(precio) as PRECIO_PROMEDIO 
from vista_proveedores_productos Group By producto;


--Creación de vista a partir de la consulta anterior:
create view vista_resumen_productos as 
select producto as ARTICULO, min(precio) as PRECIO_MINIMO, max(precio) as PRECIO_MAXIMO, avg(precio) as PRECIO_PROMEDIO 
from vista_proveedores_productos Group By producto;

SELECT * from vista_resumen_productos;

-- ESTO ES PARA redondear con dos decimales
create view vista_resumen_productos as 
select producto as ARTICULO, min(precio) as PRECIO_MINIMO, max(precio) as PRECIO_MAXIMO, round(avg(precio),2) as PRECIO_PROMEDIO 
from vista_proveedores_productos Group By producto;

-- Para ver la tabla
SELECT * from vista_resumen_productos;


--Eliminación de entidades
--Borrar tabala
drop table nombre_tabla;

--Borrar Vista
drop view nombre_vista;
--Por ejemplo drop view vista_resumen_productos;

--Borrar una base de dato
drop Database nombre_base_de_datos;


--OTRO EJEMPLO
create view vista_resumen_marcas as 
select proveedor as MARCA, min(precio) as PRECIO_MINIMO, max(precio) as PRECIO_MAXIMO, round(avg(precio),2) as PRECIO_PROMEDIO 
from vista_proveedores_productos Group By proveedor;



--Ordenamiento del contenido
--Se hace con la instrucción Order By puede ser en asc/desc
select * from vista_proveedores_productos Order By precio asc;

select * from vista_proveedores_productos Order By precio desc;

--Ordenalo por productos combinando campos
select * from vista_proveedores_productos Order By producto 
asc, precio desc;

producto precio
aabb        500
aabb        400
aabb        300
bbcc
bbcd
bbdd


--Consultas condicionadas
--Where campo <operador relacional> valor
--Where campo <operador relacional> valor <operador logico> campo <operador relacional>

--Operadores relacionales
-- >, >=, <, <=, <>, = 

--Operadores logicos
--AND, OR, NOT


-- Ej de Consulta basada en operador relacional
select proveedor, producto, precio from vista_proveedores_productos where precio > 350;

select proveedor, producto, precio from vista_proveedores_productos where precio > 350 and precio < 600;

select proveedor, producto, precio from vista_proveedores_productos where (precio > 350 and precio < 600) and producto = 'LAVADORA';


--Lista de productos
select proveedor, producto, precio from vista_proveedores_productos where producto = 'NEVERA' or producto = 'LAVADORA' or producto = 'SECADORA'; 

--Equivalente al anterior 
select proveedor, producto, precio from vista_proveedores_productos where producto IN('NEVERA', 'LAVADORA', 'SECADORA');

--Negacion de las dos expreciones previas
select proveedor, producto, precio from vista_proveedores_productos where not(producto = 'NEVERA' or producto = 'LAVADORA' or producto = 'SECADORA'); 


select proveedor, producto, precio from vista_proveedores_productos where producto NOT IN('NEVERA', 'LAVADORA', 'SECADORA');


--Condicional basado en un rango;
select proveedor, producto, precio from vista_proveedores_productos where precio >= 350 and precio <= 600;


--Equivalente condicional basado en un rango:
select proveedor, producto, precio from vista_proveedores_productos where precio between 350 and 600;


--Negacion del rango en la dos expresiones anteriore
-- Negado Condicional basado en un rango;
select proveedor, producto, precio from vista_proveedores_productos where not(precio >= 350 and precio <= 600);


-- Negado Equivalente condicional basado en un rango:
select proveedor, producto, precio from vista_proveedores_productos where not (precio between 350 and 600);


-- NULL ES DIFERENTE DE ESPACIO EN BLANCO
--Campo con valor en blanco
insert into proveedores(nombre,direccion,telefono,correo_electronico) values 
('','AV. Victoria','0239123956','info@blanco.com');

--Campo con valor nulo
insert into proveedores(direccion,telefono,correo_electronico) values 
('AV. Roosbelt','023551956','info@ulo.com');


--Plantamento de la consulta de manera individual
select * from proveedores where nombre = '';
--Dos formas de consultar
select * from proveedores where nombre is NULL;




--Asociación de muchos a muchos
--Creación de las tablas
--Tablas Alumnos
create table Alumnos(
    id integer AUTO_INCREMENT,
    nombre varchar(50),
    apellido varchar(50),
    primary key(id)
    );

create table Asignaturas(
    id integer AUTO_INCREMENT,
    nombre varchar(50),
    primary key(id)
    );

    create table alumnos_asignaturas(
    alumnos_id integer,
    asignaturas_id integer,
    primary key(alumnos_id, asignaturas_id),
    foreign key(alumnos_id) references alumnos(id) on delete cascade on update cascade,
    foreign key(asignaturas_id) references asignaturas(id) on delete cascade on update cascade
    );


    --Carga de datos
    insert into alumnos(nombre, apellido)
    values
    ('BARBARA','VILLASMIL'),
    ('YTZALI','RODRIGUEZ'),
    ('AIRON','ORTEGA'),
    ('RICARDO', 'MOTTA');

    insert into asignaturas(nombre)
    values 
    ('MATEMATICA'),
    ('FISICA'),
    ('QUIMICA'),
    ('CASTELLANO');

    insert into alumnos_asignaturas
        (alumnos_id, asignaturas_id) values
        (1,1),
        (1,2),
        (1,3),
        (1,4),
        (2,1),
        (2,3),
        (3,2),
        (3,4);


        --Consulta Combinada de las 3 tablas
        
SELECT alumnos.nombre,
       alumnos.apellido,
       asignaturas.nombre
       from alumnos, asignaturas, alumnos_asignaturas
       where alumnos.id = alumnos_asignaturas.alumnos_id AND
             asignaturas.id = alumnos_asignaturas.asignaturas_id;
             

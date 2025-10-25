--Creacion de bases de datos

create database bd20251025_ricardo;
--Respuesta del comando
--postgres=# create database bd20251025_ricardo;

--Comando psql
--Listar base de datos basado en caracteres comodin
\l *bd20251025*;
--Descripcion: Listar nombres de BBDD, que contengan 
--el texto bd20251025

--Conectarse a una base de datos 

\c bd20251025_ricardo

--Creacion de una tabla

create table contactos(
    nombres varchar(100),
    apellidos varchar(100),
    correo_electronico varchar(100),
    telefono varchar(100)
);

--Nombres especificos para los atributos de las tablas 

create table "Contactos"(
    "Nombres" varchar(100),
    "Apellidos" varchar(100),
    "Correo Electronico" varchar(100),
    "Telefono" varchar(100)
);

--Ver descripcion de tablas en BBDD

\d contactos;
\d "Contactos";

--Ver tablas contenidas en la BBDD

\dt

--Ver indices
\ds 

--Ver vistas
\dv 

create table contactos1(
    id serial,
    nombres varchar(100),
    apellidos varchar(100),
    correo_electronico varchar(100),
    telefono varchar(100),
    primary key(id)
);

-- \d ver todas las entidades de la bases de datos

--\ dt ver todas las tablas de la base de datos

-- ds ver todos los indices de la base de datos

--Establecer clave unica dentro de la tabla 
alter table contactos1 add unique(correo_electronico);

--CRUD:
--CREATE, READ, UPDATE, DELETE
--Operacion de carga de registros
--


insert into contactos1(nombres,apellidos,correo_electronico,
telefono)
values
('ANA','VASQUEZ','av@gmail.com','+58 414 12345678'),
('YOLANDA','TORTOZA','yt@gmail.com','+58 414 92345678'),
('NELLY','CONTRERAS','nc@gmail.com','+58 414 82345678');

--Consulta del contenido de la tabla
select * from contactos1;

--Prueba de restriccion o "constraint" 

insert into contactos1(nombres,apellidos,correo_electronico,
telefono)
values
('NORMA','CEVALLOS','nc@hotmail.com','+58 414 72345678');


--Consultas condicionadas
--Incluye la clausula WHERE
--
select * from contactos1;
--
select * from contactos1 where id = 2;
--
select nombres, apellidos from contactos1 where id = 2;

-- ACTUALIZACION: Comando UPDATE
--

update contactos1 set correo_electronico = 'avasquez@gmail.com' where id = 1

--ELIMINACION DE REGISTROS: Comando DELETE
select * from contactos1 where nombres = 'ANA';
insert into contactos1(nombres,apellidos,correo_electronico,
telefono)
values
('ANA MARIA','PEREZ','amp@gmail.com','+58 414 62345678'),
('ANA LUCIA','YEPEZ','aly@gmail.com','+58 414 52345678'),
('VICTORIA ANA','CEBALLOS','vac@hotmail.com','+58 414 42345678');

--CONSULTA DE VALOR CONTENIDO
select * from contactos1 where nombres like '%ANA%';

SELECT ID, NOMBRES, APELLIDOS FROM contactos1 WHERE nombres LIKE '%ANA%';

delete from contactos1 where id = 8;

--INSERT
--SELECT
--UPDATE
--DELETE

--DEFINICION DE LLAVES EXTERNAS(CLAVES FORANEAS)
--SE SUGIERE QUE LOS NOMBRES DE TABLA SEAN EN PLURAL

vAL
create table proveedores(
    id serial,
    nombre varchar(100),
    direccion text,
    telefono varchar(100),
    correo_electronico varchar(100),
    primary key(id)
);

create table productos(
    id serial,
    proveedor_id integer,
    nombre varchar(100),
    precio numeric(13,2),
    existencia integer,
    primary key(id),
    foreign key(proveedor_id) references proveedores(id) on delete cascade on update cascade
);

-- Al presentarse una asocación entre tablas, la existencia de registros
-- en la tablas dependientes (hijas) se basa en la creación de los valores
-- de los que estás dependen

-- Creación de registros en la tabla "Proveedores"
insert into proveedores(nombre, direccion, telefono, correo_electronico)
values 
('GENERAL ELECTRIC','AV. LECUNA','+58 212 5876543', 'info@ge.com'),
('WHIRPOOL','AV. BARALT','+58 212 4876543', 'info@whirpool.com'),
('SAMSUNG','AV. SAN MARTIN','+58 212 7876543', 'info@samsung.com'),
('ADMIRAL','AV. ROMULO GALLEGOS','+58 212 2876543', 'info@admiral.com');

INSERT INTO productos (proveedor_id, nombre, precio, existencia) VALUES
-- Refrigeracion (1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1)
(1, 'Refrigerador No Frost 300L Inox', 750.00, 25),
(2, 'Congelador Vertical 150L', 420.50, 15),
(3, 'Nevera Ejecutiva 100L Negra', 280.99, 40),
(4, 'Refrigerador Side by Side 650L', 1250.75, 12),
(1, 'Mini Bar 50 Litros', 150.00, 50),
(2, 'Frigobar Acero Inoxidable', 185.25, 30),
(3, 'Refrigerador de Vinos Dual Zone', 980.00, 8),
(4, 'Congelador Horizontal 200L', 510.99, 20),
(1, 'Refrigerador Smart 450L', 920.50, 18),
(2, 'Nevera de 2 Puertas 350L', 680.00, 22),
(3, 'Bebedero de Agua Fria', 110.00, 35),
(4, 'Refrigerador French Door 550L', 1150.25, 10),
(1, 'Maquina de Hielo Portatil', 195.00, 45),

-- Lavado y Secado (2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1)
(2, 'Lavadora Carga Superior 15kg', 550.00, 35),
(3, 'Secadora Electrica de 8kg', 480.90, 28),
(4, 'Lavasecadora 10/7kg Inverter', 899.99, 15),
(1, 'Lavadora Carga Frontal 12kg', 720.50, 20),
(2, 'Secadora a Gas Gran Capacidad', 650.00, 10),
(3, 'Lavadora Semi-Automatica 18kg', 320.75, 45),
(4, 'Centro de Lavado Compacto', 950.00, 14),
(1, 'Bomba de Drenaje para Lavadora', 45.00, 100),
(2, 'Lavadora Portatil 5kg', 190.00, 60),
(3, 'Secadora por Condensacion 7kg', 580.00, 25),
(4, 'Lavadora Tecnologia EcoBubble', 780.00, 18),
(1, 'Base Antivibracion Lavadora', 25.50, 120),

-- Cocinas y Hornos (2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1)
(2, 'Cocina a Gas 4 Quemadores Acero', 350.00, 30),
(3, 'Horno Electrico Empotrable 60cm', 520.50, 25),
(4, 'Microondas Digital 20 Litros', 85.99, 70),
(1, 'Estufa de Induccion Portatil', 120.00, 55),
(2, 'Cocina Electrica Vitroceramica', 410.75, 22),
(3, 'Horno Microondas con Grill', 115.00, 65),
(4, 'Campana Extractora de Pared 90cm', 290.00, 18),
(1, 'Cocina Industrial 6 Hornillas', 850.00, 9),
(2, 'Parrilla Electrica de Mesa', 55.99, 90),
(3, 'Horno de Conveccion Multifuncion', 680.00, 11),
(4, 'Cocina Compacta 2 Placas', 95.00, 80),
(1, 'Microondas Gran Capacidad 30L', 130.25, 40),

-- Climatizacion y Varios (2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4)
(2, 'Aire Acondicionado Split 12000 BTU', 450.00, 30),
(3, 'Calentador de Agua a Gas 10L', 210.99, 25),
(4, 'Calefactor Ceramico Oscilante', 65.50, 50),
(1, 'Aire Acondicionado Portatil 9000 BTU', 380.00, 20),
(2, 'Deshumidificador 15L/Dia', 199.99, 35),
(3, 'Ventilador de Pedestal Control', 40.00, 90),
(4, 'Termostato Inteligente Wi-Fi', 85.00, 45),
(1, 'Cortina de Aire Industrial', 420.00, 15),
(2, 'Purificador de Aire Filtro HEPA', 150.00, 30),
(3, 'Ventilador de Techo con Luz LED', 95.00, 50),
(4, 'Aspiradora Robot Inteligente', 299.99, 15);

-- Prueba de integridad de registros
-- Crear producto, cuyo numero de proveedor_id no exista
--en la tabla de proveedores
--proveedor_id = 10 no existe
INSERT INTO productos (proveedor_id, nombre, precio, existencia) VALUES
-- Refrigeracion (1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1)
(10, 'Refrigerador No Frost 300L Inox', 750.00, 25);

--Borrar tablas
drop table productos;
drop table proveedores;

--Se tiene que la tabla "Productos" tiene los atributos 
-- "on delete cascade on update cascade", por lo tanto
-- permitiran las actualizaciones y eliminaciones en cascada

--ACTUALIZACION del proveedor cuyo id = 1 al valor id = 10
update proveedores set id = 10 where id = 1;

-- Eliminacion en cascada 
delete from proveedores where id = 10;


SELECT proveedores.nombre,
       productos.nombre AS producto,
       productos.precio, 
       productos.existencia 
       FROM proveedores, productos
       WHERE proveedores.id = productos.proveedor_id;

--Vista: es una tabla virtual a partir de tablas fisicas
Create view vista_proveedores_productos as
SELECT proveedores.nombre,
       productos.nombre AS producto,
       productos.precio, 
       productos.existencia 
       FROM proveedores, productos
       WHERE proveedores.id = productos.proveedor_id;

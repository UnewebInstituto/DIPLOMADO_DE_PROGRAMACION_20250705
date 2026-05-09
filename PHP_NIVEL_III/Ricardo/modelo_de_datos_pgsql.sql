-- Creación de la bbdd en postgresql
create database carrito_profesor;
-- Conectar a la bbdd carrito_profesor\
\c carrito_profesor;

CREATE TABLE usuarios( 
ID_USUARIO serial, 
CEDULA VARCHAR(10), 
NOMBRE_APELLIDO VARCHAR(60), 
CORREO VARCHAR(30), 
CLAVE VARCHAR(32), 
TIPO_USUARIO VARCHAR(20),
primary key(id_usuario),
unique(correo));

--
-- Ver descripción de la tabla
-- 
\d usuarios

CREATE TABLE productos( 
ID_PRODUCTO serial, 
NOMBRE_PRODUCTO VARCHAR(40), 
DESCRIPCION TEXT, 
NOMBRE_ARCHIVO VARCHAR(30), 
PRECIO NUMERIC(13,2), 
EXISTENCIA INTEGER, 
PRIMARY KEY (ID_PRODUCTO)); 

CREATE TABLE agregar( 
SESSION_ID  VARCHAR(26), 
ID_PRODUCTO INT); 

CREATE TABLE compras( 
ID_USUARIO INT, 
ID_PRODUCTO INT, 
CANTIDAD integer, 
FECHA DATE); 


-- CREACIÓN DEL USUARIO ADMINISTRADOR

INSERT INTO usuarios(cedula, nombre_apellido, correo, clave, tipo_usuario) VALUES 
('V12345678', 'ANA VASQUEZ', 'av@gmail.com', md5('V12345678'), 'ADMINISTRADOR');
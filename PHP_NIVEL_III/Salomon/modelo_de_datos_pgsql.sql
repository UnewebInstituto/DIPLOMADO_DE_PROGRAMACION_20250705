-- creacion de la base de datos en postgresql
create database carrito_salomon;
-- conectar a la base de datos
\c carrito_salomon;

use agenda_salomon;

CREATE TABLE usuarios( 
ID_USUARIO serial, 
CEDULA VARCHAR(10), 
NOMBRE_APELLIDO VARCHAR(60), 
CORREO VARCHAR(30), 
CLAVE VARCHAR(32), 
TIPO_USUARIO VARCHAR(20),
primary key (ID_USUARIO),
unique (CORREO));

CREATE TABLE productos( 
ID_PRODUCTO serial, 
NOMBRE_PRODUCTO VARCHAR(40), 
DESCRIPCION TEXT, 
NOMBRE_ARCHIVO VARCHAR(30), 
PRECIO NUMERIC (13,2), 
EXISTENCIA INTEGER, 
PRIMARY KEY (ID_PRODUCTO)); 

CREATE TABLE agregar( 
SESSION_ID  VARCHAR(26), 
ID_PRODUCTO INT); 

CREATE TABLE compras( 
ID_USUARIO INT, 
ID_PRODUCTO INT, 
CANTIDAD INTEGER, 
FECHA DATE); 


-- creacion del usuario administrador

INSERT INTO usuarios(cedula, nombre_apellido, correo, clave, tipo_usuario) VALUES 
('V31101379', 'SALOMON GAMEZ', 'saga@gmail.com', md5 ('31101379'), 'ADMINISTRADOR');



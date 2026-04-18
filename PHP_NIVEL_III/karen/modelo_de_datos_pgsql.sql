--Buscar SQL shell (psql) para abrir el temrinal
--Creación de BBDD en postgresql
create database carrito_karen;
--Conexión a BBDD en postgresql
\c carrito_karen;
--Serial es entero y autoincremental 
CREATE TABLE usuarios( 
ID_USUARIO serial, 
CEDULA VARCHAR(10), 
NOMBRE_APELLIDO VARCHAR(60), 
CORREO VARCHAR(30), 
CLAVE VARCHAR(32), 
TIPO_USUARIO VARCHAR(20),
primary key (ID_USUARIO),
UNIQUE (correo));
--Para revisar la descripción de la tabla, \d usuarios;

--Ahora agregamos datos

insert into usuarios (cedula, nombre_apellido, correo, clave, tipo_usuario) values
('V12345678', 'ANA VASQUEZ', 'av@gmail.com', md5('V12345678'), 'ADMINISTRADOR');


CREATE TABLE productos( 
ID_PRODUCTO serial, 
NOMBRE_PRODUCTO VARCHAR(40), 
DESCRIPCION TEXT, 
NOMBRE_ARCHIVO VARCHAR(30), 
PRECIO numeric(13,2), 
EXISTENCIA integer, 
PRIMARY KEY (ID_PRODUCTO)); 

CREATE TABLE agregar( 
SESSION_ID  VARCHAR(26), 
ID_PRODUCTO INT); 

CREATE TABLE compras( 
ID_USUARIO INT, 
ID_PRODUCTO INT, 
CANTIDAD integer, 
FECHA DATE);

--Para que XAMPP trabaje con posgresql se debe ir a configuración PHP de apache, donde todo lo que aparece luego de ; es un comentario, se debe quitar el ; para que se active.

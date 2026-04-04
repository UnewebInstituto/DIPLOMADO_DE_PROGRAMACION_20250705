-- CREACIÓN DE BBDD
create database agenda_kaira;
create database agenda_karen;
create database agenda_daniela;

-- CONEXIÓN A MI BBDD
use agenda_profesor;

-- CREACIÓN DE TABLAS
-- usuarios
create table usuarios(
    id integer auto_increment,
    nombre varchar(80),
    apellido varchar(80),
    correo_electronico varchar(250),
    foto varchar(250),
    clave varchar(250),
    primary key(id),
    unique(correo_electronico)
);

-- temas
create table temas(
    id integer auto_increment,
    titulo text,
    fecha date,
    hora time,
    id_usuario integer,
    primary key(id),
    unique(titulo)
);

-- comentarios
create table comentarios(
    id integer auto_increment,
    texto text,
    fecha date,
    hora time,
    id_tema integer,
    id_usuario integer,
    primary key(id)
);































































































































































|









































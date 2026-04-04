-- Prueba manual del ingreso del usuario
insert into usuarios(nombre, apellido,correo_electronico,foto,clave) values ('ANA','VASQUEZ','av@gmail.com','./img/perfil1.png',md5('ANA'));

update usuarios set clave = md5('ANA') where id = 1;


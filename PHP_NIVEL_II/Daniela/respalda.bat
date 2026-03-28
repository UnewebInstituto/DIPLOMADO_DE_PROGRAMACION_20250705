rem  EJECUTAR DESDE UNA CONSOLA DE COMMAND PROMPT
rem  +--- comando               usuario
rem  |                            |   pedir clave
rem  |                            |     |          +-- bbdd   respaldo
rem  |                            |     |          |             |
rem  v                            v     v          v             v
"C:\xampp\mysql\bin\mysqldump" -u root -p agenda_daniela > "./respaldos/respaldo_20260328.sql"
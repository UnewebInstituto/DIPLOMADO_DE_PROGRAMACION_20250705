rem  EJECUTAR DESDE UNA CONSOLA DE COMMAND PROMPT
rem  +--- comando               usuario
rem  |                            |   pedir clave
rem  |                            |     |          +-- bbdd   respaldo
rem  |                            |     |          |             |
rem  v                            v     v          v             v
"C:\xampp\mysql\bin\mysqldump" -u root -p bd_profesor_20250830 > "./respaldos/respaldo_20250913.sql"
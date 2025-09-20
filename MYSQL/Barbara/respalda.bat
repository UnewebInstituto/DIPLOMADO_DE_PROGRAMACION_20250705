rem EJECUTAR DESDE UNA CONSOLA DE COMAND PROMPT

rem  +--- comando               usuario
rem  |                            |   pedir clave
rem  |                            |     |          +-- bbdd   respaldo
rem  |                            |     |          |             |
rem  v                            v     v          v             v
"C:\xampp\mysql\bin\mysqldump" -u root -p bd_barbara_20250830 > "./respaldos/respalda_20250920.sql"

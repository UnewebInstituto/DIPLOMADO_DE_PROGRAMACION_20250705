rem EJECUTAR DESDE UNA CONSOLA DE COMAND PROMPT

rem  +--- comando               usuario
rem  |                            |   pedir clave
rem  |                            |     |          +-- bbdd   respaldo
rem  |                            |     |          |             |
rem  v                            v     v          v             v
"C:\xampp\mysql\bin\mysql" -u root -p bd1_barbara_20250830 < "./respaldos/respalda_20250913.sql"
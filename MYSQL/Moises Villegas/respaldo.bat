rem  EJECUARTAR DESDE UNA CONSOLA DE COMMAND PROMPT
rem  +--- comando               usuario
rem  |                            |   pedir clave
rem  |                            |     |          +-- bbdd   respaldo
rem  |                            |     |          |             |
rem  v                            v     v          v             v

"c:\xampp\mysql\bin\mysqldump" -u root -p bd_movi_30482481 > "./respaldos/respaldo_20250820.sql"
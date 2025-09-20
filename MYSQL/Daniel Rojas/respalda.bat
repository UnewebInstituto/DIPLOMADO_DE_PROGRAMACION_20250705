rem  Ejecutar desde una consola desde comand Prompt
rem  +--- comando               usuario
rem  |                            |   pedir clave
rem  |                            |     |          +-- bbdd   respaldo
rem  |                            |     |          |             |
rem  v                            v     v          v             v
"C:\xampp\mysql\bin\mysqldump" -u root -p bd_daniel_20250830 > "./respaldos/respaldo_20250920.sql"
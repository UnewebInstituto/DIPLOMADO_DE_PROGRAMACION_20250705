rem  EJECUARTAR DESDE UNA CONSOLA DE COMMAND PROMPT
rem   +--- comando         usuario
rem   |                     |    pedir clave
rem   |                     |      |      +-- bbdd   respaldo
rem   |                     |      |      |             |
rem   v                     v      v      v             v

"c:\xampp\mysql\bin\mysql" -u root -p bd1_movi_30482481 < "./respaldos/respaldo_20250813.sql"
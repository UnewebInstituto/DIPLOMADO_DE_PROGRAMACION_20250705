
-- Consulta Obtener:
-- Nombre y Apellido de Choferes, Autobuses que conduce, 
-- Rutas que recorre y Paradas que realiza.

SELECT transporte.choferes.nombre as nombre_chofer,
       transporte.choferes.apellido as apellido_chofer,
       transporte.marcas.nombre as marca_autobus,
       transporte.modelos.nombre as modelo_autobus,
       transporte.rutas.nombre as ruta,
       transporte.paradas.nombre as parada 
       from transporte.choferes, transporte.autobuses, transporte.marcas, transporte.rutas, transporte.paradas, transporte.choferes_autobuses where transporte.choferes_autobuses.chofer_id = transporte.choferes.id and transporte.choferes_autobuses.autobus_id = transporte.autobuses.id and transporte.recorridos.autobus_id = transporte.autobus_id;
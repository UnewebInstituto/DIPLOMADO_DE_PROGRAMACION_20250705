-- Script de carga de datos de prueba para el esquema 'transporte'
-- Adaptado a la definición exacta de la tabla transporte.recorridos.

BEGIN;

-- Desactivar temporalmente los triggers y verificaciones de claves foráneas para la inserción masiva
-- SET session_replication_role = replica;


-- 1. Carga de datos base: MARCA
INSERT INTO transporte.marcas (id, nombre) VALUES
(1, 'Volvo'),
(2, 'Mercedes-Benz'),
(3, 'Scania');
-- SELECT setval('transporte.marca_id_seq', 3, true);

-- 2. Carga de datos base: MODELOS
INSERT INTO transporte.modelo (id, nombre) VALUES
(1, 'B8R'),
(2, 'Gran Viale'),
(3, 'K310');
-- SELECT setval('transporte.modelos_id_seq', 3, true);

-- 3. Carga de datos base: COLOR
INSERT INTO transporte.colores (id, nombre) VALUES
(1, 'Rojo'),
(2, 'Azul'),
(3, 'Blanco');
--SELECT setval('transporte.color_id_seq', 3, true);

-- 4. Carga de datos base: TURNOS
INSERT INTO transporte.turnos (id, nombre, hora_inicio, hora_finalizacion) VALUES
(1, 'Mañana', '05:00:00', '13:00:00'),
(2, 'Tarde', '13:00:00', '21:00:00');
--SELECT setval('transporte.turnos_id_seq', 2, true);

---

-- 5. Carga de datos principales: AUTOBUSES
INSERT INTO transporte.autobuses (id, marca_id, modelo_id, anio, color_id) VALUES
(101, 1, 1, 2020, 1),  -- Volvo B8R Rojo
(102, 2, 2, 2018, 3),  -- Mercedes-Benz Gran Viale Blanco
(103, 3, 3, 2021, 2);  -- Scania K310 Azul
--SELECT setval('transporte.autobuses_id_seq', 103, true);

-- 6. Carga de datos principales: CHOFERES
INSERT INTO transporte.Choferes (id, nombre, apellido, cedula, numero_licencia, edad) VALUES
(1, 'Andres', 'Perez', '123456789', 'L98765432', 45),
(2, 'Maria', 'Gomez', '987654321', 'L12345678', 32);
--SELECT setval('transporte.choferes_id_seq', 2, true);

-- 7. Carga de datos principales: PARADAS (Sin ruta_id inicialmente, será actualizado)
INSERT INTO transporte.paradas (id, nombre) VALUES
(10, 'Terminal Principal'),
(11, 'Av. Libertador'),
(12, 'Plaza Central'),
(13, 'Parque Industrial');
SELECT setval('transporte.paradas_id_seq', 13, true);

-- 8. Carga de datos principales: RUTAS
-- Nota: 'parada_id' es una clave foránea que apunta a 'paradas.id'
INSERT INTO transporte.rutas (id, nombre, parada_id) VALUES
(1, 'Ruta Central', 10),
(2, 'Ruta Industrial', 13);
SELECT setval('transporte.rutas_id_seq', 2, true);

-- 9. Actualizar PARADAS con la ruta_id (para completar la relación circular Ruta <-> Parada)
UPDATE transporte.paradas SET ruta_id = 1 WHERE id IN (10, 11, 12);
UPDATE transporte.paradas SET ruta_id = 2 WHERE id IN (13);

---

-- 10. Carga de datos de relación: CHOFERES_AUTOBUSES (Asignación Chofer <-> Autobús)
INSERT INTO transporte.choferes_autobuses (chofer_id, autobus_id) VALUES
(1, 101), -- Andres conduce el Autobus 101
(2, 102), -- Maria conduce el Autobus 102
(1, 103); -- Andres conduce el Autobus 103

-- 11. Carga de datos de relación: AUTOBUSES_TURNOS (Asignación Autobús <-> Turno)
INSERT INTO transporte.autobuses_turnos (autobus_id, turno_id) VALUES
(101, 1), -- Autobus 101 en turno Mañana
(102, 2), -- Autobus 102 en turno Tarde
(103, 1); -- Autobus 103 en turno Mañana

-- 12. Carga de datos de relación: RECORRIDOS (Asignación Autobús <-> Ruta)
-- Usando 'autobus_id' y 'ruta_id' tal como lo indica la definición
INSERT INTO transporte.recorridos (autobus_id, ruta_id) VALUES
(101, 1), -- Autobus 101 asignado a Ruta Central
(102, 1), -- Autobus 102 asignado a Ruta Central
(103, 2), -- Autobus 103 asignado a Ruta Industrial
(102, 2); -- Autobus 102 asignado a Ruta Industrial (Se permite, ya que la combinación es única)

-- Reactivar los triggers y verificaciones
-- SET session_replication_role = default;

COMMIT;
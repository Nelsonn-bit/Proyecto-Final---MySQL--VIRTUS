
# INSERTS 


-- CLIENTES
INSERT INTO cliente (nombre, telefono, ciudad)
VALUES ('Nelson Navarro', '3103234567', 'Bogotá'),
        ('Diana Gomez', '3114830314', 'Medellín');

-- VEHICULOS
INSERT INTO vehiculo (placa, tipo, capacidad_kg)
VALUES ('ABC123', 'Camión', 5000),
       ('XYZ987', 'Van', 1200);

-- CONDUCTORES
INSERT INTO conductor (nombre, licencia, telefono)
VALUES ('Juan Pérez', 'LIC12345', '3015557890'),
       ('James Rodriguez', 'LIC67890', '3024441234');

-- RUTAS
INSERT INTO ruta (id_vehiculo, id_conductor, ciudad_origen, ciudad_destino)
VALUES (1, 1, 'Bogotá', 'Cali'),
       (2, 2, 'Medellín', 'Barranquilla');

-- ESTADOS DE ENVÍO 
INSERT INTO estado_envio (nombre_estado)
VALUES ('Recibido'), ('En ruta'), ('Centro de distribución'), ('Entregado'), ('Devuelto');

-- ENVÍOS
INSERT INTO envio (id_cliente, peso_kg, tamaño, valor_declarado, ciudad_destino, fecha_envio, id_estado_actual, id_ruta)
VALUES (1, 12.5, 'Mediano', 300000, 'Cali', '2025-05-10', 1, 1),
       (2, 5.2, 'Pequeño', 150000, 'Barranquilla', '2025-05-12', 2, 2);

INSERT INTO envio (id_cliente, peso_kg, tamaño, valor_declarado, ciudad_destino, fecha_envio, id_estado_actual, id_ruta)
VALUES (1, 20.0, 'Grande', 500000, 'Cali', '2025-05-15', 1, 1);

-- HISTORIAL DE ESTADOS
INSERT INTO historial_estado (id_envio, id_estado, fecha_hora)
VALUES (1, 1, '2025-05-10 08:00:00'),
       (1, 2, '2025-05-10 14:00:00');

-- INCIDENTES
INSERT INTO incidente (id_envio, descripcion, fecha_hora)
VALUES (1, 'Retraso por tráfico', '2025-05-10 16:30:00');

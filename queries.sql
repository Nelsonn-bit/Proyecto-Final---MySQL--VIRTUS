
# SENTENCIAS CRUD

# SELECT
SELECT * FROM historial_estado;

SELECT Envio.id_envio, Cliente.nombre, Envio.ciudad_destino
FROM Envio
INNER JOIN Cliente ON Envio.id_cliente = Cliente.id_cliente;

SELECT nombre, telefono FROM conductor;


# UPDATE
UPDATE envio
set valor_declarado = '500000'
WHERE tamaño = 'Grande';

# DELETE
DELETE FROM envio
WHERE id_envio = 4;

# Consultas con filtros del ultimo modulo:

# INNER JOIN

SELECT Envio.id_envio, Estado_Envio.nombre_estado
FROM Envio
INNER JOIN Estado_Envio ON Envio.id_estado_actual = Estado_Envio.id_estado;

# ORDER BY

SELECT * FROM conductor ORDER BY nombre ASC;


# AND

SELECT * FROM Envio
WHERE peso > 10 AND valor_declarado > 50000;

# COUNT

SELECT ciudad_destino, COUNT(*) AS total_envios
FROM Envio
GROUP BY ciudad_destino;

# DISTINCT

SELECT DISTINCT ciudad_destino FROM Envio;


CREATE DATABASE ExpressCargo DEFAULT CHARACTER SET = 'utf8mb4';

USE ExpressCargo;

CREATE TABLE Cliente (

    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    ciudad VARCHAR(100)

);

CREATE TABLE vehiculo (
    id_vehiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    tipo VARCHAR(50),
    capacidad_kg DECIMAL(10,2)
);


CREATE TABLE conductor (
    id_conductor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    licencia VARCHAR(50) NOT NULL UNIQUE,
    telefono VARCHAR(20)
);

CREATE TABLE ruta (
    id_ruta INT AUTO_INCREMENT PRIMARY KEY,
    id_vehiculo INT,
    id_conductor INT,
    ciudad_origen VARCHAR(100),
    ciudad_destino VARCHAR(100),

    FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id_vehiculo),
    FOREIGN KEY (id_conductor) REFERENCES conductor(id_conductor)
);

# recibido, en ruta, en centro de distribución, entregado, devuelto
CREATE TABLE estado_envio (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estado VARCHAR(50) NOT NULL
);


CREATE TABLE envio (
    id_envio INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    peso DECIMAL(10,2),
    tamaño VARCHAR(50),
    valor_declarado DECIMAL(12,2),
    ciudad_destino VARCHAR(100),
    fecha_envio DATE,
    id_estado_actual INT,
    id_ruta INT,

    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_estado_actual) REFERENCES estado_envio(id_estado),
    FOREIGN KEY (id_ruta) REFERENCES ruta(id_ruta)
);

CREATE TABLE historial_estado (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_envio INT,
    id_estado INT,
    fecha_hora DATETIME,

    FOREIGN KEY (id_envio) REFERENCES envio(id_envio),
    FOREIGN KEY (id_estado) REFERENCES estado_envio(id_estado)
);

CREATE TABLE incidente (
    id_incidente INT AUTO_INCREMENT PRIMARY KEY,
    id_envio INT,
    descripcion TEXT,
    fecha_hora DATETIME,

    FOREIGN KEY (id_envio) REFERENCES envio(id_envio)
);



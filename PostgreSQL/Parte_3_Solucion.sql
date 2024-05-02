CREATE TABLE categoria (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR NOT NULL
);

CREATE TABLE producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR NOT NULL,
    marca VARCHAR NOT NULL,
    categoria_id INT NOT NULL,
    precio_unitario DECIMAL NOT NULL
);

CREATE TABLE sucursal (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR NOT NULL,
    direccion VARCHAR NOT NULL
);

CREATE TABLE stock (
    id SERIAL PRIMARY KEY,
    sucursal_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL,
    UNIQUE (sucursal_id, producto_id)
);

CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR NOT NULL,
    telefono VARCHAR
);

CREATE TABLE orden (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    sucursal_id INT NOT NULL,
    fecha DATE NOT NULL,
    total DECIMAL NOT NULL
);

CREATE TABLE item (
    id SERIAL PRIMARY KEY,
    orden_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL,
    monto_venta DECIMAL NOT NULL
);
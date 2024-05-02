-- 1) Obtener el precio mínimo, precio máximo y precio promedio de todos los productos.
SELECT 
    MIN(precio_unitario) AS precio_minimo,
    MAX(precio_unitario) AS precio_maximo,
    AVG(precio_unitario) AS precio_promedio
FROM Producto;

-- 2) Calcular la cantidad total de productos en stock por sucursal.
SELECT 
    Sucursal.id AS sucursal_id,
    Sucursal.nombre AS nombre_sucursal,
    SUM(Stock.cantidad) AS cantidad_total
FROM 
    Sucursal
JOIN 
    Stock ON Sucursal.id = Stock.sucursal_id
GROUP BY 
    Sucursal.id, Sucursal.nombre;

-- 3) Obtener el total de ventas por cliente.
SELECT 
    Cliente.id AS cliente_id,
    Cliente.nombre AS nombre_cliente,
    SUM(Item.monto_venta) AS total_ventas
FROM 
    Cliente
JOIN 
    Orden ON Cliente.id = Orden.cliente_id
JOIN 
    Item ON Orden.id = Item.orden_id
GROUP BY 
    Cliente.id, Cliente.nombre;

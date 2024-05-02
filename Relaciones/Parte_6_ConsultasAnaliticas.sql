-- 1) Calcular el precio promedio de los productos en cada categoría
SELECT 
    categoria.nombre AS categoria, 
    AVG(producto.precio_unitario) AS precio_promedio
FROM 
    producto
JOIN 
    categoria 
ON 
    producto.categoria_id = categoria.id
GROUP BY 
    categoria.nombre
ORDER BY categoria.nombre;

-- 2) Obtener la cantidad total de productos en stock por categoría
SELECT 
    categoria.nombre AS categoria, 
    SUM(stock.cantidad) AS total_productos
FROM 
    stock
JOIN 
    producto 
ON 
    stock.producto_id = producto.id
JOIN 
    categoria 
ON 
    producto.categoria_id = categoria.id
GROUP BY 
    categoria.nombre
ORDER BY categoria.nombre;

-- 3) Calcular el total de ventas por sucursal
SELECT 
    sucursal.nombre AS sucursal, 
    SUM(orden.total) AS total_ventas
FROM 
    orden
JOIN 
    sucursal 
ON 
    orden.sucursal_id = sucursal.id
GROUP BY 
    sucursal.nombre
ORDER BY sucursal.nombre;

-- 4) Obtener el cliente que ha realizado el mayor monto de compras
SELECT 
    cliente.nombre AS cliente, 
    SUM(orden.total) AS monto_total
FROM 
    orden
JOIN 
    cliente 
ON 
    orden.cliente_id = cliente.id
GROUP BY 
    cliente.nombre
ORDER BY monto_total DESC LIMIT 1;
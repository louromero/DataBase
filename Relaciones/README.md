### Parte 5: Modificación de Tablas con la Instrucción ALTER TABLE

En esta sección, se nos solicita agregar las restricciones de clave foránea faltantes a las siguientes tablas:

- Producto -> Categoria
- Stock -> Sucursal & Producto
- Orden -> Cliente & Sucursal
- Item -> Orden & Producto

Utilizando la instrucción *ALTER TABLE*, agregaremos estas restricciones de clave foránea para garantizar la integridad referencial en la base de datos.

### Parte 6: Agregando Restricciones y Realizando Consultas

En esta sección, se realizarán consultas analíticas sobre los datos de la base de datos de la cadena de tiendas. Las consultas que se realizarán son las siguientes:

1. Calcular el precio promedio de los productos en cada categoría.
2. Obtener la cantidad total de productos en stock por categoría.
3. Calcular el total de ventas por sucursal.
4. Obtener el cliente que ha realizado el mayor monto de compras.

Los resultados de dichas consultas se pueden observar en los archivos *CSV*
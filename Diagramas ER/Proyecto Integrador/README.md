### Parte 1: Diseñando la BD
El siguiente diagrama ER representa la estructura de la base de datos de una cadena de tiendas.

#### Entidades y Atributos:

- **Categoria**
  - id (Clave Primaria)
  - nombre

- **Producto**
  - id (Clave Primaria)
  - nombre
  - marca
  - categoria_id (Clave Foránea)
  - precio_unitario

- **Sucursal**
  - id (Clave Primaria)
  - nombre
  - direccion

- **Stock**
  - id (Clave Primaria)
  - sucursal_id (Clave Foránea)
  - producto_id (Clave Foránea)
  - cantidad
  (Conjunto único (sucursal_id, producto_id))

- **Cliente**
  - id (Clave Primaria)
  - nombre
  - telefono

- **Orden**
  - id (Clave Primaria)
  - cliente_id (Clave Foránea)
  - sucursal_id (Clave Foránea)
  - fecha
  - total

- **Item**
  - id (Clave Primaria)
  - orden_id (Clave Foránea)
  - producto_id (Clave Foránea)
  - cantidad
  - monto_venta

#### Relaciones:

- Una categoría puede tener muchos productos (Relación "uno a muchos" con clave foránea: categoria_id).
- Un producto puede estar en muchos stocks (Relación "uno a muchos" con clave foránea: producto_id en Stock).
- Una sucursal puede tener muchos stocks (Relación "uno a muchos" con clave foránea: sucursal_id en Stock).
- Una orden está asociada a un cliente y a una sucursal (Relación "uno a muchos" con claves foráneas: cliente_id y sucursal_id).
- Un item está asociado a una orden y a un producto (Relación "uno a muchos" con claves foráneas: orden_id y producto_id).

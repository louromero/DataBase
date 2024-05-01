### Diseño de un diagrama ER

El siguiente diagrama ER representa la estructura de la base de datos para una tienda en línea, incluyendo las relaciones entre las entidades/tablas:

#### Entidades y Atributos:

- **Cliente**
  - ID_Cliente (Clave Primaria)
  - Nombre
  - Dirección
  - Correo electrónico

- **Producto**
  - ID_Producto (Clave Primaria)
  - Nombre
  - Precio
  - Descripción
  - Categoría_ID (Clave Foránea)
  - Proveedor_ID (Clave Foránea)

- **Orden**
  - ID_Orden (Clave Primaria)
  - Fecha de Orden
  - Cliente_ID (Clave Foránea)

- **Categoría**
  - ID_Categoría (Clave Primaria)
  - Nombre

- **Proveedor**
  - ID_Proveedor (Clave Primaria)
  - Nombre
  - Dirección
  - Correo electrónico

- **Reseña**
  - ID_Reseña (Clave Primaria)
  - Cliente_ID (Clave Foránea)
  - Producto_ID (Clave Foránea)
  - Puntuación
  - Comentario

#### Relaciones:

- Una orden está asociada a un cliente (Relación "uno a muchos" con clave foránea: Cliente_ID).
- Un producto pertenece a una categoría (Relación "uno a muchos" con clave foránea: Categoría_ID).
- Un producto puede tener un proveedor (Relación "uno a muchos" con clave foránea: Proveedor_ID).
- Un cliente puede dejar múltiples reseñas (Relación "uno a muchos" con claves foráneas: Cliente_ID y Producto_ID).


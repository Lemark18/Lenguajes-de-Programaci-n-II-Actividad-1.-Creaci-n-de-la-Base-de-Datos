-- Agregar registros a la tabla Empleado
INSERT INTO Empleado (NumeroEmpleado, Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, RFC, CentroTrabajo, Puesto, DescripcionPuesto, Directivo)
VALUES
(1, 'Juan', 'García', 'López', '1990-05-15', 'GAJL900515', 'Tiendas Ángel Flores Ropa', 'Vendedor', 'Atención al cliente', 0),
(2, 'María', 'Martínez', 'Rodríguez', '1985-08-20', 'MARO850820', 'La Primavera Ropa', 'Gerente de Tienda', 'Supervisión de personal y ventas', 1),
(3, 'Pedro', 'Díaz', 'Hernández', '1992-03-10', 'DIHP920310', 'Tiendas Ángel Flores Muebles', 'Diseñador de Interiores', 'Diseño y decoración de espacios', 0),
(4, 'Ana', 'López', 'Gómez', '1988-11-28', 'LOGA881128', 'La Primavera Cajas', 'Contador', 'Registro y control de ingresos y egresos', 0),
(5, 'Luis', 'Fernández', 'Sánchez', '1995-07-03', 'FESA950703', 'La Primavera Muebles', 'Técnico de Mantenimiento', 'Reparación y mantenimiento de muebles', 0);

-- Agregar registros a la tabla CentroTrabajo
INSERT INTO CentroTrabajo (NumeroCentro, NombreCentro, Ciudad)
VALUES
(000201, 'Tiendas Ángel Flores Ropa', 'Culiacán'),
(000202, 'Tiendas Ángel Flores Muebles', 'Culiacán'),
(000203, 'Tiendas Ángel Flores Cajas', 'Culiacán'),
(049001, 'La Primavera Ropa', 'Culiacán'),
(049002, 'La Primavera Muebles', 'Culiacán'),
(049003, 'La Primavera Cajas', 'Culiacán');

-- Agregar registros a la tabla Directivo
INSERT INTO Directivo (NumeroEmpleado, NumeroCentroSupervisa, PrestacionCombustible)
VALUES
(1, 049001, 1),
(2, 049002, 0),
(3, 000201, 1),
(4, 000203, 0),
(5, 000202, 1);

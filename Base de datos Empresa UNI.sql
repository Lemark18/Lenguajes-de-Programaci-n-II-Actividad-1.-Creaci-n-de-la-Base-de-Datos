-- Agregar registros a la tabla Empleado
INSERT INTO Empleado (NumeroEmpleado, Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, RFC, CentroTrabajo, Puesto, DescripcionPuesto, Directivo)
VALUES
(1, 'Juan', 'Garc�a', 'L�pez', '1990-05-15', 'GAJL900515', 'Tiendas �ngel Flores Ropa', 'Vendedor', 'Atenci�n al cliente', 0),
(2, 'Mar�a', 'Mart�nez', 'Rodr�guez', '1985-08-20', 'MARO850820', 'La Primavera Ropa', 'Gerente de Tienda', 'Supervisi�n de personal y ventas', 1),
(3, 'Pedro', 'D�az', 'Hern�ndez', '1992-03-10', 'DIHP920310', 'Tiendas �ngel Flores Muebles', 'Dise�ador de Interiores', 'Dise�o y decoraci�n de espacios', 0),
(4, 'Ana', 'L�pez', 'G�mez', '1988-11-28', 'LOGA881128', 'La Primavera Cajas', 'Contador', 'Registro y control de ingresos y egresos', 0),
(5, 'Luis', 'Fern�ndez', 'S�nchez', '1995-07-03', 'FESA950703', 'La Primavera Muebles', 'T�cnico de Mantenimiento', 'Reparaci�n y mantenimiento de muebles', 0);

-- Agregar registros a la tabla CentroTrabajo
INSERT INTO CentroTrabajo (NumeroCentro, NombreCentro, Ciudad)
VALUES
(000201, 'Tiendas �ngel Flores Ropa', 'Culiac�n'),
(000202, 'Tiendas �ngel Flores Muebles', 'Culiac�n'),
(000203, 'Tiendas �ngel Flores Cajas', 'Culiac�n'),
(049001, 'La Primavera Ropa', 'Culiac�n'),
(049002, 'La Primavera Muebles', 'Culiac�n'),
(049003, 'La Primavera Cajas', 'Culiac�n');

-- Agregar registros a la tabla Directivo
INSERT INTO Directivo (NumeroEmpleado, NumeroCentroSupervisa, PrestacionCombustible)
VALUES
(1, 049001, 1),
(2, 049002, 0),
(3, 000201, 1),
(4, 000203, 0),
(5, 000202, 1);

use EmpresaUNI
-- Crear la tabla Empleado
CREATE TABLE Empleado (
    NumeroEmpleado INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    ApellidoPaterno NVARCHAR(100),
    ApellidoMaterno NVARCHAR(100),
    FechaNacimiento DATE,
    RFC NVARCHAR(20),
    CentroTrabajo NVARCHAR(100),
    Puesto NVARCHAR(100),
    DescripcionPuesto NVARCHAR(255),
    Directivo BIT
);

-- Crear la tabla CentroTrabajo
CREATE TABLE CentroTrabajo (
    NumeroCentro INT PRIMARY KEY,
    NombreCentro NVARCHAR(100),
    Ciudad NVARCHAR(100)
);

-- Crear la tabla Directivo
CREATE TABLE Directivo (
    NumeroEmpleado INT PRIMARY KEY,
    NumeroCentroSupervisa INT,
    PrestacionCombustible BIT,
    FOREIGN KEY (NumeroEmpleado) REFERENCES Empleado(NumeroEmpleado),
    FOREIGN KEY (NumeroCentroSupervisa) REFERENCES CentroTrabajo(NumeroCentro)
);

-- Crear la tabla CentroTrabajo
CREATE TABLE CentroTrabajo (
    NumeroCentro INT PRIMARY KEY,
    NombreCentro NVARCHAR(100),
    Ciudad NVARCHAR(100)
);

-- Insertar datos en la tabla CentroTrabajo
INSERT INTO CentroTrabajo (NumeroCentro, NombreCentro, Ciudad)
VALUES
(000201, 'Tiendas �ngel Flores Ropa', 'Culiac�n'),
(000202, 'Tiendas �ngel Flores Muebles', 'Culiac�n'),
(000203, 'Tiendas �ngel Flores Cajas', 'Culiac�n'),
(049001, 'La Primavera Ropa', 'Culiac�n'),
(049002, 'La Primavera Muebles', 'Culiac�n'),
(049003, 'La Primavera Cajas', 'Culiac�n');
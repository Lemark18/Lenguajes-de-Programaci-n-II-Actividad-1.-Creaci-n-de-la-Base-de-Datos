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
(000201, 'Tiendas Ángel Flores Ropa', 'Culiacán'),
(000202, 'Tiendas Ángel Flores Muebles', 'Culiacán'),
(000203, 'Tiendas Ángel Flores Cajas', 'Culiacán'),
(049001, 'La Primavera Ropa', 'Culiacán'),
(049002, 'La Primavera Muebles', 'Culiacán'),
(049003, 'La Primavera Cajas', 'Culiacán');
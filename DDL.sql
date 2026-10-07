CREATE DATABASE Veterinaria_mi_mejor_amigo;

USE Veterinaria_mi_mejor_amigo;

CREATE TABLE Direccion (
    id_Direccion INT PRIMARY KEY AUTO_INCREMENT,
    Ciudad VARCHAR(100) NOT NULL,
    Zona VARCHAR(100) NOT NULL,
    Calle VARCHAR(100) NOT NULL,
    Avenida VARCHAR(100) NOT NULL,
    Numero_de_Casa VARCHAR(10) NOT NULL
);

CREATE TABLE Duenos (
    Cedula VARCHAR(20) PRIMARY KEY,
    Nombre_completo VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    id_Direccion INT,
    FOREIGN KEY (id_Direccion) REFERENCES Direccion(id_Direccion)
);

CREATE TABLE Mascotas (
    id_Mascota INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Especie VARCHAR(100) NOT NULL,
    Raza VARCHAR(100) NOT NULL,
    Edad INT NOT NULL,
    Sexo VARCHAR(100) NOT NULL,
    Vacunado BOOLEAN NOT NULL,
    id_Dueno VARCHAR(20), -- Cambiado a VARCHAR(20) para coincidir exactamente con Cedula
    FOREIGN KEY (id_Dueno) REFERENCES Duenos(Cedula)
);

CREATE TABLE Servicios (
    id_Servicio INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_de_servicio VARCHAR(200) NOT NULL,
    Descripcion_servicio VARCHAR(300) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Visitas (
    id_Visita INT PRIMARY KEY AUTO_INCREMENT,
    Fecha_servicio DATETIME NOT NULL,
    id_Servicio INT,
    id_Mascota INT,
    FOREIGN KEY (id_Servicio) REFERENCES Servicios(id_Servicio),
    FOREIGN KEY (id_Mascota) REFERENCES Mascotas(id_Mascota)
);

CREATE TABLE Tratamientos (
    id_Tratamiento INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_tratamiento VARCHAR(100) NOT NULL,
    Observaciones_tratamiento VARCHAR(500) NOT NULL,
    id_Visita INT,
    FOREIGN KEY (id_Visita) REFERENCES Visitas(id_Visita)
);
-- Registro de datos en las tablas

--registro de direcciones
INSERT INTO Direccion (Ciudad, Zona, Calle, Avenida, Numero_de_Casa) VALUES
('Ciudad A', 'Zona 1', 'Calle 1', 'Avenida 1', '101'),
('Ciudad B', 'Zona 2', 'Calle 2', 'Avenida 2', '202'),
('Ciudad C', 'Zona 3', 'Calle 3', 'Avenida 3', '303'),
('Ciudad D', 'Zona 4', 'Calle 4', 'Avenida 4', '404'),
('Ciudad E', 'Zona 5', 'Calle 5', 'Avenida 5', '505');

-- registro de dueños
INSERT INTO Duenos (Cedula, Nombre_completo, Telefono, id_Direccion) VALUES
('123456789', 'Juan Pérez', '555-1234', 1),
('987654321', 'María García', '555-5678', 2),
('456789123', 'Carlos López', '555-9012', 3),
('789123456', 'Ana Martínez', '555-3456', 4),
('321654987', 'Luis Rodríguez', '555-7890', 5);

-- registro de mascotas
INSERT INTO Mascotas (Nombre, Especie, Raza, Edad, Sexo, Vacunado, id_Dueno) VALUES
('Firulais', 'Perro', 'Labrador', 3, 'Macho', TRUE, '123456789'),
('Michi', 'Gato', 'Siames', 2, 'Hembra', FALSE, '987654321'),
('Rex', 'Perro', 'Pastor Alemán', 5, 'Macho', TRUE, '456789123'),
('Luna', 'Gato', 'Persa', 1, 'Hembra', TRUE, '789123456'),
('Max', 'Perro', 'Bulldog', 4, 'Macho', FALSE, '321654987'),
('Bella', 'Gato', 'Maine Coon', 3, 'Hembra', TRUE, '123456789'),
('Rocky', 'Perro', 'Beagle', 2, 'Macho', FALSE, '987654321'),
('Nala', 'Gato', 'Bengala', 1, 'Hembra', TRUE, '456789123'),
('Toby', 'Perro', 'Golden Retriever', 6, 'Macho', TRUE, '789123456'),
('Simba', 'Gato', 'Abisinio', 4, 'Macho', FALSE, '321654987');

-- registro de servicios
INSERT INTO Servicios (Nombre_de_servicio, Descripcion_servicio, Precio) VALUES
('Consulta General', 'Evaluación de la salud general de la mascota.', 50.00),
('Vacunación', 'Aplicación de vacunas según el calendario de vacunación.', 30.00),
('Desparasitación', 'Tratamiento para eliminar parásitos internos y externos.', 25.00),
('Cirugía Menor', 'Procedimientos quirúrgicos menores para mascotas.', 150.00),
('Baño y Peluquería', 'Servicio de baño y corte de pelo para mascotas.', 40.00); 

-- registro de visitas
INSERT INTO Visitas (Fecha_servicio, id_Servicio, id_Mascota) VALUES
('2024-01-15 10:00:00', 1, 1),
('2024-02-20 14:30:00', 2, 2),
('2024-03-05 09:15:00', 3, 3),
('2024-04-10 11:45:00', 4, 4),
('2024-05-25 16:00:00', 5, 5),
('2024-06-12 13:30:00', 1, 6),
('2024-07-18 15:00:00', 2, 7),
('2024-08-22 10:45:00', 3, 8),
('2024-09-30 14:15:00', 4, 9),
('2024-10-05 09:30:00', 5, 10);  
   
-- registro de tratamientos
INSERT INTO Tratamientos (Nombre_tratamiento, Observaciones_tratamiento, id_Visita) VALUES
('Tratamiento Antipulgas', 'Se aplicó un tratamiento antipulgas para eliminar infestaciones.', 1),
('Tratamiento Antiparasitario', 'Se administró un tratamiento antiparasitario para prevenir infestaciones.', 2),
('Tratamiento de Herida', 'Se realizó limpieza y sutura de una herida menor.', 3),
('Tratamiento Dental', 'Se realizó limpieza dental y revisión de encías.', 4),
('Tratamiento de Alergia', 'Se administró medicación para tratar una reacción alérgica.', 5);


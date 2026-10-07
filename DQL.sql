-- creacion de tabla a partir de consulta
CREATE TABLE Resumen_Mascotas AS
SELECT 
    m.id_Mascota, 
    m.Nombre, 
    COUNT(v.id_Visita) AS Total_Visitas
FROM Mascotas m
LEFT JOIN Visitas v ON m.id_Mascota = v.id_Mascota
GROUP BY m.id_Mascota, m.Nombre;

-- obtener lista masccotas dando alias nuevoos a las columnas
SELECT 
    Nombre AS Nombre_Mascota, 
    Especie AS Tipo_Animal, 
    Edad AS Edad_Anos 
FROM Mascotas;

-- obtener promedio de edad de las mascotas con alias en subconsulta
SELECT 
    SubConsulta.Especie, 
    SubConsulta.Promedio_Edad
FROM (
    SELECT Especie, AVG(Edad) AS Promedio_Edad
    FROM Mascotas
    GROUP BY Especie
) AS SubConsulta;

-- obtener la cantidad total de dueños registrados 
SELECT COUNT(Cedula) FROM Duenos;

--obtener el total de servicios registrados cambiando el nombre al resultado
SELECT COUNT(*) AS Total_Servicios_Ofrecidos FROM Servicios;

-- obtener el precio promedio de todos los servicios 
SELECT AVG(Precio) AS Precio_Promedio_Servicios FROM Servicios;

-- obtener el precio mas alto y el mas bajo de los servicios 
SELECT 
    MAX(Precio) AS Servicio_Mas_Caro, 
    MIN(Precio) AS Servicio_Mas_Barato 
FROM Servicios;

--obtener el ingreso total de todas las visitas
SELECT SUM(s.Precio) AS Ingresos_Totales
FROM Visitas v
JOIN Servicios s ON v.id_Servicio = s.id_Servicio;

-- obtner la direccion completa de los dueños de mascotas
SELECT 
    id_Direccion, 
    CONCAT(Calle, ', ', Avenida, ', ', Zona, ', ', Ciudad) AS Direccion_Completa 
FROM Direccion;

-- obtener el dueño con su telefono 
SELECT Lista.Duenos_Contacto
FROM (
    SELECT CONCAT(Nombre_completo, ' - Tel: ', Telefono) AS Duenos_Contacto
    FROM Duenos
) AS Lista;

-- obterner el nombre de las mascotas en mayuscula
SELECT UPPER(Nombre) AS Nombre_Mayusculas, Especie FROM Mascotas;

-- obtener el nombre de las mascotas en minuscula
SELECT Nombre_de_servicio, LOWER(Descripcion_servicio) AS Descripcion_Minusc
FROM Servicios;

-- obtener la cantidad de letras de los nombres de los dueños de mascotas
SELECT Nombre_completo, LENGTH(Nombre_completo) AS Longitud_Nombre 
FROM Duenos;

-- sacar las primeras 3 letras de los nombres de los nombres de servicios
SELECT 
    Nombre_de_servicio, 
    SUBSTRING(Nombre_de_servicio, 1, 4) AS Codigo_Servicio 
FROM Servicios;

-- eliminar los espacios en blanco del inicio y dinal del nombre de la calle
SELECT TRIM(Calle) AS Calle_Limpia FROM Direccion;

-- calcular el promedio de precios de servicios redondeando a un decimal
SELECT ROUND(AVG(Precio), 1) AS Promedio_Redondeado FROM Servicios;

-- evaluando si la mascota esta vacunada o no, devolviendo  la frase "Al día" si es true y "No al día" si es false "pendiente"
SELECT 
    Nombre, 
    Especie, 
    IF(Vacunado = TRUE, 'Al Día', 'Pendiente') AS Estado_Vacunacion 
FROM Mascotas;
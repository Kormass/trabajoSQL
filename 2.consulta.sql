SELECT  nombre, apellido1,tipo FROM persona
WHERE telefono isnull
AND tipo = 'alumno';
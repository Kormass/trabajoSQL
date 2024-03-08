SELECT * FROM persona
WHERE EXTRACT(YEAR FROM fecha_nacimiento) = 1995
AND tipo = 'alumno';
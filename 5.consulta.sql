SELECT * FROM asignatura a
INNER JOIN grado g ON a.id_grado = g.id_grado
WHERE g.id_grado = 7 AND a.curso = 3 AND a.cuatrimestre = 1;

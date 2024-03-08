
INSERT INTO curso_escolar (id, anyo_inicio, anyo_final) VALUES
(1, 2022, 2023),
(2, 2023, 2024),
(3, 2024, 2025),
(4, 2025, 2026),
(5, 2026, 2027),
(6, 2027, 2028),
(7, 2028, 2029),
(8, 2029, 2030),
(9, 2030, 2031),
(10, 2031, 2032);


INSERT INTO persona (id, nif, nombre, apellido1, ciudad, direccion, telefono, fecha_nacimiento, sexo, tipo) VALUES
(1, '12345678K', 'John', 'Doe', 'City1', 'Address1', '123456789', '1990-10-02', 'M', 'Profesor'),
(2, '98765432D', 'Jane', 'Smith', 'City2', 'Address2', NULL, '1995-03-05', 'H', 'Alumno'),
(3, '11122334T', 'Alice', 'Johnson', 'City3', 'Address3', '111223344', '1992-04-04', 'M', 'Profesor'),
(4, '55566677A', 'Bob', 'Williams', 'City4', 'Address4', '555666777', '1988-06-06', 'H', 'Alumno'),
(5, '99900011A', 'Eva', 'Davis', 'City5', 'Address5', NULL, '1998-07-07', 'M', 'Alumno'),
(6, '12378945H', 'Michael', 'Brown', 'City6', 'Address6', '123789456', '1999-08-08', 'H', 'Profesor'),
(7, '45632178T', 'Emily', 'Miller', 'City7', 'Address7', '456321789', '1996-09-09', 'M', 'Alumno'),
(8, '78912345W', 'David', 'Garcia', 'City8', 'Address8', '789123456', '1991-10-10', 'H', 'Profesor'),
(9, '65498732Y', 'Sophia', 'Anderson', 'City9', 'Address9', NULL, '1989-10-11', 'M', 'Alumno'),
(10, '98765412G', 'Christopher', 'Taylor', 'City10', 'Address10', '987654123', '1994-12-12', 'H', 'Alumno');


INSERT INTO departamento (id, nombre) VALUES
(1, 'Department of Science'),
(2, 'Department of Literature'),
(3, 'Department of Mathematics'),
(4, 'Department of History'),
(5, 'Department of Languages'),
(6, 'Department of Physics'),
(7, 'Department of Sociology'),
(8, 'Department of Chemistry'),
(9, 'Department of Psychology'),
(10, 'Department of Economics');


INSERT INTO profesor (id_profesor, id_departamento) VALUES
(1, 1),
(3, 2),
(5, 3),
(7, 4),
(9, 5),
(2, 6), 
(4, 7), 
(6, 8), 
(8, 9),
(10, 10);


INSERT INTO grado (id, nombre) VALUES
(1, 'Computer Science'),
(2, 'English Literature'),
(3, 'Mathematics'),
(4, 'History'),
(5, 'Spanish Language and Literature'),
(6, 'Physics'),
(7, 'Sociology'),
(8, 'Chemistry'),
(9, 'Psychology'),
(10, 'Economics');



INSERT INTO asignatura (id, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) VALUES
(1, 'Programming Fundamentals', 6.0, 'Obligatoria', 3, 1, 1, 7),
(2, 'Introduction to Poetry', 5.0, 'Obligatoria', 2, 2, 3, 2),
(3, 'Calculus I', 7.0, 'Obligatoria', 3, 1, 5, 3),
(4, 'World History', 6.0, 'Obligatoria', 4, 2, 7, 4),
(5, 'Spanish Grammar', 5.0, 'Obligatoria', 5, 1, 9, 5),
(6, 'Computer Networks', 6.0, 'Optativa', 1, 2, 2, 1), 
(7, 'Modern American Literature', 5.0, 'Optativa', 2, 1, 4, 2), 
(8, 'Statistics', 7.0, 'Optativa', 3, 2, 6, 3), 
(9, 'Ancient Civilizations', 6.0, 'Optativa', 4, 1, 8, 4), 
(10, 'Advanced Spanish Composition', 5.0, 'Optativa', 5, 2, 10, 5); 



INSERT INTO alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) VALUES
(2, 1, 1),
(4, 3, 2),
(5, 5, 3),
(3, 2, 1),
(1, 4, 2),
(7, 6, 4),
(9, 8, 5),
(10, 10, 6),
(8, 7, 4),
(6, 9, 3);


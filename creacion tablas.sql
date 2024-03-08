CREATE TYPE sexo AS ENUM ('M', 'H');

CREATE TYPE tipo_persona AS ENUM ('profesor', 'alumno');

CREATE TYPE tipo_asignatura AS ENUM ('obligatoria', 'optativa', 'basica');

-- Crear tabla Departamento
CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nombre_departamento VARCHAR(255) NOT NULL
);

-- Crear tabla Persona
CREATE TABLE persona (
    id_persona SERIAL PRIMARY KEY,
    dni VARCHAR(10) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    ciudad VARCHAR(50),
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    fecha_nacimiento DATE,
    sexo sexo,
    tipo tipo_persona
);

CREATE TABLE profesor (
    id_profesor SERIAL PRIMARY KEY,
    id_persona_profesor INTEGER REFERENCES persona(id_persona) ON DELETE CASCADE
);

CREATE TABLE grado (
    id_grado SERIAL PRIMARY KEY,
    nombre_grado VARCHAR(255) NOT NULL
);

CREATE TABLE asignatura (
    id_asignatura INT PRIMARY KEY,
    nombre VARCHAR(100),
    creditos FLOAT,
    tipo tipo_asignatura,
    curso SMALLINT,
    cuatrimestre SMALLINT,
    id_profesor INT,
    id_grado INT,
    FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor),
    FOREIGN KEY (id_grado) REFERENCES grado(id_grado)
);

CREATE TABLE curso_escolar (
    id_curso SERIAL PRIMARY KEY,
    año_inicio INTEGER NOT NULL,
    año_fin INTEGER NOT NULL
);

CREATE TABLE alumno_se_matricula_asignatura (
    id_alumno INTEGER REFERENCES persona(id_persona) ON DELETE CASCADE,
    id_asignatura_matricula INTEGER REFERENCES asignatura(id_asignatura) ON DELETE CASCADE,
    id_curso_matricula INTEGER REFERENCES curso_escolar(id_curso) ON DELETE CASCADE,
    PRIMARY KEY (id_alumno, id_asignatura_matricula, id_curso_matricula)
);


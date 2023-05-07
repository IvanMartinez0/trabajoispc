sql
CREATE TABLE escuela (
    id_escuela INT PRIMARY KEY AUTO_INCREMENT,
    nombre_escuela VARCHAR(50)
);

CREATE TABLE ciclo (
    id_ciclo INT PRIMARY KEY AUTO_INCREMENT,
    nombre_ciclo VARCHAR(50),
    id_escuela INT,
    FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela)
);

CREATE TABLE especialidad (
    id_especialidad INT PRIMARY KEY AUTO_INCREMENT,
    nombre_especialidad VARCHAR(50),
    id_ciclo INT,
    FOREIGN KEY (id_ciclo) REFERENCES ciclo(id_ciclo)
);

CREATE TABLE curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nombre_curso VARCHAR(50),
    id_especialidad INT,
    FOREIGN KEY (id_especialidad) REFERENCES especialidad(id_especialidad)
);

CREATE TABLE materia (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nombre_materia VARCHAR(50)
);

CREATE TABLE alumno (
    id_alumno INT PRIMARY KEY AUTO_INCREMENT,
    nombre_alumno VARCHAR(50),
    apellido_alumno VARCHAR(50),
    fecha_nacimiento DATE
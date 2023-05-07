sql
CREATE TABLE Ciclo (
    Id_ciclo INT PRIMARY KEY AUTO_INCREMENT, 
    Nombre_Ciclo VARCHAR(50),
    Id_Escuela INT,
);

CREATE TABLE Especialidad (
    Id_Especialidad INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Especialidad VARCHAR(50),
    Id_Ciclo INT,
    FOREIGN KEY (Id_Ciclo) REFERENCES Ciclo(Id_Ciclo)
);

CREATE TABLE Curso (
    Id_Curso INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Curso VARCHAR(50),
    Id_Especialidad INT,
    FOREIGN KEY (Id_Especialidad) REFERENCES Especialidad(Id_Especialidad)
);

CREATE TABLE Materia (
    Id_Materia INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Materia VARCHAR(50)
);
CREATE TABLE Barrio (
    Id_Barrio INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Barrio VARCHAR(50)
);
CREATE TABLE Genero (
    Id_Genero INT PRIMARY KEY AUTO_INCREMENT,
);

CREATE TABLE Alumno (
    Id_Alumno INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Alumno VARCHAR(50),
    Apellido_Alumno VARCHAR(50),
    FecNac_Alumno DATE,
    Barrio_Alumno INT,
);

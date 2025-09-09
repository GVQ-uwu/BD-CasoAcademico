DROP TABLE RESULTADO_EVALUACION CASCADE CONSTRAINTS;
DROP TABLE EVALUACION CASCADE CONSTRAINTS;
DROP TABLE INSCRIPCION CASCADE CONSTRAINTS;
DROP TABLE CARRERA_ASIGNATURA CASCADE CONSTRAINTS;
DROP TABLE ESTUDIANTE CASCADE CONSTRAINTS;
DROP TABLE DOCENTE CASCADE CONSTRAINTS;
DROP TABLE ASIGNATURA CASCADE CONSTRAINTS;
DROP TABLE CARRERA CASCADE CONSTRAINTS;
DROP TABLE SEMESTRE CASCADE CONSTRAINTS;
DROP TABLE ESPECIALIDAD CASCADE CONSTRAINTS;
DROP TABLE FACULTAD CASCADE CONSTRAINTS;
DROP TABLE REGION CASCADE CONSTRAINTS;
DROP TABLE COMUNA CASCADE CONSTRAINTS;
DROP TABLE TIPO_EVALUACION CASCADE CONSTRAINTS;

DROP SEQUENCE REGION_SEQ;
DROP SEQUENCE COMUNA_SEQ;
DROP SEQUENCE FACULTAD_SEQ;
DROP SEQUENCE ESPECIALIDAD_SEQ;
DROP SEQUENCE TIPO_EVALUACION_SEQ;
DROP SEQUENCE CARRERA_SEQ;
DROP SEQUENCE ASIGNAURA_SEQ;
DROP SEQUENCE SEMESTRE_SEQ;
DROP SEQUENCE ESTUDIANTE_SEQ;
DROP SEQUENCE DOCENTE_SEQ;
DROP SEQUENCE INSCRIPCION_SEQ;
DROP SEQUENCE EVALUACION_SEQ;
DROP SEQUENCE RESULTADO_SEQ;


CREATE SEQUENCE region_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE comuna_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE facultad_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE especialidad_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE tipo_evaluacion_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE carrera_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE asignatura_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE semestre_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE estudiante_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE docente_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE inscripcion_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE evaluacion_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE resultado_seq START WITH 1 INCREMENT BY 1;

CREATE TABLE Region (
    id_region NUMBER PRIMARY KEY,
    nombre_region VARCHAR2(100) NOT NULL UNIQUE
);

CREATE TABLE Comuna (
    id_comuna NUMBER PRIMARY KEY,
    nombre_comuna VARCHAR2(100) NOT NULL,
    id_region NUMBER NOT NULL,
    CONSTRAINT fk_comuna_region FOREIGN KEY (id_region) REFERENCES Region(id_region)
);

CREATE TABLE Facultad (
    id_facultad NUMBER PRIMARY KEY,
    nombre_facultad VARCHAR2(100) NOT NULL UNIQUE
);

CREATE TABLE Especialidad (
    id_especialidad NUMBER PRIMARY KEY,
    nombre_especialidad VARCHAR2(100) NOT NULL UNIQUE
);

CREATE TABLE Tipo_Evaluacion (
    id_tipo_evaluacion NUMBER PRIMARY KEY,
    nombre_tipo_evaluacion VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE Carrera (
    id_carrera NUMBER PRIMARY KEY,
    codigo_carrera VARCHAR2(10) NOT NULL UNIQUE,
    nombre_carrera VARCHAR2(100) NOT NULL,
    id_facultad NUMBER NOT NULL,
    CONSTRAINT fk_carrera_facultad FOREIGN KEY (id_facultad) REFERENCES Facultad(id_facultad)
);

CREATE TABLE Asignatura (
    id_asignatura NUMBER PRIMARY KEY,
    codigo_asignatura VARCHAR2(10) NOT NULL UNIQUE,
    nombre_asignatura VARCHAR2(100) NOT NULL,
    creditos NUMBER(2) NOT NULL,
    nivel NUMBER(2) NOT NULL
);

CREATE TABLE Semestre (
    id_semestre NUMBER PRIMARY KEY,
    ano_semestre NUMBER(4) NOT NULL,
    periodo_semestre NUMBER(1) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_termino DATE NOT NULL,
    CONSTRAINT uq_semestre_unico UNIQUE (ano_semestre, periodo_semestre)
);

CREATE TABLE Estudiante (
    id_estudiante NUMBER PRIMARY KEY,
    rut_estudiante NUMBER(8) NOT NULL UNIQUE,
    dv_estudiante CHAR(1) NOT NULL,
    nombres_estudiante VARCHAR2(100) NOT NULL,
    apellido_paterno_est VARCHAR2(50) NOT NULL,
    apellido_materno_est VARCHAR2(50),
    ano_ingreso NUMBER(4) NOT NULL,
    id_carrera NUMBER NOT NULL,
    id_comuna NUMBER NOT NULL,
    CONSTRAINT fk_estudiante_carrera FOREIGN KEY (id_carrera) REFERENCES Carrera(id_carrera),
    CONSTRAINT fk_estudiante_comuna FOREIGN KEY (id_comuna) REFERENCES Comuna(id_comuna)
);

CREATE TABLE Docente (
    id_docente NUMBER PRIMARY KEY,
    rut_docente NUMBER(8) NOT NULL UNIQUE,
    dv_docente CHAR(1) NOT NULL,
    nombres VARCHAR2(100) NOT NULL,
    apellido_paterno_doc VARCHAR2(50) NOT NULL,
    apellido_materno_doc VARCHAR2(50),
    id_especialidad NUMBER NOT NULL,
    id_comuna NUMBER NOT NULL,
    CONSTRAINT fk_docente_especialidad FOREIGN KEY (id_especialidad) REFERENCES Especialidad(id_especialidad),
    CONSTRAINT fk_docente_comuna FOREIGN KEY (id_comuna) REFERENCES Comuna(id_comuna)
);

CREATE TABLE Carrera_Asignatura (
    id_carrera NUMBER,
    id_asignatura NUMBER,
    PRIMARY KEY (id_carrera, id_asignatura),
    CONSTRAINT fk_ca_carrera FOREIGN KEY (id_carrera) REFERENCES Carrera(id_carrera),
    CONSTRAINT fk_ca_asignatura FOREIGN KEY (id_asignatura) REFERENCES Asignatura(id_asignatura)
);

CREATE TABLE Evaluacion (
    id_evaluacion NUMBER PRIMARY KEY,
    fecha_evaluacion DATE NOT NULL,
    puntaje_maximo NUMBER(3) NOT NULL,
    id_tipo_evaluacion NUMBER NOT NULL,
    id_asignatura NUMBER NOT NULL,
    CONSTRAINT fk_evaluacion_tipo FOREIGN KEY (id_tipo_evaluacion) REFERENCES Tipo_Evaluacion(id_tipo_evaluacion),
    CONSTRAINT fk_evaluacion_asignatura FOREIGN KEY (id_asignatura) REFERENCES Asignatura(id_asignatura)
);

CREATE TABLE Inscripcion (
    id_inscripcion NUMBER PRIMARY KEY,
    nota_final NUMBER(3, 1),
    id_estudiante NUMBER NOT NULL,
    id_asignatura NUMBER NOT NULL,
    id_docente NUMBER NOT NULL,
    id_semestre NUMBER NOT NULL,
    CONSTRAINT fk_inscripcion_estudiante FOREIGN KEY (id_estudiante) REFERENCES Estudiante(id_estudiante),
    CONSTRAINT fk_inscripcion_asignatura FOREIGN KEY (id_asignatura) REFERENCES Asignatura(id_asignatura),
    CONSTRAINT fk_inscripcion_docente FOREIGN KEY (id_docente) REFERENCES Docente(id_docente),
    CONSTRAINT fk_inscripcion_semestre FOREIGN KEY (id_semestre) REFERENCES Semestre(id_semestre),
    CONSTRAINT uq_inscripcion_unica UNIQUE (id_estudiante, id_asignatura, id_semestre)
);

CREATE TABLE Resultado_Evaluacion (
    id_resultado NUMBER PRIMARY KEY,
    puntaje_obtenido NUMBER(3) NOT NULL,
    id_inscripcion NUMBER NOT NULL,
    id_evaluacion NUMBER NOT NULL,
    CONSTRAINT fk_resultado_inscripcion FOREIGN KEY (id_inscripcion) REFERENCES Inscripcion(id_inscripcion),
    CONSTRAINT fk_resultado_evaluacion FOREIGN KEY (id_evaluacion) REFERENCES Evaluacion(id_evaluacion),
    CONSTRAINT uq_resultado_unico UNIQUE (id_inscripcion, id_evaluacion)
);

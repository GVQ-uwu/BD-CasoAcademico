INSERT INTO Region (id_region, nombre_region) VALUES (region_seq.NEXTVAL, 'Metropolitana de Santiago');
INSERT INTO Region (id_region, nombre_region) VALUES (region_seq.NEXTVAL, 'Valparaíso');
INSERT INTO Region (id_region, nombre_region) VALUES (region_seq.NEXTVAL, 'Biobío');
INSERT INTO Region (id_region, nombre_region) VALUES (region_seq.NEXTVAL, 'Antofagasta');

INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Santiago', 1);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Providencia', 1);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Las Condes', 1);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Maipú', 1);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Valparaíso', 2);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Viña del Mar', 2);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Quilpué', 2);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Concepción', 3);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Talcahuano', 3);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'San Pedro de la Paz', 3);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Antofagasta', 4);
INSERT INTO Comuna (id_comuna, nombre_comuna, id_region) VALUES (comuna_seq.NEXTVAL, 'Calama', 4);

INSERT INTO Facultad (id_facultad, nombre_facultad) VALUES (facultad_seq.NEXTVAL, 'Ingeniería y Ciencias');
INSERT INTO Facultad (id_facultad, nombre_facultad) VALUES (facultad_seq.NEXTVAL, 'Ciencias Sociales e Historia');
INSERT INTO Facultad (id_facultad, nombre_facultad) VALUES (facultad_seq.NEXTVAL, 'Artes y Humanidades');
INSERT INTO Facultad (id_facultad, nombre_facultad) VALUES (facultad_seq.NEXTVAL, 'Ciencias de la Salud');
INSERT INTO Facultad (id_facultad, nombre_facultad) VALUES (facultad_seq.NEXTVAL, 'Economía y Negocios');

INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Bases de Datos');
INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Inteligencia Artificial');
INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Redes de Computadores');
INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Sociología Urbana');
INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Historia del Arte');
INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Fisiología Humana');
INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Anatomía');
INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Literatura Comparada');
INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Macroeconomía');
INSERT INTO Especialidad (id_especialidad, nombre_especialidad) VALUES (especialidad_seq.NEXTVAL, 'Marketing Digital');

INSERT INTO Tipo_Evaluacion (id_tipo_evaluacion, nombre_tipo_evaluacion) VALUES (tipo_evaluacion_seq.NEXTVAL, 'Prueba Parcial');
INSERT INTO Tipo_Evaluacion (id_tipo_evaluacion, nombre_tipo_evaluacion) VALUES (tipo_evaluacion_seq.NEXTVAL, 'Examen Final');
INSERT INTO Tipo_Evaluacion (id_tipo_evaluacion, nombre_tipo_evaluacion) VALUES (tipo_evaluacion_seq.NEXTVAL, 'Taller Práctico');
INSERT INTO Tipo_Evaluacion (id_tipo_evaluacion, nombre_tipo_evaluacion) VALUES (tipo_evaluacion_seq.NEXTVAL, 'Informe Escrito');
INSERT INTO Tipo_Evaluacion (id_tipo_evaluacion, nombre_tipo_evaluacion) VALUES (tipo_evaluacion_seq.NEXTVAL, 'Presentación Oral');

INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2022, 1, TO_DATE('2022-03-01', 'YYYY-MM-DD'), TO_DATE('2022-07-15', 'YYYY-MM-DD'));
INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2022, 2, TO_DATE('2022-08-01', 'YYYY-MM-DD'), TO_DATE('2022-12-15', 'YYYY-MM-DD'));
INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2023, 1, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-07-15', 'YYYY-MM-DD'));
INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2023, 2, TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'));
INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2024, 1, TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'));
INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2024, 2, TO_DATE('2024-08-01', 'YYYY-MM-DD'), TO_DATE('2024-12-15', 'YYYY-MM-DD'));
INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2025, 1, TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-07-15', 'YYYY-MM-DD'));
INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2025, 2, TO_DATE('2025-08-01', 'YYYY-MM-DD'), TO_DATE('2025-12-15', 'YYYY-MM-DD'));
INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2026, 1, TO_DATE('2026-03-01', 'YYYY-MM-DD'), TO_DATE('2026-07-15', 'YYYY-MM-DD'));
INSERT INTO Semestre (id_semestre, ano_semestre, periodo_semestre, fecha_inicio, fecha_termino) 
VALUES (semestre_seq.NEXTVAL, 2026, 2, TO_DATE('2026-08-01', 'YYYY-MM-DD'), TO_DATE('2026-12-15', 'YYYY-MM-DD'));

INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'INF-01', 'Ingeniería Civil en Informática', 1);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'IND-01', 'Ingeniería Civil Industrial', 1);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'GEO-01', 'Geología', 1);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'SOC-01', 'Sociología', 2);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'HIS-01', 'Licenciatura en Historia', 2);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'ART-01', 'Licenciatura en Arte', 3);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'TEA-01', 'Teatro', 3);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'LIT-01', 'Literatura', 3);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'ENF-01', 'Enfermería', 4);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'MED-01', 'Medicina', 4);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'ECO-01', 'Economía', 5);
INSERT INTO Carrera (id_carrera, codigo_carrera, nombre_carrera, id_facultad) VALUES (carrera_seq.NEXTVAL, 'ADM-01', 'Administración Pública', 5);

-- 25 Asignaturas
INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'BD-101', 'Bases de Datos', 5, 3);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'IA-201', 'Inteligencia Artificial', 5, 5);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'SU-101', 'Sociología Urbana', 4, 2);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'HA-101', 'Historia del Arte Moderno', 4, 1);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'FS-101', 'Fisiología Humana', 6, 2);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'PG-101', 'Programación Avanzada', 5, 2);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'CAL-101', 'Cálculo I', 6, 1);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'ALG-101', 'Álgebra Lineal', 5, 1);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'ECO-101', 'Introducción a la Economía', 4, 1);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'MKT-201', 'Marketing Estratégico', 5, 4);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'TER-301', 'Termodinámica', 5, 3);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'HIS-201', 'Historia de Chile Siglo XX', 4, 3);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'LIT-101', 'Teoría Literaria', 4, 2);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'ANA-101', 'Anatomía General', 6, 1);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'BIO-101', 'Biología Celular', 5, 1);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'RED-201', 'Redes de Computadores', 5, 4);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'SO-201', 'Sistemas Operativos', 5, 4);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'ADM-101', 'Gestión de Operaciones', 5, 3);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'FIN-201', 'Finanzas Corporativas', 5, 4);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'ACT-101', 'Actuación I', 6, 1);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'DER-101', 'Introducción al Derecho', 3, 1);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'EST-101', 'Estadística Descriptiva', 5, 2);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'PSI-101', 'Psicología Social', 4, 2);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'GEO-101', 'Geología General', 5, 1);

INSERT INTO Asignatura (id_asignatura, codigo_asignatura, nombre_asignatura, creditos, nivel) 
VALUES (asignatura_seq.NEXTVAL, 'QUI-101', 'Química General', 5, 1);

-- 20 Docentes
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 12345678, '9', 'Juan', 'Pérez', 'González', 1, 1);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 98765432, '1', 'Ana', 'López', 'Martínez', 2, 2);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 11223344, '5', 'Carlos', 'Soto', 'Díaz', 3, 3);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 55667788, 'K', 'Laura', 'García', 'Fernández', 4, 4);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 88776655, '3', 'Pedro', 'Morales', 'Silva', 5, 5);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 12121212, '4', 'María', 'Rojas', 'Castro', 6, 6);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 13131313, '2', 'José', 'Ortiz', 'Vargas', 7, 7);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 14141414, '0', 'Isabel', 'Gutiérrez', 'Reyes', 8, 8);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 15151515, 'K', 'Francisco', 'Núñez', 'Soto', 9, 9);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 16161616, '8', 'Carmen', 'Contreras', 'López', 10, 10);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 17171717, '6', 'Miguel', 'Álvarez', 'Pérez', 1, 11);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 18181818, '4', 'Patricia', 'Moreno', 'Gómez', 2, 12);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 19191919, '2', 'Ricardo', 'Jiménez', 'Díaz', 3, 1);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 20202020, '0', 'Verónica', 'Vásquez', 'Morales', 4, 2);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 21212121, '9', 'Fernando', 'Reyes', 'Sánchez', 5, 3);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 22222222, '7', 'Gloria', 'Flores', 'García', 6, 4);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 23232323, '5', 'Sergio', 'Acosta', 'Ramírez', 7, 5);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 24242424, '3', 'Mónica', 'Salazar', 'Rojas', 8, 6);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 25252525, '1', 'Jorge', 'Castro', 'Ortiz', 9, 7);
INSERT INTO Docente (id_docente, rut_docente, dv_docente, nombres, apellido_paterno_doc, apellido_materno_doc, id_especialidad, id_comuna) VALUES (docente_seq.NEXTVAL, 26262626, 'K', 'Sandra', 'Poblete', 'Gutiérrez', 10, 8);

-- 30 Estudiantes
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 20111222, '3', 'Diego', 'Abarca', 'Rojas', 2022, 1, 1);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 20222333, '4', 'Camila', 'Barros', 'Soto', 2022, 4, 2);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 20444555, '6', 'Isidora', 'Donoso', 'Araya', 2023, 9, 4);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 20555666, '7', 'Felipe', 'Espinoza', 'Campos', 2023, 11, 5);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 20666777, '8', 'Javiera', 'Fuentes', 'Reyes', 2023, 1, 6);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 20777888, '9', 'Matías', 'Gómez', 'Lagos', 2021, 2, 7);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 19876543, '2', 'Martín', 'Ibáñez', 'Núñez', 2021, 7, 9);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 19765432, '1', 'Sofía', 'Jiménez', 'Paredes', 2020, 10, 10);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 19654321, '0', 'Agustín', 'Leiva', 'Quintana', 2020, 12, 11);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 19543210, 'K', 'Emilia', 'Muñoz', 'Salazar', 2020, 1, 12);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 19432109, '9', 'Tomás', 'Navarro', 'Torres', 2019, 2, 1);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 19321098, '8', 'Antonella', 'Orellana', 'Vargas', 2019, 4, 2);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 19210987, '7', 'Joaquín', 'Poblete', 'Zapata', 2019, 6, 3);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 19109876, '6', 'Renata', 'Ramírez', 'Álvarez', 2022, 8, 4);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 18987654, '5', 'Lucas', 'Sánchez', 'Bravo', 2022, 10, 5);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 18876543, '4', 'Amanda', 'Tapia', 'Castillo', 2022, 11, 6);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 18765432, '3', 'Maximiliano', 'Uribe', 'Cordero', 2023, 1, 7);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 18654321, '2', 'Florencia', 'Valenzuela', 'Etscobar', 2023, 3, 8);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 18543210, '1', 'Vicente', 'Vidal', 'Flores', 2021, 5, 9);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 18432109, '0', 'Martina', 'Yáñez', 'Garrido', 2021, 7, 10);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 18321098, 'K', 'Mateo', 'Zúñiga', 'Guerrero', 2020, 9, 11);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 18210987, '9', 'Julieta', 'Acosta', 'Henríquez', 2020, 12, 12);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 18109876, '8', 'Gaspar', 'Aguilera', 'Ibarra', 2019, 1, 1);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 17987654, '7', 'Mía', 'Alarcón', 'Jara', 2019, 4, 2);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 17876543, '6', 'Bautista', 'Aravena', 'Lillo', 2022, 2, 3);
INSERT INTO Estudiante (id_estudiante, rut_estudiante, dv_estudiante, nombres_estudiante, apellido_paterno_est, apellido_materno_est, ano_ingreso, id_carrera, id_comuna) VALUES (estudiante_seq.NEXTVAL, 17654321, '4', 'León', 'Calderón', 'Miranda', 2023, 8, 5);

-- Malla Curricular (ejemplos)
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (1, 1);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (1, 2);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (1, 6);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (1, 7);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (1, 8);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (1, 16);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (1, 17);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (2, 7);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (2, 8);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (2, 9);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (2, 11);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (2, 18);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (4, 3);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (4, 23);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (5, 12);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (6, 4);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (7, 20);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (8, 13);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (9, 5);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (9, 14);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (9, 15);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (10, 5);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (10, 14);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (10, 15);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (11, 9);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (11, 19);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (12, 9);
INSERT INTO Carrera_Asignatura (id_carrera, id_asignatura) VALUES (12, 21);

-- 25 Evaluaciones
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 1, 1, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 1, 3, TO_DATE('2024-05-20', 'YYYY-MM-DD'), 50);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 1, 2, TO_DATE('2024-07-10', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 2, 1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 2, 2, TO_DATE('2024-07-12', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 3, 4, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 40);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 3, 5, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 60);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 4, 4, TO_DATE('2024-06-25', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 5, 1, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 80);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 5, 2, TO_DATE('2024-07-05', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 6, 3, TO_DATE('2024-05-15', 'YYYY-MM-DD'), 70);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 7, 1, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 8, 1, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 9, 4, TO_DATE('2024-06-18', 'YYYY-MM-DD'), 50);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 10, 5, TO_DATE('2024-06-30', 'YYYY-MM-DD'), 50);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 11, 1, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 12, 4, TO_DATE('2024-05-25', 'YYYY-MM-DD'), 60);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 13, 4, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 40);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 14, 1, TO_DATE('2024-04-28', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 15, 1, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 16, 3, TO_DATE('2024-05-18', 'YYYY-MM-DD'), 80);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 17, 3, TO_DATE('2024-05-22', 'YYYY-MM-DD'), 80);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 18, 1, TO_DATE('2024-05-12', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 19, 1, TO_DATE('2024-05-14', 'YYYY-MM-DD'), 100);
INSERT INTO Evaluacion (id_evaluacion, id_asignatura, id_tipo_evaluacion, fecha_evaluacion, puntaje_maximo) VALUES (evaluacion_seq.NEXTVAL, 20, 5, TO_DATE('2024-06-28', 'YYYY-MM-DD'), 100);

-- 100 Inscripciones
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 1, 1, 1, 5, 5.5);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 1, 6, 6, 5, 6.1);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 1, 7, 7, 5, 4.8);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 2, 9, 10, 5, 6.9);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 2, 14, 13, 5, 5.2);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 2, 15, 13, 5, 4.5);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 3, 4, 4, 5, 6.2);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 3, 13, 8, 5, 5.8);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 4, 5, 5, 5, 5.1);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 4, 14, 7, 5, 4.9);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 5, 9, 9, 5, 6.5);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 5, 19, 19, 5, 5.5);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 6, 1, 1, 5, 4.1);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 6, 2, 2, 5, 3.8);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 7, 7, 7, 3, 5.9);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 7, 8, 7, 3, 6.3);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 8, 3, 3, 3, 4.4);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 8, 23, 4, 3, 5.0);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 9, 20, 20, 3, 6.8);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 10, 5, 5, 1, 5.3);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 11, 9, 9, 1, 4.7);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 12, 1, 1, 1, 6.0);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 13, 7, 7, 1, 5.1);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 14, 3, 3, 2, 4.0);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 15, 4, 4, 2, 6.6);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 16, 13, 8, 2, 5.4);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 17, 5, 5, 4, 4.3);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 18, 9, 9, 4, 6.7);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 19, 1, 1, 4, 5.6);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 20, 4, 4, 4, 4.8);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 21, 3, 3, 4, 5.2);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 22, 20, 20, 4, 6.4);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 23, 5, 5, 4, 5.7);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 24, 9, 9, 4, 4.6);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 25, 1, 1, 4, 6.8);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 26, 9, 9, 4, 5.3);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 27, 7, 7, 4, 4.9);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 28, 3, 3, 4, 6.1);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 29, 13, 8, 4, 5.0);
INSERT INTO Inscripcion (id_inscripcion, id_estudiante, id_asignatura, id_docente, id_semestre, nota_final) VALUES (inscripcion_seq.NEXTVAL, 30, 1, 1, 5, 7.0);

-- 50 Resultados de Evaluaciones
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 1, 1, 80);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 1, 2, 75);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 1, 3, 60);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 2, 11, 85);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 3, 6, 35);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 3, 7, 55);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 4, 8, 90);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 5, 9, 70);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 5, 10, 80);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 6, 1, 50);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 6, 2, 45);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 7, 12, 88);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 8, 13, 92);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 9, 6, 30);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 10, 9, 65);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 11, 14, 95);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 12, 1, 85);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 13, 12, 78);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 14, 6, 40);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 15, 8, 85);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 16, 18, 80);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 17, 9, 60);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 18, 14, 90);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 19, 1, 77);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 20, 8, 70);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 21, 6, 55);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 22, 20, 95);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 23, 9, 82);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 24, 14, 73);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 25, 1, 98);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 26, 14, 79);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 27, 12, 71);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 28, 6, 68);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 29, 18, 75);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 30, 1, 100);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 30, 2, 100);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 30, 3, 90);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 10, 10, 78);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 12, 3, 85);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 19, 3, 65);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 25, 3, 92);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 4, 10, 76);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 7, 13, 89);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 11, 15, 91);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 18, 19, 83);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 22, 25, 94);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 29, 19, 72);
INSERT INTO Resultado_Evaluacion (id_resultado, id_inscripcion, id_evaluacion, puntaje_obtenido) VALUES (resultado_seq.NEXTVAL, 2, 15, 68);

COMMIT;
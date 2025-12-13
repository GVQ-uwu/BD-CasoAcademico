db = db.getSiblingDB('SistemaAcademico');

// limpieza de las colecciones

db.estudiante.drop();
//db.carrera_asignatura.drop(); esta implicita en carrera hola
db.inscripcion.drop();
db.evaluacion.drop();
db.resultado_evaluacion.drop();
db.especialidad.drop();
db.semestre.drop();
db.asignatura.drop();
db.carrera.drop();
db.docente.drop();
db.region.drop()
db.comuna.drop()
db.facultad.drop()
db.tipo_evaluacion.drop()


// Tabla / Colección 'Estudiante'
db.estudiante.insertMany([
  {
    "_id": 1,
    "rut_estudiante": 20123456,
    "dv_estudiante": "7",
    "nombres_estudiante": "María José",
    "apellido_paterno_est": "González",
    "apellido_materno_est": "Silva",
    "ano_ingreso": 2022,
    "id_carrera": 1,
    "id_comuna": 1
  },
  {
    "_id": 2,
    "rut_estudiante": 20234567,
    "dv_estudiante": "3",
    "nombres_estudiante": "Roberto",
    "apellido_paterno_est": "Martínez",
    "apellido_materno_est": "López",
    "ano_ingreso": 2021,
    "id_carrera": 1,
    "id_comuna": 2
  },
  {
    "_id": 3,
    "rut_estudiante": 20345678,
    "dv_estudiante": "K",
    "nombres_estudiante": "Camila",
    "apellido_paterno_est": "Rojas",
    "apellido_materno_est": "Fernández",
    "ano_ingreso": 2023,
    "id_carrera": 4,
    "id_comuna": 3
  },
  {
    "_id": 4,
    "rut_estudiante": 20456789,
    "dv_estudiante": "9",
    "nombres_estudiante": "Diego",
    "apellido_paterno_est": "Valenzuela",
    "apellido_materno_est": "Muñoz",
    "ano_ingreso": 2022,
    "id_carrera": 2,
    "id_comuna": 4
  },
  {
    "_id": 5,
    "rut_estudiante": 20567890,
    "dv_estudiante": "2",
    "nombres_estudiante": "Valentina",
    "apellido_paterno_est": "Soto",
    "apellido_materno_est": "Pinto",
    "ano_ingreso": 2023,
    "id_carrera": 1,
    "id_comuna": 5
  },
  {
    "_id": 6,
    "rut_estudiante": 20678901,
    "dv_estudiante": "5",
    "nombres_estudiante": "Matías",
    "apellido_paterno_est": "Contreras",
    "apellido_materno_est": "Díaz",
    "ano_ingreso": 2021,
    "id_carrera": 3,
    "id_comuna": 8
  }
]);

// Tabla / Colección 'Evaluacion'
db.evaluacion.insertMany([
  {
    "_id": 1,
    "fecha_evaluacion": ISODate("2023-04-15T00:00:00Z"),
    "puntaje_maximo": 100,
    "id_tipo_evaluacion": 1,
    "id_asignatura": 1
  },
  {
    "_id": 2,
    "fecha_evaluacion": ISODate("2023-05-20T00:00:00Z"),
    "puntaje_maximo": 100,
    "id_tipo_evaluacion": 1,
    "id_asignatura": 1
  },
  {
    "_id": 3,
    "fecha_evaluacion": ISODate("2023-07-10T00:00:00Z"),
    "puntaje_maximo": 150,
    "id_tipo_evaluacion": 2,
    "id_asignatura": 1
  },
  {
    "_id": 4,
    "fecha_evaluacion": ISODate("2023-04-10T00:00:00Z"),
    "puntaje_maximo": 100,
    "id_tipo_evaluacion": 1,
    "id_asignatura": 2
  },
  {
    "_id": 5,
    "fecha_evaluacion": ISODate("2023-05-25T00:00:00Z"),
    "puntaje_maximo": 100,
    "id_tipo_evaluacion": 3,
    "id_asignatura": 2
  },
  {
    "_id": 6,
    "fecha_evaluacion": ISODate("2023-07-12T00:00:00Z"),
    "puntaje_maximo": 150,
    "id_tipo_evaluacion": 2,
    "id_asignatura": 2
  },
  {
    "_id": 7,
    "fecha_evaluacion": ISODate("2023-04-20T00:00:00Z"),
    "puntaje_maximo": 100,
    "id_tipo_evaluacion": 4,
    "id_asignatura": 3
  },
  {
    "_id": 8,
    "fecha_evaluacion": ISODate("2023-06-15T00:00:00Z"),
    "puntaje_maximo": 100,
    "id_tipo_evaluacion": 5,
    "id_asignatura": 3
  }
]);

// Tabla / Colección 'Inscripcion'
db.inscripcion.insertMany([
  {
    "_id": 1,
    "nota_final": 6.5,
    "id_estudiante": 1,
    "id_asignatura": 1,
    "id_docente": 1,
    "id_semestre": 3
  },
  {
    "_id": 2,
    "nota_final": 5.8,
    "id_estudiante": 2,
    "id_asignatura": 1,
    "id_docente": 1,
    "id_semestre": 3
  },
  {
    "_id": 3,
    "nota_final": 7.0,
    "id_estudiante": 5,
    "id_asignatura": 1,
    "id_docente": 1,
    "id_semestre": 3
  },
  {
    "_id": 4,
    "nota_final": 6.2,
    "id_estudiante": 1,
    "id_asignatura": 2,
    "id_docente": 2,
    "id_semestre": 4
  },
  {
    "_id": 5,
    "nota_final": 5.5,
    "id_estudiante": 2,
    "id_asignatura": 2,
    "id_docente": 2,
    "id_semestre": 4
  },
  {
    "_id": 6,
    "nota_final": 6.8,
    "id_estudiante": 3,
    "id_asignatura": 3,
    "id_docente": 4,
    "id_semestre": 3
  },
  {
    "_id": 7,
    "nota_final": 5.0,
    "id_estudiante": 4,
    "id_asignatura": 6,
    "id_docente": 6,
    "id_semestre": 3
  },
  {
    "_id": 8,
    "nota_final": 6.0,
    "id_estudiante": 6,
    "id_asignatura": 6,
    "id_docente": 6,
    "id_semestre": 3
  }
]);

// Tabla / Colección 'Resultado_Evaluacion'
db.resultado_evaluacion.insertMany([
  {
    "_id": 1,
    "puntaje_obtenido": 85,
    "id_inscripcion": 1,
    "id_evaluacion": 1
  },
  {
    "_id": 2,
    "puntaje_obtenido": 78,
    "id_inscripcion": 1,
    "id_evaluacion": 2
  },
  {
    "_id": 3,
    "puntaje_obtenido": 120,
    "id_inscripcion": 1,
    "id_evaluacion": 3
  },
  {
    "_id": 4,
    "puntaje_obtenido": 70,
    "id_inscripcion": 2,
    "id_evaluacion": 1
  },
  {
    "_id": 5,
    "puntaje_obtenido": 65,
    "id_inscripcion": 2,
    "id_evaluacion": 2
  },
  {
    "_id": 6,
    "puntaje_obtenido": 95,
    "id_inscripcion": 2,
    "id_evaluacion": 3
  },
  {
    "_id": 7,
    "puntaje_obtenido": 95,
    "id_inscripcion": 3,
    "id_evaluacion": 1
  }
]);

// Tabla / Colección 'Especialidad'

db.especialidad.insertMany([
  { "_id": 1, "nombre_especialidad": "Bases de Datos" },
  { "_id": 2, "nombre_especialidad": "Inteligencia Artificial" },
  { "_id": 3, "nombre_especialidad": "Redes de Computadores" },
  { "_id": 4, "nombre_especialidad": "Sociología Urbana" },
  { "_id": 5, "nombre_especialidad": "Historia del Arte" }
]);

// Tabla / Colección 'Semestre'

db.semestre.insertMany([
  {"_id": 1, "ano_semestre": 2022, "periodo_semestre": 1, "fecha_inicio": ISODate("2022-03-01T00:00:00Z"), "fecha_termino": ISODate("2022-07-15T00:00:00Z")},
  {"_id": 2, "ano_semestre": 2022, "periodo_semestre": 2, "fecha_inicio": ISODate("2022-08-01T00:00:00Z"), "fecha_termino": ISODate("2022-12-15T00:00:00Z")},
  {"_id": 3, "ano_semestre": 2023, "periodo_semestre": 1, "fecha_inicio": ISODate("2023-03-01T00:00:00Z"), "fecha_termino": ISODate("2023-07-15T00:00:00Z")},
  {"_id": 4, "ano_semestre": 2023, "periodo_semestre": 2, "fecha_inicio": ISODate("2023-08-01T00:00:00Z"), "fecha_termino": ISODate("2023-12-15T00:00:00Z")},
  {"_id": 5, "ano_semestre": 2024, "periodo_semestre": 1, "fecha_inicio": ISODate("2024-03-01T00:00:00Z"), "fecha_termino": ISODate("2024-07-15T00:00:00Z")},
]);

// Tabla / Colección 'Asignatura'

db.asignatura.insertMany([
  { "_id": 1, "codigo_asignatura": "BD-101", "nombre_asignatura": "Bases de Datos", "creditos": 5, "nivel": 3 },
  { "_id": 2, "codigo_asignatura": "IA-201", "nombre_asignatura": "Inteligencia Artificial", "creditos": 5, "nivel": 5 },
  { "_id": 3, "codigo_asignatura": "SU-101", "nombre_asignatura": "Sociología Urbana", "creditos": 4, "nivel": 2 },
  { "_id": 4, "codigo_asignatura": "HA-101", "nombre_asignatura": "Historia del Arte Moderno", "creditos": 4, "nivel": 1 },
  { "_id": 5, "codigo_asignatura": "FS-101", "nombre_asignatura": "Fisiología Humana", "creditos": 6, "nivel": 2 },
    // Se va a añadir una nueva asignatura transversal que puede ir en todas las carreras
  { "_id": 6, "codigo_asignatura": "ETI-001", "nombre_asignatura": "Ética para el Trabajo", "creditos": 2, "nivel": 1 }

]);

// Tabla / Colección 'Carrera'

db.carrera.insertMany([
  {
    "_id": 1,
    "codigo_carrera": "INF-01",
    "nombre_carrera": "Ingeniería Civil en Informática",
    "id_facultad": 1,
    "asignaturas_ids": [1, 2] // Bases de Datos, Inteligencia Artificial
  },
  {
    "_id": 2,
    "codigo_carrera": "IND-01",
    "nombre_carrera": "Ingeniería Civil Industrial",
    "id_facultad": 1,
    "asignaturas_ids": [6] // Ética para el Trabajo (asignatura transversal)
},
  {
    "_id": 3,
    "codigo_carrera": "GEO-01",
    "nombre_carrera": "Geología",
    "id_facultad": 1,
    "asignaturas_ids": [6] // Ética para el Trabajo (asignatura transversal)
  },
  {
    "_id": 4,
    "codigo_carrera": "SOC-01",
    "nombre_carrera": "Sociología",
    "id_facultad": 2,
    "asignaturas_ids": [3] // Sociología Urbana
  },
  {
    "_id": 5,
    "codigo_carrera": "HIS-01",
    "nombre_carrera": "Licenciatura en Historia",
    "id_facultad": 2,
    "asignaturas_ids": [6] // Ética para el Trabajo (asignatura transversal)
  }
]);

// Tabla / Colección 'Docente'


db.docente.insertMany([
  {
    "_id": 1, "rut_docente": 12345678, "dv_docente": "9", "nombres": "Juan", "apellido_paterno_doc": "Pérez", "apellido_materno_doc": "González", "id_especialidad": 1, "id_comuna": 1
  },
  {
    "_id": 2, "rut_docente": 98765432, "dv_docente": "1", "nombres": "Ana", "apellido_paterno_doc": "López", "apellido_materno_doc": "Martínez", "id_especialidad": 2, "id_comuna": 2
  },
  {
    "_id": 3, "rut_docente": 11223344, "dv_docente": "5", "nombres": "Carlos", "apellido_paterno_doc": "Soto", "apellido_materno_doc": "Díaz", "id_especialidad": 3, "id_comuna": 3
  },
  {
    "_id": 4, "rut_docente": 55667788, "dv_docente": "K", "nombres": "Laura", "apellido_paterno_doc": "García", "apellido_materno_doc": "Fernández", "id_especialidad": 4, "id_comuna": 4
  },
  {
    "_id": 5, "rut_docente": 88776655, "dv_docente": "3", "nombres": "Pedro", "apellido_paterno_doc": "Morales", "apellido_materno_doc": "Silva", "id_especialidad": 5, "id_comuna": 5
  },
  {
    "_id": 6, "rut_docente": 13579246, "dv_docente": "0", "nombres": "Alex", "apellido_paterno_doc": "Valenzuela", "apellido_materno_doc": "Rojas", "id_especialidad": 4, "id_comuna": 1
  }
]);

// Tabla / Colección 'Region'
db.region.insertMany([
  { _id: 1, nombre_region: "Metropolitana de Santiago" },
  { _id: 2, nombre_region: "Valparaíso" },
  { _id: 3, nombre_region: "Biobío" },
  { _id: 4, nombre_region: "Antofagasta" }
])

// Tabla / Colección 'Comuna'
db.comuna.insertMany([
  { _id: 1, nombre_comuna: "Santiago", id_region: 1 },
  { _id: 2, nombre_comuna: "Providencia", id_region: 1 },
  { _id: 3, nombre_comuna: "Las Condes", id_region: 1 },
  { _id: 4, nombre_comuna: "Maipú", id_region: 1 },

  { _id: 5, nombre_comuna: "Valparaíso", id_region: 2 },
  { _id: 6, nombre_comuna: "Viña del Mar", id_region: 2 },
  { _id: 7, nombre_comuna: "Quilpué", id_region: 2 },

  { _id: 8, nombre_comuna: "Concepción", id_region: 3 },
  { _id: 9, nombre_comuna: "Talcahuano", id_region: 3 },
  { _id: 10, nombre_comuna: "San Pedro de la Paz", id_region: 3 },

  { _id: 11, nombre_comuna: "Antofagasta", id_region: 4 },
  { _id: 12, nombre_comuna: "Calama", id_region: 4 }
])

// Tabla / Colección 'Facultad'
db.facultad.insertMany([
  { _id: 1, nombre_facultad: "Ingeniería y Ciencias" },
  { _id: 2, nombre_facultad: "Ciencias Sociales e Historia" },
  { _id: 3, nombre_facultad: "Artes y Humanidades" },
  { _id: 4, nombre_facultad: "Ciencias de la Salud" },
  { _id: 5, nombre_facultad: "Economía y Negocios" }
])

// Tabla / Colección 'Tipo Evaluación'
db.tipo_evaluacion.insertMany([
  { _id: 1, nombre_tipo_evaluacion: "Prueba Parcial" },
  { _id: 2, nombre_tipo_evaluacion: "Examen Final" },
  { _id: 3, nombre_tipo_evaluacion: "Taller Práctico" },
  { _id: 4, nombre_tipo_evaluacion: "Informe Escrito" },
  { _id: 5, nombre_tipo_evaluacion: "Presentación Oral" }
])

// Verificar coleciones
//show collections

// Consultar datos insertados
db.region.find()
db.comuna.find()
db.facultad.find()
db.tipo_evaluacion.find()

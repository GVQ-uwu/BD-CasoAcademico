# Documentación del Sistema de Gestión Académica
## Repositorio BD-CasoAcademico
## Información General

### Repositorio
- **URL**: https://github.com/GVQ-uwu/BD-CasoAcademico.git
- **Propósito**: Sistema de Gestión Académica implementado en Oracle SQL/PL-SQL
- **Integrantes del Equipo**:
  - Nicolas Osses
  - Belén Toloza
  - Génesis Valdebenito

### Contexto Académico
Este proyecto implementa un sistema de gestión académica completo que permite administrar estudiantes, docentes, asignaturas, inscripciones y evaluaciones en una institución educativa. El sistema está diseñado para cumplir con los requisitos específicos de un caso académico de bases de datos.

## Análisis del Modelo de Base de Datos

### Arquitectura del Sistema

El sistema implementa un modelo relacional completo con las siguientes entidades principales:

#### Entidades Geográficas
- **REGION**: Regiones administrativas
- **COMUNA**: Comunas asociadas a regiones

#### Entidades Institucionales
- **FACULTAD**: Facultades de la institución
- **ESPECIALIDAD**: Especialidades de los docentes
- **CARRERA**: Carreras académicas por facultad
- **ASIGNATURA**: Materias del currículo

#### Entidades Académicas
- **SEMESTRE**: Períodos académicos
- **ESTUDIANTE**: Información de estudiantes
- **DOCENTE**: Información de profesores
- **INSCRIPCION**: Matriculación de estudiantes en asignaturas

#### Entidades de Evaluación
- **TIPO_EVALUACION**: Tipos de evaluaciones
- **EVALUACION**: Evaluaciones específicas
- **RESULTADO_EVALUACION**: Resultados obtenidos

#### Entidades de Relación
- **CARRERA_ASIGNATURA**: Malla curricular



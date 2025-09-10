/* Propuesta Caso Semestral Gene.sql */
/* Parte 2: Consultas sql */

-- Consulta 1: Listar estudiantes con su promedio de notas.
------ Se calcula el promedio de notas por estudiante usando JOIN y GROUP BY.
SELECT
    NOMBRES_ESTUDIANTE ||' '|| APELLIDO_PATERNO_EST ||' '|| APELLIDO_MATERNO_EST AS "Nombre Completo",
    C.NOMBRE_CARRERA AS "Carrera",
    ROUND(AVG(i.NOTA_FINAL),2) AS "Promedio Notas"
FROM ESTUDIANTE e JOIN INSCRIPCION i ON e.ID_ESTUDIANTE = i.ID_ESTUDIANTE
    JOIN CARRERA c ON e.ID_CARRERA = c.ID_CARRERA
    GROUP BY e.ID_ESTUDIANTE, NOMBRES_ESTUDIANTE, APELLIDO_PATERNO_EST, APELLIDO_MATERNO_EST, C.NOMBRE_CARRERA
    ORDER BY "Promedio Notas" DESC;

/*****************************************************************************************************************/

-- Consulta 2:Mostrar estudiantes con su promedio de notas y su ranking.
----- Calcula el promedio de notas de cada estudiante y determina su posición mediante una subconsulta correlacionada.
SELECT
    NOMBRES_ESTUDIANTE ||' '|| APELLIDO_PATERNO_EST ||' '|| APELLIDO_MATERNO_EST AS "Nombre Completo",
    C.NOMBRE_CARRERA AS "Carrera",
    ROUND(AVG(i.NOTA_FINAL),2) AS "Promedio Notas", ( -- Subconsulta correlacionada para calcular la posición
        SELECT COUNT(DISTINCT AVG_SUB.PROMEDIO) --  indica la cantidad de estudiantes que poseen un promedio superior.
        FROM (
            SELECT AVG(i2.NOTA_FINAL) AS PROMEDIO  FROM INSCRIPCION i2
            WHERE i2.NOTA_FINAL IS NOT NULL GROUP BY i2.ID_ESTUDIANTE
        ) AVG_SUB
        WHERE AVG_SUB.PROMEDIO > (
            SELECT AVG(i3.NOTA_FINAL) FROM INSCRIPCION i3
            WHERE i3.ID_ESTUDIANTE = e.ID_ESTUDIANTE )
    ) + 1 AS "Posición" -- Suma 1 para obtener la posición del estudiante en el ranking.  
FROM ESTUDIANTE e
    JOIN INSCRIPCION i ON e.ID_ESTUDIANTE = i.ID_ESTUDIANTE
    JOIN CARRERA c ON e.ID_CARRERA = c.ID_CARRERA
    GROUP BY e.ID_ESTUDIANTE, NOMBRES_ESTUDIANTE, APELLIDO_PATERNO_EST, APELLIDO_MATERNO_EST, C.NOMBRE_CARRERA
    ORDER BY "Posición";

/*****************************************************************************************************************/

-- Consulta 3: Listar todos los estudiantes junto con su carrera y el promedio de sus notas, ordenados por promedio descendente.
----- Se utiliza JOIN para combinar las tablas Estudiante, Carrera e Inscripcion, y calcula el promedio de notas por estudiante.
SELECT
    NOMBRES_ESTUDIANTE ||' '|| APELLIDO_PATERNO_EST ||' '|| APELLIDO_MATERNO_EST AS "Nombre Completo",
    C.NOMBRE_CARRERA AS "Carrera",(
        SELECT ROUND(AVG(i.NOTA_FINAL),2)
        FROM INSCRIPCION i WHERE i.ID_ESTUDIANTE = e.ID_ESTUDIANTE
    ) AS "Promedio Notas"
FROM ESTUDIANTE e
    JOIN INSCRIPCION i ON e.ID_ESTUDIANTE = i.ID_ESTUDIANTE
    JOIN CARRERA c ON e.ID_CARRERA = c.ID_CARRERA
    ORDER BY "Promedio Notas" DESC;


/*****************************************************************************************************************/

/* Parte 3: PL/SQL - Varrays, registros y cursores*/
set serveroutput on;

-- Implementar un CURSOR simple que liste todas las inscripciones de un semestre.
DECLARE
    CURSOR cur_inscripciones(p_ano NUMBER, p_periodo NUMBER) IS
        SELECT
            i.id_inscripcion,
            e.nombres_estudiante || ' ' || e.apellido_paterno_est || ' ' || e.apellido_materno_est AS nombre_estudiante,
            a.nombre_asignatura,
            i.nota_final
        FROM INSCRIPCION i
        JOIN ESTUDIANTE e ON i.id_estudiante = e.id_estudiante
        JOIN ASIGNATURA a ON i.id_asignatura = a.id_asignatura
        JOIN SEMESTRE s ON i.id_semestre = s.id_semestre
        WHERE s.ano_semestre = p_ano AND s.periodo_semestre = p_periodo;
    reg_inscripcion cur_inscripciones%ROWTYPE;
BEGIN
    OPEN cur_inscripciones(2023, 1);
    LOOP
        FETCH cur_inscripciones INTO reg_inscripcion;
        EXIT WHEN cur_inscripciones%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Inscripción ID: ' || reg_inscripcion.id_inscripcion);
        DBMS_OUTPUT.PUT_LINE('Estudiante: ' || reg_inscripcion.nombre_estudiante);
        DBMS_OUTPUT.PUT_LINE('Asignatura: ' || reg_inscripcion.nombre_asignatura);
        DBMS_OUTPUT.PUT_LINE('Nota Final: ' || NVL(TO_CHAR(reg_inscripcion.nota_final), 'Pendiente'));
        DBMS_OUTPUT.PUT_LINE(' -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.- ');
    END LOOP;
    CLOSE cur_inscripciones;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No se encontraron inscripciones para el semestre especificado.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
END;
/
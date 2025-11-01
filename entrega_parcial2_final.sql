-- ============================================================================
-- PROCEDIMIENTO 1: Calcular nota final de una inscripción

-- Calcula la nota final de un estudiante en una asignatura y luego hace el update en la tabla inscripcion
-- ============================================================================

CREATE OR REPLACE PROCEDURE sp_calcular_nota_final_inscripcion(
    p_id_inscripcion IN NUMBER
) AS
    v_existe_inscripcion NUMBER;
    v_total_puntaje_obtenido NUMBER := 0;
    v_total_puntaje_maximo NUMBER := 0;
    v_porcentaje_logro NUMBER;
    v_nota_final NUMBER(3,1);
    v_cantidad_evaluaciones NUMBER := 0;

    ex_inscripcion_no_existe EXCEPTION;
    ex_sin_evaluaciones EXCEPTION;

BEGIN
    -- Verificar que la inscripción existe en el sistema
    SELECT COUNT(*)
    INTO v_existe_inscripcion
    FROM INSCRIPCION
    WHERE id_inscripcion = p_id_inscripcion;

    IF v_existe_inscripcion = 0 THEN
        RAISE ex_inscripcion_no_existe;
    END IF;

    -- Obtener la suma de puntajes obtenidos y máximos de todas las evaluaciones
    SELECT
        COUNT(*),
        NVL(SUM(re.puntaje_obtenido), 0),
        NVL(SUM(e.puntaje_maximo), 0)
    INTO
        v_cantidad_evaluaciones,
        v_total_puntaje_obtenido,
        v_total_puntaje_maximo
    FROM RESULTADO_EVALUACION re
    INNER JOIN EVALUACION e ON re.id_evaluacion = e.id_evaluacion
    WHERE re.id_inscripcion = p_id_inscripcion;

    -- Verificar que existan evaluaciones registradas
    IF v_cantidad_evaluaciones = 0 THEN
        RAISE ex_sin_evaluaciones;
    END IF;

    -- Evitar división por cero
    IF v_total_puntaje_maximo = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: El puntaje máximo total es 0');
        RETURN;
    END IF;

    -- Calcular el porcentaje de logro sobre 100
    v_porcentaje_logro := (v_total_puntaje_obtenido / v_total_puntaje_maximo) * 100;

    -- Convertir a escala 1.0 a 7.0
    v_nota_final := 1.0 + (v_porcentaje_logro / 100) * 6.0;

    -- Validar que la nota esté dentro del rango permitido
    IF v_nota_final < 1.0 THEN
        v_nota_final := 1.0;
    ELSIF v_nota_final > 7.0 THEN
        v_nota_final := 7.0;
    END IF;

    -- Actualizar la nota final en la inscripción
    UPDATE INSCRIPCION
    SET nota_final = v_nota_final
    WHERE id_inscripcion = p_id_inscripcion;

    COMMIT;

    -- Mostrar resumen del cálculo
    DBMS_OUTPUT.PUT_LINE('Nota final calculada exitosamente');
    DBMS_OUTPUT.PUT_LINE('Inscripción ID: ' || p_id_inscripcion);
    DBMS_OUTPUT.PUT_LINE('Evaluaciones procesadas: ' || v_cantidad_evaluaciones);
    DBMS_OUTPUT.PUT_LINE('Puntaje obtenido: ' || v_total_puntaje_obtenido || '/' || v_total_puntaje_maximo);
    DBMS_OUTPUT.PUT_LINE('Porcentaje de logro: ' || ROUND(v_porcentaje_logro, 2) || '%');
    DBMS_OUTPUT.PUT_LINE('Nota final: ' || v_nota_final);

EXCEPTION
    WHEN ex_inscripcion_no_existe THEN
        DBMS_OUTPUT.PUT_LINE('Error: La inscripción con ID ' || p_id_inscripcion || ' no existe');
    WHEN ex_sin_evaluaciones THEN
        DBMS_OUTPUT.PUT_LINE('Error: No existen evaluaciones para la inscripción ' || p_id_inscripcion);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
END sp_calcular_nota_final_inscripcion;
/

-- ejecución:
-- EXEC sp_calcular_nota_final_inscripcion(1);
-- O también:
-- BEGIN
--     sp_calcular_nota_final_inscripcion(3);
-- END;
-- /


-- ============================================================================
-- PROCEDIMIENTO 2: Inscribir estudiante en una asignatura

-- Inscribe a un estudiante en una asignatura específica dentro de un semestre,
-- asignándole un docente. Realiza múltiples validaciones
-- ============================================================================

CREATE OR REPLACE PROCEDURE sp_inscribir_estudiante_asignatura(
    p_id_estudiante IN NUMBER,
    p_id_asignatura IN NUMBER,
    p_id_semestre IN NUMBER,
    p_id_docente IN NUMBER
) AS
    v_existe_estudiante NUMBER;
    v_existe_asignatura NUMBER;
    v_existe_semestre NUMBER;
    v_existe_docente NUMBER;
    v_asignatura_en_carrera NUMBER;
    v_inscripcion_duplicada NUMBER;
    v_id_carrera_estudiante NUMBER;
    v_nombre_estudiante VARCHAR2(200);
    v_nombre_asignatura VARCHAR2(100);
    v_nombre_docente VARCHAR2(200);
    v_periodo_semestre VARCHAR2(50);
    v_nombre_carrera VARCHAR2(100);
    v_id_inscripcion NUMBER;

    ex_estudiante_no_existe EXCEPTION;
    ex_asignatura_no_existe EXCEPTION;
    ex_semestre_no_existe EXCEPTION;
    ex_docente_no_existe EXCEPTION;
    ex_asignatura_no_pertenece_carrera EXCEPTION;
    ex_inscripcion_duplicada EXCEPTION;

BEGIN
    -- Validar que el estudiante existe y obtener sus datos
    SELECT COUNT(*)
    INTO v_existe_estudiante
    FROM ESTUDIANTE
    WHERE id_estudiante = p_id_estudiante;

    IF v_existe_estudiante = 0 THEN
        RAISE ex_estudiante_no_existe;
    END IF;

    SELECT
        nombres_estudiante || ' ' || apellido_paterno_est || ' ' || NVL(apellido_materno_est, ''),
        id_carrera
    INTO v_nombre_estudiante, v_id_carrera_estudiante
    FROM ESTUDIANTE
    WHERE id_estudiante = p_id_estudiante;

    -- Validar que la asignatura existe
    SELECT COUNT(*)
    INTO v_existe_asignatura
    FROM ASIGNATURA
    WHERE id_asignatura = p_id_asignatura;

    IF v_existe_asignatura = 0 THEN
        RAISE ex_asignatura_no_existe;
    END IF;

    SELECT nombre_asignatura
    INTO v_nombre_asignatura
    FROM ASIGNATURA
    WHERE id_asignatura = p_id_asignatura;

    -- Validar que el semestre existe
    SELECT COUNT(*)
    INTO v_existe_semestre
    FROM SEMESTRE
    WHERE id_semestre = p_id_semestre;

    IF v_existe_semestre = 0 THEN
        RAISE ex_semestre_no_existe;
    END IF;

    SELECT ano_semestre || '-' || periodo_semestre
    INTO v_periodo_semestre
    FROM SEMESTRE
    WHERE id_semestre = p_id_semestre;

    -- Validar que el docente existe
    SELECT COUNT(*)
    INTO v_existe_docente
    FROM DOCENTE
    WHERE id_docente = p_id_docente;

    IF v_existe_docente = 0 THEN
        RAISE ex_docente_no_existe;
    END IF;

    SELECT nombres || ' ' || apellido_paterno_doc || ' ' || NVL(apellido_materno_doc, '')
    INTO v_nombre_docente
    FROM DOCENTE
    WHERE id_docente = p_id_docente;

    -- Validar que la asignatura pertenece a la carrera del estudiante
    SELECT COUNT(*)
    INTO v_asignatura_en_carrera
    FROM CARRERA_ASIGNATURA
    WHERE id_carrera = v_id_carrera_estudiante
    AND id_asignatura = p_id_asignatura;

    IF v_asignatura_en_carrera = 0 THEN
        SELECT nombre_carrera
        INTO v_nombre_carrera
        FROM CARRERA
        WHERE id_carrera = v_id_carrera_estudiante;

        RAISE ex_asignatura_no_pertenece_carrera;
    END IF;

    -- Verificar que no exista una inscripción duplicada
    SELECT COUNT(*)
    INTO v_inscripcion_duplicada
    FROM INSCRIPCION
    WHERE id_estudiante = p_id_estudiante
    AND id_asignatura = p_id_asignatura
    AND id_semestre = p_id_semestre;

    IF v_inscripcion_duplicada > 0 THEN
        RAISE ex_inscripcion_duplicada;
    END IF;

    -- Crear la nueva inscripción
    v_id_inscripcion := inscripcion_seq.NEXTVAL;

    INSERT INTO INSCRIPCION (
        id_inscripcion,
        nota_final,
        id_estudiante,
        id_asignatura,
        id_docente,
        id_semestre
    ) VALUES (
        v_id_inscripcion,
        NULL,  -- La nota se calcula despues
        p_id_estudiante,
        p_id_asignatura,
        p_id_docente,
        p_id_semestre
    );

    COMMIT;

    -- Mostrar resumen de la inscripción creada
    DBMS_OUTPUT.PUT_LINE('========================================');
    DBMS_OUTPUT.PUT_LINE('INSCRIPCIÓN CREADA EXITOSAMENTE');
    DBMS_OUTPUT.PUT_LINE('========================================');
    DBMS_OUTPUT.PUT_LINE('ID Inscripción: ' || v_id_inscripcion);
    DBMS_OUTPUT.PUT_LINE('Estudiante: ' || v_nombre_estudiante || ' (ID: ' || p_id_estudiante || ')');
    DBMS_OUTPUT.PUT_LINE('Asignatura: ' || v_nombre_asignatura || ' (ID: ' || p_id_asignatura || ')');
    DBMS_OUTPUT.PUT_LINE('Docente: ' || v_nombre_docente || ' (ID: ' || p_id_docente || ')');
    DBMS_OUTPUT.PUT_LINE('Semestre: ' || v_periodo_semestre);
    DBMS_OUTPUT.PUT_LINE('Estado: Inscrito - Nota pendiente');
    DBMS_OUTPUT.PUT_LINE('========================================');

EXCEPTION
    WHEN ex_estudiante_no_existe THEN
        DBMS_OUTPUT.PUT_LINE('Error: El estudiante con ID ' || p_id_estudiante || ' no existe');
        --ROLLBACK;
    WHEN ex_asignatura_no_existe THEN
        DBMS_OUTPUT.PUT_LINE('Error: La asignatura con ID ' || p_id_asignatura || ' no existe');
        --ROLLBACK;
    WHEN ex_semestre_no_existe THEN
        DBMS_OUTPUT.PUT_LINE('Error: El semestre con ID ' || p_id_semestre || ' no existe');
        --ROLLBACK;
    WHEN ex_docente_no_existe THEN
        DBMS_OUTPUT.PUT_LINE('Error: El docente con ID ' || p_id_docente || ' no existe');
        --ROLLBACK;
    WHEN ex_asignatura_no_pertenece_carrera THEN
        DBMS_OUTPUT.PUT_LINE('Error: La asignatura "' || v_nombre_asignatura || '" no pertenece a la carrera "' || v_nombre_carrera || '" del estudiante');
        --ROLLBACK;
    WHEN ex_inscripcion_duplicada THEN
        DBMS_OUTPUT.PUT_LINE('Error: El estudiante ' || v_nombre_estudiante || ' ya está inscrito en "' || v_nombre_asignatura || '" en el semestre ' || v_periodo_semestre);
        ---ROLLBACK;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
        --ROLLBACK;
END sp_inscribir_estudiante_asignatura;
/

-- ejecución:
-- EXEC sp_inscribir_estudiante_asignatura(1, 2, 1, 3);
-- O :
-- BEGIN
--     sp_inscribir_estudiante_asignatura(1, 2, 1, 3);
-- END;
-- /

-- ============================================================================
-- PROCEDIMIENTO 3: Actualizar docente de una asignatura

-- Cambia el docente asignado a todas las inscripciones de una asignatura.
-- ============================================================================

CREATE OR REPLACE PROCEDURE sp_actualizar_docente_asignatura(
    p_id_asignatura IN NUMBER,
    p_id_docente_nuevo IN NUMBER
) AS
    v_existe_docente NUMBER;
    v_contador NUMBER := 0;
BEGIN
    -- Verificar que el nuevo docente existe en el sistema
    SELECT COUNT(*)
    INTO v_existe_docente
    FROM DOCENTE
    WHERE id_docente = p_id_docente_nuevo;

    IF v_existe_docente = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: El docente con ID ' || p_id_docente_nuevo || ' no existe');
        RETURN;
    END IF;

    -- Actualizar todas las inscripciones de la asignatura
    UPDATE INSCRIPCION
    SET id_docente = p_id_docente_nuevo
    WHERE id_asignatura = p_id_asignatura;

    v_contador := SQL%ROWCOUNT;

    DBMS_OUTPUT.PUT_LINE('Docente actualizado exitosamente para la asignatura ID ' || p_id_asignatura);
    DBMS_OUTPUT.PUT_LINE('Inscripciones afectadas: ' || v_contador);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al cambiar docente: ' || SQLERRM);
        --ROLLBACK;
END sp_actualizar_docente_asignatura;
/

-- ejecución:
-- EXEC sp_actualizar_docente_asignatura(1, 3);
-- o
-- BEGIN
-- sp_actualizar_docente_asignatura(1, 3);
--END;

-- ============================================================================
-- FUNCIÓN 1: Calcular rendimiento académico del estudiante

-- Calcula el rendimiento académico general de un estudiante basándose en el
-- promedio de todas sus notas finales
-- ============================================================================

CREATE OR REPLACE FUNCTION fn_calcular_rendimiento_estudiante(
    p_id_estudiante IN NUMBER
) RETURN VARCHAR2 AS
    v_existe_estudiante NUMBER;
    v_promedio_notas NUMBER(3,1);
    v_cantidad_notas NUMBER := 0;
    v_rendimiento VARCHAR2(20);
    v_nombre_estudiante VARCHAR2(200);

    ex_estudiante_no_existe EXCEPTION;

BEGIN
    -- Validar que el estudiante existe en el sistema
    SELECT COUNT(*)
    INTO v_existe_estudiante
    FROM ESTUDIANTE
    WHERE id_estudiante = p_id_estudiante;

    IF v_existe_estudiante = 0 THEN
        RAISE ex_estudiante_no_existe;
    END IF;

    -- Obtener el nombre del estudiante para logging
    SELECT nombres_estudiante || ' ' || apellido_paterno_est || ' ' || NVL(apellido_materno_est, '')
    INTO v_nombre_estudiante
    FROM ESTUDIANTE
    WHERE id_estudiante = p_id_estudiante;

    -- Calcular promedio de notas finales (solo notas registradas)
    SELECT
        COUNT(*),
        NVL(AVG(nota_final), 0)
    INTO
        v_cantidad_notas,
        v_promedio_notas
    FROM INSCRIPCION
    WHERE id_estudiante = p_id_estudiante
    AND nota_final IS NOT NULL;

    -- Si no hay notas, devolver indicador de sin datos
    IF v_cantidad_notas = 0 THEN
        RETURN 'SIN_DATOS';
    END IF;

    -- Clasificar el rendimiento según el promedio (escala chilena: 4.0 es aprobación)
    IF v_promedio_notas >= 6.0 THEN
        v_rendimiento := 'EXCELENTE';
    ELSIF v_promedio_notas >= 5.0 THEN
        v_rendimiento := 'BUENO';
    ELSIF v_promedio_notas >= 4.0 THEN
        v_rendimiento := 'REGULAR';
    ELSE
        v_rendimiento := 'DEFICIENTE';
    END IF;

    RETURN v_rendimiento;

EXCEPTION
    WHEN ex_estudiante_no_existe THEN
        DBMS_OUTPUT.PUT_LINE('Error: El estudiante con ID ' || p_id_estudiante || ' no existe');
        RETURN NULL;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
        RETURN NULL;
END fn_calcular_rendimiento_estudiante;
/

-- ejecución:
-- SELECT fn_calcular_rendimiento_estudiante(4) AS rendimiento FROM DUAL;


-- ============================================================================
-- FUNCIÓN 2: Obtener promedio de notas de un estudiante

-- Devuelve el promedio de todas las notas finales de un estudiante.
-- ============================================================================

CREATE OR REPLACE FUNCTION fn_promedio_estudiante(
    p_id_estudiante IN NUMBER
) RETURN NUMBER AS
    v_promedio NUMBER(4,2);
BEGIN
    -- Calcular el promedio general de las notas finales
    SELECT AVG(nota_final)
    INTO v_promedio
    FROM INSCRIPCION
    WHERE id_estudiante = p_id_estudiante
    AND nota_final IS NOT NULL;

    RETURN v_promedio;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al calcular promedio: ' || SQLERRM);
        RETURN NULL;
END fn_promedio_estudiante;
/

-- ejecución:
-- SELECT fn_promedio_estudiante(1) AS promedio FROM DUAL;

-- ============================================================================
-- PACKAGE: PKG_GESTION_ACADEMICA
-- ============================================================================

CREATE OR REPLACE PACKAGE PKG_GESTION_ACADEMICA AS

    PROCEDURE sp_calcular_nota_final(
        p_id_inscripcion IN NUMBER
    );

    PROCEDURE sp_inscribir_estudiante(
        p_id_estudiante IN NUMBER,
        p_id_asignatura IN NUMBER,
        p_id_semestre IN NUMBER,
        p_id_docente IN NUMBER
    );

    FUNCTION fn_obtener_rendimiento(
        p_id_estudiante IN NUMBER
    ) RETURN VARCHAR2;

    FUNCTION fn_porcentaje_aprobacion(
        p_id_asignatura IN NUMBER,
        p_id_semestre IN NUMBER
    ) RETURN NUMBER;

END PKG_GESTION_ACADEMICA;
/


--===================================
-- PACKAGE BODY
--===================================

CREATE OR REPLACE PACKAGE BODY PKG_GESTION_ACADEMICA AS

    -- ========================================================================
    -- PROCEDIMIENTO 1: sp_calcular_nota_final
    -- ========================================================================

    PROCEDURE sp_calcular_nota_final(
        p_id_inscripcion IN NUMBER
    ) AS
        v_existe_inscripcion NUMBER;
        v_total_puntaje_obtenido NUMBER := 0;
        v_total_puntaje_maximo NUMBER := 0;
        v_porcentaje_logro NUMBER;
        v_nota_final NUMBER(3,1);
        v_cantidad_evaluaciones NUMBER := 0;

        ex_inscripcion_no_existe EXCEPTION;
        ex_sin_evaluaciones EXCEPTION;

    BEGIN
        SELECT COUNT(*)
        INTO v_existe_inscripcion
        FROM INSCRIPCION
        WHERE id_inscripcion = p_id_inscripcion;

        IF v_existe_inscripcion = 0 THEN
            RAISE ex_inscripcion_no_existe;
        END IF;

        SELECT
            COUNT(*),
            NVL(SUM(re.puntaje_obtenido), 0),
            NVL(SUM(e.puntaje_maximo), 0)
        INTO
            v_cantidad_evaluaciones,
            v_total_puntaje_obtenido,
            v_total_puntaje_maximo
        FROM RESULTADO_EVALUACION re
        INNER JOIN EVALUACION e ON re.id_evaluacion = e.id_evaluacion
        WHERE re.id_inscripcion = p_id_inscripcion;

        IF v_cantidad_evaluaciones = 0 THEN
            RAISE ex_sin_evaluaciones;
        END IF;

        IF v_total_puntaje_maximo = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: El puntaje máximo total es 0');
            RETURN;
        END IF;

        v_porcentaje_logro := (v_total_puntaje_obtenido / v_total_puntaje_maximo) * 100;
        v_nota_final := 1.0 + (v_porcentaje_logro / 100) * 6.0;

        IF v_nota_final < 1.0 THEN
            v_nota_final := 1.0;
        ELSIF v_nota_final > 7.0 THEN
            v_nota_final := 7.0;
        END IF;

        UPDATE INSCRIPCION
        SET nota_final = v_nota_final
        WHERE id_inscripcion = p_id_inscripcion;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Nota final calculada: ' || v_nota_final);

    EXCEPTION
        WHEN ex_inscripcion_no_existe THEN
            DBMS_OUTPUT.PUT_LINE('Error: La inscripción con ID ' || p_id_inscripcion || ' no existe');
            ROLLBACK;
        WHEN ex_sin_evaluaciones THEN
            DBMS_OUTPUT.PUT_LINE('Error: No hay evaluaciones para la inscripción ' || p_id_inscripcion);
            ROLLBACK;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
            ROLLBACK;
    END sp_calcular_nota_final;

    -- ========================================================================
    -- PROCEDIMIENTO 2: sp_inscribir_estudiante
    -- ========================================================================

    PROCEDURE sp_inscribir_estudiante(
        p_id_estudiante IN NUMBER,
        p_id_asignatura IN NUMBER,
        p_id_semestre IN NUMBER,
        p_id_docente IN NUMBER
    ) AS
        v_existe_estudiante NUMBER;
        v_existe_asignatura NUMBER;
        v_existe_semestre NUMBER;
        v_existe_docente NUMBER;
        v_asignatura_en_carrera NUMBER;
        v_inscripcion_duplicada NUMBER;
        v_id_carrera_estudiante NUMBER;
        v_nombre_estudiante VARCHAR2(200);
        v_nombre_asignatura VARCHAR2(100);
        v_nombre_docente VARCHAR2(200);
        v_periodo_semestre VARCHAR2(50);
        v_nombre_carrera VARCHAR2(100);
        v_id_inscripcion NUMBER;

        ex_estudiante_no_existe EXCEPTION;
        ex_asignatura_no_existe EXCEPTION;
        ex_semestre_no_existe EXCEPTION;
        ex_docente_no_existe EXCEPTION;
        ex_asignatura_no_pertenece_carrera EXCEPTION;
        ex_inscripcion_duplicada EXCEPTION;

    BEGIN
        SELECT COUNT(*)
        INTO v_existe_estudiante
        FROM ESTUDIANTE
        WHERE id_estudiante = p_id_estudiante;

        IF v_existe_estudiante = 0 THEN
            RAISE ex_estudiante_no_existe;
        END IF;

        SELECT
            nombres_estudiante || ' ' || apellido_paterno_est || ' ' || NVL(apellido_materno_est, ''),
            id_carrera
        INTO v_nombre_estudiante, v_id_carrera_estudiante
        FROM ESTUDIANTE
        WHERE id_estudiante = p_id_estudiante;

        SELECT COUNT(*)
        INTO v_existe_asignatura
        FROM ASIGNATURA
        WHERE id_asignatura = p_id_asignatura;

        IF v_existe_asignatura = 0 THEN
            RAISE ex_asignatura_no_existe;
        END IF;

        SELECT nombre_asignatura
        INTO v_nombre_asignatura
        FROM ASIGNATURA
        WHERE id_asignatura = p_id_asignatura;

        SELECT COUNT(*)
        INTO v_existe_semestre
        FROM SEMESTRE
        WHERE id_semestre = p_id_semestre;

        IF v_existe_semestre = 0 THEN
            RAISE ex_semestre_no_existe;
        END IF;

        SELECT ano_semestre || '-' || periodo_semestre
        INTO v_periodo_semestre
        FROM SEMESTRE
        WHERE id_semestre = p_id_semestre;

        SELECT COUNT(*)
        INTO v_existe_docente
        FROM DOCENTE
        WHERE id_docente = p_id_docente;

        IF v_existe_docente = 0 THEN
            RAISE ex_docente_no_existe;
        END IF;

        SELECT nombres || ' ' || apellido_paterno_doc || ' ' || NVL(apellido_materno_doc, '')
        INTO v_nombre_docente
        FROM DOCENTE
        WHERE id_docente = p_id_docente;

        SELECT COUNT(*)
        INTO v_asignatura_en_carrera
        FROM CARRERA_ASIGNATURA
        WHERE id_carrera = v_id_carrera_estudiante
        AND id_asignatura = p_id_asignatura;

        IF v_asignatura_en_carrera = 0 THEN
            SELECT nombre_carrera
            INTO v_nombre_carrera
            FROM CARRERA
            WHERE id_carrera = v_id_carrera_estudiante;

            RAISE ex_asignatura_no_pertenece_carrera;
        END IF;

        SELECT COUNT(*)
        INTO v_inscripcion_duplicada
        FROM INSCRIPCION
        WHERE id_estudiante = p_id_estudiante
        AND id_asignatura = p_id_asignatura
        AND id_semestre = p_id_semestre;

        IF v_inscripcion_duplicada > 0 THEN
            RAISE ex_inscripcion_duplicada;
        END IF;

        v_id_inscripcion := inscripcion_seq.NEXTVAL;

        INSERT INTO INSCRIPCION (
            id_inscripcion,
            nota_final,
            id_estudiante,
            id_asignatura,
            id_docente,
            id_semestre
        ) VALUES (
            v_id_inscripcion,
            NULL,
            p_id_estudiante,
            p_id_asignatura,
            p_id_docente,
            p_id_semestre
        );

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Inscripción creada exitosamente - ID: ' || v_id_inscripcion);

    EXCEPTION
        WHEN ex_estudiante_no_existe THEN
            DBMS_OUTPUT.PUT_LINE('Error: El estudiante con ID ' || p_id_estudiante || ' no existe');
            ROLLBACK;
        WHEN ex_asignatura_no_existe THEN
            DBMS_OUTPUT.PUT_LINE('Error: La asignatura con ID ' || p_id_asignatura || ' no existe');
            ROLLBACK;
        WHEN ex_semestre_no_existe THEN
            DBMS_OUTPUT.PUT_LINE('Error: El semestre con ID ' || p_id_semestre || ' no existe');
            ROLLBACK;
        WHEN ex_docente_no_existe THEN
            DBMS_OUTPUT.PUT_LINE('Error: El docente con ID ' || p_id_docente || ' no existe');
            ROLLBACK;
        WHEN ex_asignatura_no_pertenece_carrera THEN
            DBMS_OUTPUT.PUT_LINE('Error: La asignatura no pertenece a la carrera del estudiante');
            ROLLBACK;
        WHEN ex_inscripcion_duplicada THEN
            DBMS_OUTPUT.PUT_LINE('Error: El estudiante ya está inscrito en esta asignatura');
            ROLLBACK;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
            ROLLBACK;
    END sp_inscribir_estudiante;

    -- ========================================================================
    -- FUNCIÓN 1: fn_obtener_rendimiento
    -- ========================================================================

    FUNCTION fn_obtener_rendimiento(
        p_id_estudiante IN NUMBER
    ) RETURN VARCHAR2 AS
        v_existe_estudiante NUMBER;
        v_promedio_notas NUMBER(3,1);
        v_cantidad_notas NUMBER := 0;
        v_rendimiento VARCHAR2(20);

        ex_estudiante_no_existe EXCEPTION;

    BEGIN
        SELECT COUNT(*)
        INTO v_existe_estudiante
        FROM ESTUDIANTE
        WHERE id_estudiante = p_id_estudiante;

        IF v_existe_estudiante = 0 THEN
            RAISE ex_estudiante_no_existe;
        END IF;

        SELECT
            COUNT(*),
            NVL(AVG(nota_final), 0)
        INTO
            v_cantidad_notas,
            v_promedio_notas
        FROM INSCRIPCION
        WHERE id_estudiante = p_id_estudiante
        AND nota_final IS NOT NULL;

        IF v_cantidad_notas = 0 THEN
            RETURN 'SIN_DATOS';
        END IF;

        IF v_promedio_notas >= 6.0 THEN
            v_rendimiento := 'EXCELENTE';
        ELSIF v_promedio_notas >= 5.0 THEN
            v_rendimiento := 'BUENO';
        ELSIF v_promedio_notas >= 4.0 THEN
            v_rendimiento := 'REGULAR';
        ELSE
            v_rendimiento := 'DEFICIENTE';
        END IF;

        RETURN v_rendimiento;

    EXCEPTION
        WHEN ex_estudiante_no_existe THEN
            DBMS_OUTPUT.PUT_LINE('Error: Estudiante no existe');
            RETURN NULL;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
            RETURN NULL;
    END fn_obtener_rendimiento;

    -- ========================================================================
    -- FUNCIÓN 2: fn_porcentaje_aprobacion
    -- ========================================================================

    FUNCTION fn_porcentaje_aprobacion(
        p_id_asignatura IN NUMBER,
        p_id_semestre IN NUMBER
    ) RETURN NUMBER AS
        v_total_estudiantes NUMBER;
        v_aprobados NUMBER;
        v_porcentaje NUMBER(5,2);
    BEGIN
        SELECT COUNT(*)
        INTO v_total_estudiantes
        FROM INSCRIPCION
        WHERE id_asignatura = p_id_asignatura
        AND id_semestre = p_id_semestre
        AND nota_final IS NOT NULL;

        IF v_total_estudiantes = 0 THEN
            RETURN NULL;
        END IF;

        SELECT COUNT(*)
        INTO v_aprobados
        FROM INSCRIPCION
        WHERE id_asignatura = p_id_asignatura
        AND id_semestre = p_id_semestre
        AND nota_final >= 4.0;

        v_porcentaje := (v_aprobados / v_total_estudiantes) * 100;

        RETURN v_porcentaje;

    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al calcular aprobación: ' || SQLERRM);
            RETURN NULL;
    END fn_porcentaje_aprobacion;

    -- FIN PACKAGE BODY


END PKG_GESTION_ACADEMICA;
/
--testeo fn y sp de package
    --testeo para comprobar la existencia del package
     SELECT object_name, object_type, status
     FROM user_objects
     WHERE object_name = 'PKG_GESTION_ACADEMICA';

 -- PROCEDIMIENTO 1: Calcular nota final
     BEGIN
         PKG_GESTION_ACADEMICA.sp_calcular_nota_final(1);
     END;
     /
 -- PROCEDIMIENTO 2: Inscribir estudiante
     BEGIN
         PKG_GESTION_ACADEMICA.sp_inscribir_estudiante(1, 2, 1, 3);
     END;
     /
     -- FUNCIÓN 1: Obtener rendimiento
     SELECT PKG_GESTION_ACADEMICA.fn_obtener_rendimiento(1) AS rendimiento FROM DUAL;

     -- FUNCIÓN 2: Porcentaje de aprobación
     SELECT PKG_GESTION_ACADEMICA.fn_porcentaje_aprobacion(1, 1) AS porcentaje FROM DUAL;

    -- fin testeo package

--===============================================================================================================================================================
-- TRIGGER A NIVEL DE SENTENCIA: LA FUNCIÓN DE ESTE TRIGGER ES PROHIBIR LA MODIFICACION, FUERA DEL HORARIO DE CLASES (DE 8AM A 6PM),
--===============================================================================================================================================================
CREATE OR REPLACE TRIGGER TRG_VALIDA_DML_FUERA_HORARIOLAB
BEFORE INSERT OR UPDATE OR DELETE ON RESULTADO_EVALUACION -- TRIGGER BEFORE O ANTES DE (SENTENCIA DML)
BEGIN
    IF (TO_CHAR(SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00') THEN -- SI LA HORA ACTUAL NO ESTÁ ENTRE LAS 8AM A 6PM
        IF DELETING THEN -- SI SE ESTÁ INTENTANDO HACER UN DELETE HACER
            RAISE_APPLICATION_ERROR(-20502, 'SOLO SE PUEDEN ELIMINAR LOS RESULTADOS DE LAS EVALUACIONES EN HORARIO DE CLASES.'); -- DETIENE LA ACCION Y MUESTRA SU CODIGO CON MENSAJE PERSONALIZADO
        ELSIF INSERTING THEN
            RAISE_APPLICATION_ERROR(-20500, 'SOLO SE PUEDEN INSERTAR LOS RESULTADOS DE LAS EVALUACIONES EN HORARIO DE CLASES.');
        ELSIF UPDATING THEN
            RAISE_APPLICATION_ERROR(-20503, 'SOLO SE PUEDEN ACTUALIZAR LOS RESULTADOS DE LAS EVALUACIONES EN HORARIO DE CLASES.');
        END IF;
    END IF;
END;
/
--========================================================================================================================================================
-- TRIGGER A NIVEL DE FILA DE AUDITORÍA: LA FUNCIÓN DE ESTE TRIGGER ES QUE LUEGO DE MODIFICAR LA TABLA RESULTADO_EVALUACIONES CON INSERT, DELETE O UPDATE
--- SE REGISTRE EN UNA NUEVA TABLA AUDIT_RESULT_EVALUACIONES LOS DATOS DE QUIEN FUE EL USUARIO QUE MODIFICÓ, LA FECHA, Y LOS VALORES ANTIGUOS Y NUEVOS
--=======================================================================================================================================================

CREATE OR REPLACE TRIGGER TRG_AUDIT_RESULT_EVAL
AFTER INSERT OR UPDATE OR DELETE ON RESULTADO_EVALUACION
FOR EACH ROW -- PARA QUE PUEDA ACCEDER A LOS VALORES DE LOS OLD Y NEW
DECLARE
    V_OP VARCHAR2(10);
BEGIN
    IF INSERTING THEN
        V_OP := 'INSERT';
    ELSIF UPDATING THEN
        V_OP := 'UPDATE';
    ELSIF DELETING THEN
        V_OP := 'DELETE';
    END IF;

    INSERT INTO AUDIT_RESULT_EVALUACIONES VALUES(
        USER, -- EL NOMBRE DEL USUARIO
        SYSTIMESTAMP, -- LA FECHA Y HORA ACTUAL
        V_OP, -- SI ES INSERT, UPDATE O DELETE, ESTE VALOR SE INSERTA EN LA TABLA DE AUDITORÍA PARA SABER QUÉ ACCIÓN SE HIZO

        :OLD.ID_RESULTADO,
        :NEW.ID_RESULTADO,
        :OLD.PUNTAJE_OBTENIDO,
        :NEW.PUNTAJE_OBTENIDO,
        :OLD.ID_INSCRIPCION,
        :NEW.ID_INSCRIPCION,
        :OLD.ID_EVALUACION,
        :NEW.ID_EVALUACION);
END;
/

/*
CREATE TABLE AUDIT_RESULT_EVALUACIONES (
         usuario_modificacion VARCHAR2(100) NOT NULL,
         fecha_modificacion TIMESTAMP NOT NULL,
         operacion VARCHAR2(10) NOT NULL,
         old_id_resultado NUMBER,
         new_id_resultado NUMBER,
         old_puntaje_obtenido NUMBER,
         new_puntaje_obtenido NUMBER,
         old_id_inscripcion NUMBER,
         new_id_inscripcion NUMBER,
         old_id_evaluacion NUMBER,
         new_id_evaluacion NUMBER
     );
*/

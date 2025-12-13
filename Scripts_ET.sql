---------------------------Parte 2: Consultas SQL-------------------------------------------------------------
SET SERVEROUTPUT ON;

--1.Listar todos los estudiantes junto con las asignaturas inscritas utilizando JOIN.

SELECT
    e.NOMBRES_ESTUDIANTE || ' '|| e.APELLIDO_PATERNO_EST ||' '|| e.APELLIDO_MATERNO_EST as nombre_estudiante,
    a.NOMBRE_ASIGNATURA as nombre_asignatura
FROM
    ESTUDIANTE e
        LEFT JOIN
    inscripcion i ON e.ID_ESTUDIANTE = i.ID_ESTUDIANTE
        LEFT JOIN
    asignatura a on i.ID_ASIGNATURA = a.ID_ASIGNATURA
ORDER BY
    nombre_estudiante, nombre_asignatura;

----------------------------------------------------------------------------------------------
--2.Obtener el promedio de notas por estudiante mediante subconsultas.
SELECT
    NOMBRES_ESTUDIANTE ||' '|| APELLIDO_PATERNO_EST ||' '|| APELLIDO_MATERNO_EST AS "Nombre Completo",
    C.NOMBRE_CARRERA AS "Carrera",
    ROUND(AVG(i.NOTA_FINAL),2) AS "Promedio Notas"
FROM ESTUDIANTE e JOIN INSCRIPCION i ON e.ID_ESTUDIANTE = i.ID_ESTUDIANTE
    JOIN CARRERA c ON e.ID_CARRERA = c.ID_CARRERA
    GROUP BY e.ID_ESTUDIANTE, NOMBRES_ESTUDIANTE, APELLIDO_PATERNO_EST, APELLIDO_MATERNO_EST, C.NOMBRE_CARRERA
    ORDER BY "Promedio Notas" DESC;

---------------------------------------------------------------------------------------------
--3.Listar los docentes y el número de asignaturas que dictan en el semestre actual

SELECT
    D.RUT_DOCENTE || '-' || D.DV_DOCENTE AS RUT_DOCENTE,
    D.NOMBRES || ' ' || D.APELLIDO_PATERNO_DOC AS NOMBRE_DOCENTE,
    COUNT(DISTINCT I.ID_ASIGNATURA) AS CANT_ASIGNATURAS
FROM
    DOCENTE D
        JOIN
    INSCRIPCION I ON d.ID_DOCENTE = I.ID_DOCENTE
        JOIN
    SEMESTRE S ON I.ID_SEMESTRE = S.ID_SEMESTRE
WHERE
    S.ANO_SEMESTRE = 2024
  AND S.PERIODO_SEMESTRE = 1
GROUP BY
    D.RUT_DOCENTE, D.DV_DOCENTE,
    D.NOMBRES, D.APELLIDO_PATERNO_DOC;

---------------------------------------------------------------------------------------------
--4.Mostrar las asignaturas que no tienen inscripciones usando subconsultas.

SELECT
    a.codigo_asignatura as codigo,
    a.NOMBRE_ASIGNATURA as nombre_asignatura
FROM
    asignatura a
WHERE (SELECT count(*) FROM inscripcion i where i.id_asignatura=a.ID_ASIGNATURA)=0;

---------------------------------------------------------------------------------------------
--5.Generar un ranking de estudiantes por promedio de notas.
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

--------------------------------------------------------------------------------------------
--------------------Parte 3: PL/SQL - Varrays, Registros y Cursores-----------------------

--1.Crear un VARRAY que almacene las notas obtenidas por un estudiante en sus evaluaciones.

DECLARE
    v_id_estudiante estudiante.ID_ESTUDIANTE%type := 2;   --- id que vamos a consultar
    TYPE t_notas_varray IS VARRAY(50) OF NUMBER;
    lista_notas t_notas_varray;

    CURSOR cur_notas is
        SELECT
            r.puntaje_obtenido as puntaje
        FROM
            RESULTADO_EVALUACION r JOIN INSCRIPCION i
    ON r.ID_INSCRIPCION=i.ID_INSCRIPCION
        WHERE
            ID_ESTUDIANTE = v_id_estudiante;

BEGIN
    lista_notas := t_notas_varray();

    FOR reg_nota IN cur_notas LOOP
            lista_notas.EXTEND;
            lista_notas(lista_notas.COUNT) := reg_nota.puntaje;
        end loop;

    IF lista_notas.COUNT > 0 THEN
        dbms_output.put_line('notas del estudiante: ' ||v_id_estudiante||':');
        for n in 1 .. lista_notas.COUNT loop
                dbms_output.put_line('nota ' ||n||': '|| lista_notas(n));
            end loop;
    else
        dbms_output.put_line('no tiene notas registradas');
    end if;

exception
    when others then
        dbms_output.put_line('ocurrio un error'||sqlerrm);
END;
/

---------------------------------------------------------------------------------------
--2.Definir un REGISTRO para representar la información completa de un estudiante (RUT, nombre, carrera, promedio).

DECLARE
    TYPE REGISTRO_ESTUDIANTE IS RECORD (
        RUT       NUMBER,
        DV        CHAR(1),
        NOMBRE    VARCHAR2(100),
        APELLIDO  VARCHAR2(50),
        CARRERA   VARCHAR2(100),
        PROMEDIO  NUMBER
        );

    V_EST REGISTRO_ESTUDIANTE;

    CURSOR CUR_ESTUDIANTES IS
        SELECT
            E.rut_estudiante,
            E.dv_estudiante,
            E.nombres_estudiante,
            E.apellido_paterno_est,
            C.nombre_carrera,
            AVG(I.nota_final) AS promedio
        FROM
            Estudiante E
                LEFT JOIN
            Carrera C ON E.id_carrera = C.id_carrera
                LEFT JOIN
            Inscripcion I ON E.id_estudiante = I.id_estudiante
        GROUP BY
            E.rut_estudiante, E.dv_estudiante, E.nombres_estudiante,
            E.apellido_paterno_est, C.nombre_carrera;

BEGIN
    OPEN CUR_ESTUDIANTES;
    LOOP
        FETCH CUR_ESTUDIANTES INTO V_EST;
        EXIT WHEN CUR_ESTUDIANTES%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('RUT: ' || V_EST.RUT || '-' || V_EST.DV );
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || V_EST.NOMBRE || ' ' || V_EST.APELLIDO);
        DBMS_OUTPUT.PUT_LINE('Carrera: ' || V_EST.CARRERA);
        DBMS_OUTPUT.PUT_LINE('Promedio: ' || TO_CHAR(NVL(V_EST.PROMEDIO,0), '999.9'));
        DBMS_OUTPUT.PUT_LINE('------------------------------');
    END LOOP;
    CLOSE CUR_ESTUDIANTES;
END;

-------------------------------------------------------------------------------------------------
--3.Implementar un CURSOR simple que liste todas las inscripciones de un semestre.
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

-------------------------------------------------------------------------------------------------
--4.Implementar un CURSOR con parámetros que muestre las asignaturas inscritas por un estudiante en un semestre específico.

DECLARE
    --parametros de entrada
    v_id_estudiante estudiante.id_estudiante%TYPE:=4; -- rpobar con 99 para el error
    v_id_semestre semestre.id_semestre%type:=5;

    v_nombre_estudiante VARCHAR2(100);
    v_contador_asignaturas NUMBER := 0;
    v_asignaturas_inscritas NUMBER;

    e_sin_asignaturas EXCEPTION; -- decalracion error

    CURSOR cur_asignaturas(
        p_id_estudiante IN estudiante.id_estudiante%type,
        p_id_semestre IN semestre.id_semestre%type
        ) IS SELECT
                 a.NOMBRE_ASIGNATURA,
                 a.codigo_asignatura
             FROM
                 asignatura a JOIN inscripcion i
        ON a.id_asignatura = i.id_asignatura
             WHERE
                 i.id_estudiante = p_id_estudiante AND
                 i.id_semestre =p_id_semestre;

BEGIN
    SELECT nombres_estudiante || ' ' || apellido_paterno_est
    INTO v_nombre_estudiante               --vemos si el estudiante existe
    from ESTUDIANTE
    where ID_ESTUDIANTE = v_id_estudiante;

    dbms_output.put_line('estudiante: '||v_id_estudiante);
    dbms_output.put_line('------------------------------');

    FOR reg_asignatura IN cur_asignaturas(v_id_estudiante, v_id_semestre) LOOP
            dbms_output.put_line(reg_asignatura.codigo_asignatura || ' '||reg_asignatura.NOMBRE_ASIGNATURA);
            v_contador_asignaturas := v_contador_asignaturas + 1;
        end loop;

    IF v_contador_asignaturas = 0 THEN
        RAISE e_sin_asignaturas;
    end if;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('ERROR: El estudiante con ID ' || v_id_estudiante || ' no fue encontrado');
    WHEN e_sin_asignaturas THEN
        dbms_output.put_line('AVISO: El estudiante existe, pero no tiene asignaturas inscritas en el semestre ' ||
        v_id_semestre);
    WHEN OTHERS THEN
        dbms_output.put_line('Ocurrió un error inesperado: ' || SQLERRM);
end;

-----------------------------------------------------------------------------------------
--5.Implementar un CURSOR anidado que, para cada docente, muestre las asignaturas y los estudiantes inscritos.

DECLARE
    CURSOR CUR_DOCENTE IS
        SELECT
            D.id_docente,
            D.rut_docente || '-' || D.dv_docente AS RUT_DOCENTE,
            D.nombres || ' ' || D.apellido_paterno_doc AS NOMBRE_DOCENTE
        FROM Docente D;

-- LAS ASIGNATURAS QUE TIENE UN DOCENTE
    CURSOR CUR_ASIGNATURA (P_DOCENTE_ID Docente.id_docente%TYPE) IS
        SELECT DISTINCT
            A.codigo_asignatura,
            A.nombre_asignatura
        FROM Asignatura A
                 JOIN Inscripcion I ON A.id_asignatura = I.id_asignatura
        WHERE I.id_docente = P_DOCENTE_ID;

    -- ESTUDIANTES QUE ESTÁN EN UNA ASIGNATURA
    CURSOR CUR_ESTUDIANTE (P_ASIG_ID Asignatura.codigo_asignatura%TYPE) IS
        SELECT
            E.rut_estudiante || '-' || E.dv_estudiante AS RUT_ESTUDIANTE,
            E.nombres_estudiante || ' ' || E.apellido_paterno_est AS NOMBRE_ESTUDIANTE
        FROM Estudiante E
                 JOIN Inscripcion I ON E.id_estudiante = I.id_estudiante
                 JOIN Asignatura A ON I.id_asignatura = A.id_asignatura
        WHERE A.codigo_asignatura = P_ASIG_ID;

    V_DOCENTE_ID Docente.id_docente%TYPE;
    V_DOCENTE_RUT VARCHAR2(15);
    V_DOCENTE_NOMBRE VARCHAR2(150);

    V_ASIG_ID Asignatura.codigo_asignatura%TYPE;
    V_ASIG_NOMBRE Asignatura.nombre_asignatura%TYPE;

    V_EST_RUT VARCHAR2(15);
    V_EST_NOMBRE VARCHAR2(150);

BEGIN
    OPEN CUR_DOCENTE;
    LOOP
        FETCH CUR_DOCENTE INTO V_DOCENTE_ID, V_DOCENTE_RUT, V_DOCENTE_NOMBRE;
        EXIT WHEN CUR_DOCENTE%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('--------------------------------');
        DBMS_OUTPUT.PUT_LINE('Docente: ' || V_DOCENTE_NOMBRE || ' ' || V_DOCENTE_RUT);

        OPEN CUR_ASIGNATURA(V_DOCENTE_ID);
        LOOP
            FETCH CUR_ASIGNATURA INTO V_ASIG_ID, V_ASIG_NOMBRE;
            EXIT WHEN CUR_ASIGNATURA%NOTFOUND;

            DBMS_OUTPUT.PUT_LINE('  Asignatura: ' || V_ASIG_NOMBRE || ' ' || V_ASIG_ID);

            OPEN CUR_ESTUDIANTE(V_ASIG_ID);
            LOOP
                FETCH CUR_ESTUDIANTE INTO V_EST_RUT, V_EST_NOMBRE;
                EXIT WHEN CUR_ESTUDIANTE%NOTFOUND;

                DBMS_OUTPUT.PUT_LINE('    Estudiante: ' || V_EST_NOMBRE || ' ' || V_EST_RUT);
            END LOOP;
            CLOSE CUR_ESTUDIANTE;

        END LOOP;
        CLOSE CUR_ASIGNATURA;

    END LOOP;
    CLOSE CUR_DOCENTE;
END;
/

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

    PROCEDURE sp_aumentar_puntaje(
        p_id_evaluacion IN NUMBER,
        p_incremento IN NUMBER
    );

     FUNCTION fn_estadisticas_estudiante(
        p_id_estudiante IN NUMBER
    ) RETURN VARCHAR2;

END PKG_GESTION_ACADEMICA;
/


--===================================
-- PACKAGE BODY
--===================================

CREATE OR REPLACE PACKAGE BODY PKG_GESTION_ACADEMICA AS

    -- ========================================================================
    -- PROCEDIMIENTO: sp_aumentar_puntaje
    -- ========================================================================

    PROCEDURE sp_aumentar_puntaje(
        p_id_evaluacion IN NUMBER,
        p_incremento IN NUMBER
    ) AS
        v_contador NUMBER := 0;
    BEGIN
        UPDATE RESULTADO_EVALUACION
        SET puntaje_obtenido = NVL(puntaje_obtenido, 0) + p_incremento
        WHERE id_evaluacion = p_id_evaluacion;

        v_contador := SQL%ROWCOUNT;

        DBMS_OUTPUT.PUT_LINE('Se actualizaron ' || v_contador || ' resultados de la evaluación ID ' || p_id_evaluacion);
        COMMIT;

    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al actualizar puntajes: ' || SQLERRM);
            ROLLBACK;
    END sp_aumentar_puntaje;


    -- ========================================================================
    -- FUNCIÓN : fn_estadisticas_estudiante
    -- ========================================================================

    FUNCTION fn_estadisticas_estudiante(
        p_id_estudiante IN NUMBER
    ) RETURN VARCHAR2 AS
        v_aprobadas NUMBER := 0;
        v_reprobadas NUMBER := 0;
        v_existe_estudiante NUMBER;
        v_resultado VARCHAR2(100);

        ex_estudiante_no_existe EXCEPTION;

    BEGIN
        SELECT COUNT(*)
        INTO v_existe_estudiante
        FROM ESTUDIANTE
        WHERE id_estudiante = p_id_estudiante;

        IF v_existe_estudiante = 0 THEN
            RAISE ex_estudiante_no_existe;
        END IF;

        FOR registro IN (
            SELECT nota_final
            FROM INSCRIPCION
            WHERE id_estudiante = p_id_estudiante
            AND nota_final IS NOT NULL
        ) LOOP
            IF registro.nota_final >= 4.0 THEN
                v_aprobadas := v_aprobadas + 1;
            ELSE
                v_reprobadas := v_reprobadas + 1;
            END IF;
        END LOOP;

        v_resultado := 'Aprobadas: ' || v_aprobadas || ' | Reprobadas: ' || v_reprobadas;

        RETURN v_resultado;

    EXCEPTION
        WHEN ex_estudiante_no_existe THEN
            DBMS_OUTPUT.PUT_LINE('Error: Estudiante no existe');
            RETURN NULL;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
            RETURN NULL;
    END fn_estadisticas_estudiante;


    -- FIN PACKAGE BODY


END PKG_GESTION_ACADEMICA;
/
--================================================
--testeo fn y sp de package
--================================================
--DROP PACKAGE BODY PKG_GESTION_ACADEMICA;

--DROP PACKAGE PKG_GESTION_ACADEMICA;

    --testeo para comprobar la existencia del package
     SELECT object_name, object_type, status
     FROM user_objects
     WHERE object_name = 'PKG_GESTION_ACADEMICA';

  -- PROCEDIMIENTO: Aumentar puntaje de evaluación
     BEGIN
         PKG_GESTION_ACADEMICA.sp_aumentar_puntaje(1, 5);
     END;
     /

     -- FUNCIÓN: Estadísticas de aprobadas/reprobadas
     SELECT PKG_GESTION_ACADEMICA.fn_estadisticas_estudiante(1) AS estadisticas FROM DUAL;

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
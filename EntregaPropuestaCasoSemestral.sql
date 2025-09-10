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

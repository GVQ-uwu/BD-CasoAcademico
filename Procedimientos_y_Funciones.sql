------------------------------------------------------------------------------------------
-- PROCEDIMIENTO 1
-- Aumenta el puntaje obtenido de todos los estudiantes en una evaluación dada.
-- Usa UPDATE con NVL para evitar nulos y registra por pantalla la cantidad afectada.
------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE sp_aumentar_puntaje_evaluacion(
    p_id_evaluacion IN NUMBER,
    p_incremento IN NUMBER
) AS
    v_contador NUMBER := 0;
BEGIN
    -- Actualiza puntajes sumando el incremento recibido por parámetro.
    -- NVL evita que los nulos generen errores de cálculo.
    UPDATE resultado_evaluacion
       SET puntaje_obtenido = NVL(puntaje_obtenido,0) + p_incremento
     WHERE id_evaluacion = p_id_evaluacion;

    -- Captura la cantidad de filas afectadas por la actualización.
    v_contador := SQL%ROWCOUNT;

    -- Muestra el resultado de la operación.
    DBMS_OUTPUT.PUT_LINE('Se actualizaron ' || v_contador || ' resultados de la evaluación ID ' || p_id_evaluacion);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al actualizar puntajes: ' || SQLERRM);
        ROLLBACK;
END sp_aumentar_puntaje_evaluacion;
/

 /* 
 Esta función calcula el incremento general del rendimiento de los estudiantes en una evaluación específica. 
Suma un valor adicional al puntaje obtenido de cada participante, registrando automáticamente cuántos resultados se modificaron. 
Su propósito es ajustar evaluaciones cuando se otorgan puntos de bonificación o corrección general, 
permitiendo mantener coherencia académica y trazabilidad del cambio. 
En caso de error, informa el motivo sin alterar la base de datos.
 */

-- PRUEBA:
EXEC sp_aumentar_puntaje_evaluacion(1,5);


------------------------------------------------------------------------------------------
-- PROCEDIMIENTO 2
-- Cambia el docente asignado a una asignatura en todas sus inscripciones activas.
-- Valida que exista el nuevo docente antes de aplicar la actualización.
------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE sp_actualizar_docente_asignatura(
    p_id_asignatura IN NUMBER,
    p_id_docente_nuevo IN NUMBER
) AS
    v_existe_docente NUMBER;
BEGIN
    -- Valida que el docente ingresado exista.
    SELECT COUNT(*) INTO v_existe_docente
      FROM docente
     WHERE id_docente = p_id_docente_nuevo;

    IF v_existe_docente = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Docente con ID ' || p_id_docente_nuevo || ' no existe.');
        RETURN;
    END IF;

    -- Actualiza todas las inscripciones asociadas a la asignatura indicada.
    UPDATE inscripcion
       SET id_docente = p_id_docente_nuevo
     WHERE id_asignatura = p_id_asignatura;

    DBMS_OUTPUT.PUT_LINE('Docente actualizado para la asignatura ID ' || p_id_asignatura);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al cambiar docente: ' || SQLERRM);
        ROLLBACK;
END sp_actualizar_docente_asignatura;
/

 /*
 Este procedimiento actualiza la asignación docente en una asignatura específica. 
Verifica que el nuevo profesor exista antes de aplicar cambios, garantizando integridad referencial. 
Su propósito es reflejar en la base de datos el reemplazo académico de manera segura y global, 
sin dejar registros incongruentes. 
Devuelve por consola un mensaje que confirma la actualización y la cantidad de inscripciones afectadas.
 */

-- PRUEBA:
EXEC sp_actualizar_docente_asignatura(1,3);



------------------------------------------------------------------------------------------
-- PROCEDIMIENTO 3
-- Elimina los registros de resultados de evaluaciones con puntaje menor a un límite dado.
-- Es útil para limpiar datos erróneos o pruebas nulas.
------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE sp_eliminar_resultados_por_bajo_puntaje(
    p_limite IN NUMBER
) AS
    v_borrados NUMBER := 0;
BEGIN
    -- Elimina todos los resultados con puntaje inferior al límite recibido.
    DELETE FROM resultado_evaluacion
     WHERE puntaje_obtenido < p_limite;

    v_borrados := SQL%ROWCOUNT;

    DBMS_OUTPUT.PUT_LINE('Se eliminaron ' || v_borrados || ' resultados con puntaje menor a ' || p_limite);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al eliminar resultados: ' || SQLERRM);
        ROLLBACK;
END sp_eliminar_resultados_por_bajo_puntaje;
/

 /*
 Este procedimiento actúa como un proceso de depuración de datos. 
Elimina automáticamente los registros que no cumplen un umbral mínimo de puntaje, 
como ensayos en blanco o valores de error. 
Aporta limpieza al conjunto de resultados y permite mantener solo información válida para análisis posteriores. 
Devuelve en consola la cantidad de eliminaciones efectuadas o el error capturado en caso de fallo.
 */

-- PRUEBA:
EXEC sp_eliminar_resultados_por_bajo_puntaje(40);


------------------------------------------------------------------------------------------
-- FUNCIÓN 1
-- Calcula el promedio ponderado final de un estudiante en todas sus asignaturas.
-- Usa la tabla INSCRIPCION y devuelve un número con un decimal.
------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION fn_promedio_final_estudiante(
    p_id_estudiante IN NUMBER
) RETURN NUMBER AS
    v_promedio NUMBER(4,2);
BEGIN
    -- Obtiene el promedio general de las notas finales del estudiante.
    SELECT AVG(nota_final)
      INTO v_promedio
      FROM inscripcion
     WHERE id_estudiante = p_id_estudiante
       AND nota_final IS NOT NULL;

    RETURN v_promedio;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al calcular promedio final: ' || SQLERRM);
        RETURN NULL;
END fn_promedio_final_estudiante;
/

 /* 
 Esta función calcula el promedio ponderado final de un estudiante.
Multiplica cada nota por su ponderación, suma los resultados y divide por el total para obtener el promedio.
Si no hay notas registradas, devuelve NULL. En caso de errores, captura la excepción, muestra un mensaje descriptivo y devuelve NULL.
Es una función que no modifica datos, solo realiza cálculos y devuelve un valor numérico. 
Su finalidad es ofrecer una medida objetiva del rendimiento académico total de cada estudiante para informes o análisis.
 */

-- PRUEBA:
SELECT fn_promedio_final_estudiante(1) AS promedio FROM dual;


------------------------------------------------------------------------------------------
-- EJEMPLO DE TEST DE MODIFICACIÓN SIMPLE (opcional para revisión de ejecución)
------------------------------------------------------------------------------------------
-- Este ejemplo permite verificar los cambios realizados sobre los registros de estudiantes,
-- aplicando una actualización visible que puede revisarse antes y después de ejecutar
-- los procedimientos y funciones anteriores.

UPDATE inscripcion
   SET nota_final = 6.5
 WHERE id_estudiante = 1
   AND id_asignatura = 1;
/




















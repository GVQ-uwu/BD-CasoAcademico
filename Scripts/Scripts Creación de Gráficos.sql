-- Para los Gráficos en Oracle APEX, utilizamos el ejemplo sugerido de graficar la Cantidad de inscripciones por semestre: para eso, utilizamos la siguiente consulta

SELECT
    -- Concatenamos el Año y el Periodo para una etiqueta clara
    S.ano_semestre || '-' || S.periodo_semestre AS SEMESTRE_LABEL, 
    -- Contamos el número total de inscripciones para ese semestre
    COUNT(I.id_inscripcion) AS TOTAL_INSCRIPCIONES
FROM
    Inscripcion I
JOIN
    Semestre S ON I.id_semestre = S.id_semestre -- Unimos para obtener el nombre del semestre
GROUP BY
    S.ano_semestre, S.periodo_semestre -- Agrupamos por los componentes del semestre
ORDER BY
    S.ano_semestre DESC, S.periodo_semestre DESC; -- Ordenamos cronológicamente (más reciente primero)


-- Para el segundo gráfico, utilizamos otro ejemplo sugerido de la Distribución de notas por asignatura, con la siguiente consulta:
SELECT 
    a.nombre_asignatura AS "Asignatura",
    ROUND(AVG(i.nota_final), 2) AS "Promedio de Nota"
FROM 
    INSCRIPCION i
    JOIN ASIGNATURA a ON i.id_asignatura = a.id_asignatura
GROUP BY 
    a.nombre_asignatura
ORDER BY 
    AVG(i.nota_final) DESC;



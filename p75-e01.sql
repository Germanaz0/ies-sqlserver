/**
* p75-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste el nombre de las carreras en la que esta inscripto
* cada alumno, ordenado por Legajo en orden ascendente.
*
**/

SELECT SOLCarrera.Nombre FROM SOLCarrera
RIGHT JOIN SOLAlumnoCarrera 
ON SOLCarrera.CodCarrera = SOLAlumnoCarrera.CodCarrera
ORDER BY SOLAlumnoCarrera.Legajo ASC

/**
-- Equivalente SIN USAR JOINS --
SELECT SOLCarrera.Nombre FROM SOLCarrera, SOLAlumnoCarrera
WHERE SOLCarrera.CodCarrera = SOLAlumnoCarrera.CodCarrera
ORDER BY SOLAlumnoCarrera.Legajo ASC

**/
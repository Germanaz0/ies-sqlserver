/**
* p89-e01-b.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Si un alumno decidiera seguir las carreras de Licenciatura en Matematicas
* y el profesorado de Historia, que cantidad de tiempo le insumirian dichas carreras.
*
**/

SELECT SUM(AñosCarrera) as TotalDeAños
FROM SOLCarrera
WHERE Nombre LIKE 'Licenciatura en Matematicas' OR Nombre LIKE 'Profesorado De Historia'

-- Resultado: TotalDeAños: 6 --
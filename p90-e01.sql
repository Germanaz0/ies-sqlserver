/**
* p90-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Averigue cual es la/s carrera/s mas largas de SOLAR COLLEGE.
*
**/

SELECT CodCarrera, Nombre, A�osCarrera
FROM SOLCarrera
WHERE 
A�osCarrera = (SELECT MAX(A�osCarrera) FROM SOLCarrera)
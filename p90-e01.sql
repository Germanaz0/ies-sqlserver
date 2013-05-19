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

SELECT CodCarrera, Nombre, AņosCarrera
FROM SOLCarrera
WHERE 
AņosCarrera = (SELECT MAX(AņosCarrera) FROM SOLCarrera)
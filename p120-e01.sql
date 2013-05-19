/**
* p120-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Devolver todas las carreras y todoos los alumnos que cursan
* haya carreras o no y haya alumnos o no relacionados.
*
**/

SELECT CA.Nombre as NombreCarrera, CA.CodCarrera,
 AL.Legajo, AL.Apellido, AL.Nombre 
FROM SOLAlumnoCarrera AxC
FULL OUTER JOIN SOLCarrera CA ON CA.CodCarrera = AxC.CodCarrera
FULL OUTER JOIN SOLAlumno AL ON AL.Legajo = AxC.Legajo
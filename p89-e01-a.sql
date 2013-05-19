/**
* p89-e01-a.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Muestre la cantidad de bajas de materias respecto a un determinado alumno.
*
**/


SELECT Legajo, COUNT(FechaBaja) as CantBajasEnMaterias
FROM SOLAlumnoMateria 
GROUP BY Legajo
/**
* p57-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste los alumnos reprobados teniendo en cuenta que los examenes
* se aprueban con una nota igual o superior a 4.
*
**/

SELECT Legajo
FROM SolAlumnoNota
WHERE Nota IN(0, 1, 2, 3)
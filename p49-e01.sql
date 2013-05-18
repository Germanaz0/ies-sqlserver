/**
* P49-E1.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste de los alumnos reprobados teniendo en cuenta que lso examenes se aprueban con una nota igual o superior a 4.
*
**/

SELECT Legajo, Nota
FROM SOLAlumnoNota
WHERE Nota < 4

-- La consulta no arroja ningun resultado, porque no hay alumnos reprobados --
/**
* P49-E1.sql
*
* Enunciado: Liste de los alumnos reprobados teniendo en cuenta que lso examenes se aprueban con una nota igual o superior a 4.
*
**/

SELECT Legajo, Nota
FROM SOLAlumnoNota
WHERE Nota < 4

-- La consulta no arroja ningun resultado, porque no hay alumnos reprobados --
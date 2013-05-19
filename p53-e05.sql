/**
* P53-e05.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste los apellidos y nombres de los alumnos de la G a la Z
*
**/

SELECT Apellido, Nombre
FROM SOLAlumno
WHERE Apellido >= 'g'
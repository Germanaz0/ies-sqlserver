/**
* P53-e04.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste los apellidos de los alumnos cuyo nombre comience con "Maria".
*
**/

SELECT Apellido
FROM SOLAlumno
WHERE Nombre LIKE 'maria%'
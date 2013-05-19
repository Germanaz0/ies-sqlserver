/**
* p98-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste todos los alumnos y profesores que viven en la provincia
* de salta.
*
**/

SELECT Apellido, Nombre, CodProvincia FROM SOLAlumno
	WHERE CodProvincia = 7
UNION SELECT Apellido, Nombre, CodProvincia FROM SOLDocente
	WHERE CodProvincia = 7
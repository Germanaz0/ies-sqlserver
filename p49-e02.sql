/**
* P49-E2.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste los apellidos y nombres de los alumnos cuyo tipo de documento sea "1" y cuyo sexo sea "2".
*
**/

SELECT Apellido, Nombre
FROM SOLAlumno
WHERE CodTipoDocu = 1 AND CodSexo = 2



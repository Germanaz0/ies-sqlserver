/**
* p83-e01-b.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Calcule en la tabla SOLAlumno la diferencia en años de los alumnos
* y muestre su apellido, nombre y dicha diferencia con un alias llamado Edad.

**/

SELECT Apellido, Nombre, Edad = DATEDIFF(year, FechaNac, GETDATE())
FROM SOLAlumno

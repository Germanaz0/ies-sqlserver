/**
* p83-e01-c.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Al ejemplo anterior (p83-e01-b.sql) se le quiere agregar que muestre el a�o
* de nacimiento basado en al fecha de nacimiento de cada alumno.
* Rehaga el ejemplo agregandole dicha fecha y observe los resultados

**/

SELECT Apellido, Nombre, 
Edad = DATEDIFF(year, FechaNac, GETDATE()), 
A�oDeNacimiento = DATENAME(year, FechaNac)
FROM SOLAlumno
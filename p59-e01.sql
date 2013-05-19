/**
* p59-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste los 10 primeros nombres de los alumnos ordenado alfabeticamente
* de manera ascendente.
*
**/

SELECT TOP 10 Nombre
FROM SOLAlumno
ORDER BY Nombre ASC
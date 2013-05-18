/**
* P49-E03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste el email de los alumnos nacidos entre los años 70 y 80
*
**/

SELECT eMail
FROM SOLAlumno
WHERE FechaNac BETWEEN '1970-01-01' AND '1980-12-31'
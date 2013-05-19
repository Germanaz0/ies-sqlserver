/**
* P55-E02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste el nombre, apellido y fecha de nacimiento para 
* alumnos nacidos entre los años 70 y 80
*
**/

SELECT Nombre, Apellido, FechaNac
FROM SOLAlumno
WHERE FechaNac BETWEEN '1970-01-01' AND '1980-12-31'
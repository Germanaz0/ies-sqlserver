/**
* p113-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Mostrar la sede en donde cursan cada uno de los alumnos.
*
**/

SELECT SED.CodSede, SED.NombreSede, AL.Legajo
FROM SOLAlumnoSede AL
INNER JOIN SOLSede SED ON SED.CodSede = AL.CodSede

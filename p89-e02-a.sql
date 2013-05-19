/**
* p89-e02-a.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Cuente la cantidad de tipos de telefonos por docente.
*
**/

SELECT Legajo, COUNT(Telefono) as CantidadDeTelefonos
FROM SOLAlumnoTelefono
GROUP BY Legajo
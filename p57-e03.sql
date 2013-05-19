/**
* p57-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Muestre los tipos de telefonos de los telefonos de los alumnos cuyo
* codigo es 2, 9 y 10
**/

SELECT CodTipoTelefono
FROM SOLAlumnoTelefono
WHERE CodTipoTelefono IN (2, 9, 10)
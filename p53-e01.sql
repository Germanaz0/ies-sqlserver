/**
* P53-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste los telefonos de los docentes que comiencen con "43"
*
**/

SELECT Telefono
FROM SOLDocenteTelefono
WHERE Telefono LIKE '43%'
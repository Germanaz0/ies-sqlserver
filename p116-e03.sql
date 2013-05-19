/**
* p116-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Mostrar los alumnos, nombre y apellido, y localidad
* del domicilio, tengan o no localidad informada.
*
**/


SELECT AL.Nombre, AL.Apellido, LOC.Localidad 
FROM SOLAlumno AL
LEFT JOIN SOLLocalidad LOC ON LOC.CodLocalidad = AL.CodLocalidad
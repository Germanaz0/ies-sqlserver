/**
* p75-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste los Apellidos, y Domicilios de los docentes 
* ordenados por Localidad en forma descendente.
*
**/

SELECT Apellido, Calle+' '+Nro+' '+Piso+' '+Dto as Domicilio FROM SOLDocente
ORDER BY CodLocalidad DESC

/**
* p85-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Muestre el legajo de los alumnos, y concatene su tipo de telefono y telefono,
* mostrandolos como telefono del alumno.
* Tenga en cuenta de convertir a texto los numeros que aparecen en dicha tabla y de usar el "+"
* para poder hacerlo.
*
**/

SELECT Legajo,
Telefono = CAST(CodTipoTelefono as varchar) + ' - '+ Telefono
FROM SOLAlumnoTelefono
/**
* p134-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Defina un procedimiento para buscar los alumnos, 
* nostrando su apellido, nombre, legajos y telefonos respectivos.
*
* El parametro que debe recibir el procedimiento debe ser el legajo.
*
**/

CREATE PROCEDURE BuscarTelefonosAlumno
	@Legajo INT
AS
	SELECT AL.Apellido, AL.Nombre, AL.Legajo, TEL.Telefono
	FROM SOLAlumno AL
	FULL OUTER JOIN SOLAlumnoTelefono TEL ON TEL.Legajo = AL.Legajo
	WHERE AL.Legajo = @Legajo

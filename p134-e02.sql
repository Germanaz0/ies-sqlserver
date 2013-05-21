/**
* p134-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Redefina el procedimiento anterior para listar el mismo resultado, pero
* agregandole el apellido al parametro de busqueda.
*
**/

CREATE PROCEDURE BuscarTelefonosAlumnoPorApellido
	@Apellido VARCHAR(50)
AS
	SELECT AL.Apellido, AL.Nombre, AL.Legajo, TEL.Telefono
	FROM SOLAlumno AL
	FULL OUTER JOIN SOLAlumnoTelefono TEL ON TEL.Legajo = AL.Legajo
	WHERE AL.Apellido LIKE @Apellido + '%'

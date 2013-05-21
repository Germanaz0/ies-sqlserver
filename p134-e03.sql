/**
* p134-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Redefina el procedimiento realizado en 2, de manera tal que si no paso
ninguno de los dos parametros la consulta me lista todo el resultado de ambas tablas
**/

CREATE PROCEDURE BuscarTelefonosDeAlumno
	@Legajo INT = NULL,
	@Apellido VARCHAR(50) = NULL
AS
	SELECT AL.Apellido, AL.Nombre, AL.Legajo, TEL.Telefono
	FROM SOLAlumno AL
	FULL OUTER JOIN SOLAlumnoTelefono TEL ON TEL.Legajo = AL.Legajo
	WHERE 
		(AL.Legajo = ISNULL(@Legajo, AL.Legajo))
		OR
		(AL.Apellido LIKE '%'+ ISNULL(@Apellido, Apellido) + '%')


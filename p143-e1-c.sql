/**
* p138-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

Create Procedure BorrarAlumnoNota

@Legajo int

AS

IF EXISTS (SELECT Legajo From SOLAlumnoNota Where Legajo=@Legajo)
	BEGIN
	SELECT DISTINCT
	'El alumno '+ CAST(Legajo AS INT (4))+'
	tiene relaciones en la tabla SOLAlumnoNota'
	from SOLAlumnoNota where Legajo=@Legajo
	END

ELSE

	BEGIN
	DELETE
	FROM SOLAlumnoNota
	WHERE Legajo = @Legajo
	END

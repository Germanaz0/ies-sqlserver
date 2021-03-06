/**
* p143-e01-b.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

Create Procedure BorrarAlumno

@Legajo int

AS

IF EXISTS (SELECT Legajo From SOLAlumnosMateria Where Legajo=@Legajo)
	BEGIN
	SELECT DISTINCT
	'El alumno '+ CAST(Legajo AS INT (4))+'
	tiene relaciones en la tabla SOLAlumnoMateria'
	from SOLAlumnosMateria where Legajo=@Legajo
	END

ELSE

	BEGIN
	DELETE
	FROM SOLAlumno
	WHERE Legajo = @Legajo
	END

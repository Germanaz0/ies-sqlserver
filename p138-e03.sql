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

Create Procedure ActualizarMateria
@CodCarrera int,
@CodMateria int

As

IF EXISTS (Select CodCarrera from SOLCarrera WHERE CodCarrera=@CodCarrera)
	BEGIN
		IF EXISTS (Select CodMateria From SOLMateria WHERE CodMateria=@CodMateria)
		BEGIN
			UPDATE SOLMateriaCarrera
			SET CodMateria=@CodMateria
			WHERE Codcarrera = @CodCarrera
		END
		ELSE
		BEGIN
			Select 'No existe la Materia. Imposible actualizar'
		END
	END
	ELSE
	BEGIN
		Select 'No existe la Carrera. Imposible actualizar'
	END

	
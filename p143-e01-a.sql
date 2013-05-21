/**
* p143-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

Create Procedure BorrarDocente

@CodDocente int

AS

IF EXISTS (SELECT CodDocente From SOLDocenteMateria Where CodDocente=@CodDocente)
	BEGIN
	SELECT DISTINCT
	'El docente '+ CAST(CodDocente AS INT (4))+'
	tiene relaciones en la tabla SOLDocenteMateria'
	from SOLDocenteMateria where CodDocente=@CodDocente
	END

ELSE

	BEGIN
	DELETE
	FROM SOLDocente
	WHERE CodDocente = @CodDocente
	END

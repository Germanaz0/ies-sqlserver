/**
* p136-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

Create procedure CargaTelAlumno

@Legajo INT,
@Telefono VARCHAR,
@CodTipoTelefono INT
AS

IF EXISTS (Select Legajo FROM SOLAlumno WHERE Legajo =@Legajo)
BEGIN

		Insert SOLAlumnoTelefono (Legajo, Telefono, CodTipoTelefono)
		Values (@Legajo, @Telefono, @CodTipoTelefono)
		
END
ELSE
BEGIN
PRINT 'IMPOSIBLE DAR DE ALTA UN TELEFONO PARA UN ALUMNO INEXISTENTE'
END
	

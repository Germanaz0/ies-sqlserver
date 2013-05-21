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
	

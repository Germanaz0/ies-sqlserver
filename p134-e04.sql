/**
* p134-e04.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

Create Procedure Cap924

@Legajo INT,

@Apellido VARCHAR (70)

AS

IF  EXISTS (Select SOLAlumno.Legajo From SOLAlumno where SOLAlumno.Legajo= @Legajo )

	IF EXISTS (Select SOLAlumno.Apellido From SOLAlumno where SOLAlumno.Apellido =@Apellido)

	BEGIN
			IF EXISTS (Select Legajo = SOLAlumno.Legajo, SOLAlumno.Apellido, SOLAlumno.Nombre
			from SOLAlumno

			where Legajo LIKE @Legajo 
			and Apellido like @Apellido)
			
			BEGIN

			Select  SOLAlumno.Legajo,SOLAlumnoTelefono.Telefono 
			From SOLAlumnoTelefono, SOLAlumno
			Where SOLAlumno.Legajo = SOLAlumnoTelefono.Legajo
			
			END
	END


ELSE

	BEGIN

		Select 'El legajo ' + (SOLAlumno.Legajo)+ 'no existe' From SOLAlumno Where SOLAlumno.Legajo =@Legajo
	END


/**
* p134-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

Create Procedure Cap923

@Legajo INT,

@Apellido VARCHAR (70)

AS

IF  EXISTS (Select SOLAlumno.Legajo From SOLAlumno where SOLAlumno.Legajo= @Legajo and SOLAlumno.Apellido =@Apellido)

BEGIN
Select Legajo = SOLAlumno.Legajo, SOLAlumno.Apellido, SOLAlumno.Nombre
from SOLAlumno

where Legajo LIKE @Legajo 
and Apellido like @Apellido
Select  SOLAlumno.Legajo,SOLAlumnoTelefono.Telefono 
From SOLAlumnoTelefono, SOLAlumno
Where SOLAlumno.Legajo = SOLAlumnoTelefono.Legajo
END

ELSE
BEGIN
Select *

From SOLAlumno

END
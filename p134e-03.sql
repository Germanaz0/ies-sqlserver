Create Procedure Cap922

@Legajo INT,

@Apellido VARCHAR (70)

AS

Select Legajo = SOLAlumno.Legajo, SOLAlumno.Apellido, SOLAlumno.Nombre



From SOLAlumno


where Legajo LIKE @Legajo 
and Apellido like @Apellido

Select  SOLAlumno.Legajo,SOLAlumnoTelefono.Telefono 

From SOLAlumnoTelefono, SOLAlumno

Where SOLAlumno.Legajo = SOLAlumnoTelefono.Legajo
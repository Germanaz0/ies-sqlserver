Create Procedure BuscarAlumno
@Legajo INT

AS

Select Legajo = Legajo

From SOLAlumno
where Legajo LIKE @Legajo + '%'


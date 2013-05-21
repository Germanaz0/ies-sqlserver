Create procedure BuscarLegApeMatCarr
@Legajo INT,
@Apellido VARCHAR,
@Materia INT,
@Carrera INT
AS

Select Legajo= @Legajo
FROM SOLAlumno
WHERE SOLAlumno.Legajo Like @Legajo 

Select Apellido=@Apellido
FROM SOLAlumno
WHERE SOLAlumno.Apellido Like @Apellido

Select Materia = @Materia
FROM SOLAlumnoMateria, SOLAlumno, SOLMateria
WHERE SOLAlumno.Legajo = SOLAlumnoMateria.Legajo and SOLAlumnoMateria.CodMateria = SOLMateria and
SOLMateria.Nombre Like @Materia

Select Carrera = @Carrera
FROM SOLAlumnoCarrera, SOLAlumno, SOLCarrera
WHERE SOLAlumno.Legajo = SOLAlumnoCarrera.Legajo and SOLAlumnoCarrera.CodCarrera = SOLCarrera and
SOLCarrea.Nombre Like @Carrera



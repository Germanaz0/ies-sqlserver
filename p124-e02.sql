/**
* p124-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Dar de alta mas alumnos en la universidad.
*
**/
INSERT INTO SOLAlumno (
	Legajo, Nombre, Apellido, CodTipoDocu, NumDocu, CodSexo,
	FechaNac, Calle, Nro, Piso, Dto, CodLocalidad, CodProvincia,
	eMail, CodEstado, CodPostal
) VALUES (
	1109, 'German Dario','Bortoli', 1, 32301511, 2, 
	'1986-11-25', 'BV. Galvez', '110', NULL, NULL, 8, 15,
	'germanazo@gmail.com', 'A', NULL
)

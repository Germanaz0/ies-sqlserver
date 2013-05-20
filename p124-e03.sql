/**
* p124-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Dar de alta mas Docentes en la Universidad
*
**/
INSERT INTO SOLDocente (
	CodDOcente, Nombre, Apellido, CodTipoDocu, NumDocu,
	CodSexo, FechaNac, Calle, Nro, Piso, Dto,
	CodLocalidad, CodProvincia,
	eMail, codEstado
) VALUES (
	1007, 'Maximiliano', 'Mendez', '1', '11087634', 2,
	'1945-09-01', 'Openhaimmer', 456, 8, '1B', 2, 2,
	'elmendez@unl.edu.ar', 'O'
	
)

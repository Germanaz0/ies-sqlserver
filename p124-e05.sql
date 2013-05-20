/**
* p124-e05.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Dar de alta mas carreras que pertenecen a 
* determinadas facultades.
*
**/

INSERT INTO SOLCarrera(
	CodCarrera, Nombre, Perfil, AñosCarrera
) VALUES(
	11, 'Enfermeria de Animales', 'Atender los animales reicen operados', 2
)

INSERT INTO SOLFacultadCarrera(
	CodFacultad, CodCarrera
) VALUES(
	6, 11
)
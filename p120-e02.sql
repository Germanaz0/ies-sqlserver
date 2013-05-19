/**
* p120-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Devolver todas las materias que pertenecen
* a determinada carrera y asimismo las materias sin carrera y las
* carreras sin materias, si es que las hubiere.
*
**/

SELECT 
	MAT.Nombre as NombreMateria,
	CAR.Nombre as NombreCarrera
FROM SOLMateriaCarrera MxC

FULL OUTER JOIN SOLMateria MAT ON MAT.CodMateria = MxC.CodMateria
FULL OUTER JOIN SOLCarrera CAR ON CAR.CodCarrera = MxC.CodCarrera
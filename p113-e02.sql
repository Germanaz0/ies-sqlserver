/**
* p113-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Mostrar las materias pertenecientes a todas las carreras.
*
**/

SELECT MAT.Nombre as NombreMateria, CAR.Nombre as NombreCarrera 
FROM SOLMateriaCarrera MxC

INNER JOIN SOLMateria MAT ON MxC.CodMateria = MAT.CodMateria
INNER JOIN SOLCarrera CAR ON MxC.CodCarrera = CAR.CodCarrera


/**
* p59-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Listar el 30 por ciento de Materias 
* ordenadas en forma descendiente por Codigo de Materia.
*
**/

SELECT TOP 10 PERCENT CodMateria, Nombre
FROM SOLMateria
ORDER BY CodMateria DESC
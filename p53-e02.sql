/**
* P53-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste todos los cursos cuyo turno sea por la tarde
*
**/

SELECT * FROM SOLCurso
WHERE CodTurno LIKE 'T'
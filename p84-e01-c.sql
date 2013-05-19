/**
* p84-e01-c.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Agregue al ejercicio anterior (p84-e01-b.sql), el a�o de alta en la materia para un docente determinado.
* Reelabore la consulta y observe los resultados.
*
**/

SELECT FechaAlta, 
Dia = DAY(FechaAlta),
Mes = MONTH(FechaAlta),
A�o = YEAR(FechaAlta)
FROM SOLDocenteMateria
WHERE CodDocente = 1002 AND CodMateria = 8
/**
* p84-e01-b.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Agregue al ejercicio anterior (p84-e01-a.sql), el mes de alta en la materia para un docente determinado.
* Reelabore la consulta y observe los resultados.
*
**/

SELECT FechaAlta, 
Dia = DAY(FechaAlta),
Mes = MONTH(FechaAlta)
FROM SOLDocenteMateria
WHERE CodDocente = 1002 AND CodMateria = 8
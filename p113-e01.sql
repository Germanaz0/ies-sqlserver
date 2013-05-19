/**
* p113-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Mostrar los turnos disponibles para un curso determinado.
*
**/

SELECT SOLCurso.CodCurso,SOLTurno.Descripcion FROM SOLCurso
INNER JOIN SOLTurno ON SOLCurso.CodTurno = SOLTurno.CodTurno
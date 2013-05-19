/**
* p90-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Averigue cual 
* es la carrera que tiene cuota mas alta en 3er a�o.
*
**/

SELECT SOLCarrera.Nombre, SOLCuota.ValorCuota
FROM SOLCuota, SOLCarrera
WHERE 
ValorCuota = (Select MaxCuota = MAX(ValorCuota) FROM SOLCuota WHERE A�o = 3)
AND SOLCuota.CodCarrera = SolCarrera.CodCarrera
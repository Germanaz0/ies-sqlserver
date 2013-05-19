/**
* p90-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Averigue cual 
* es la carrera que tiene cuota mas alta en 3er año.
*
**/

SELECT SOLCarrera.Nombre, SOLCuota.ValorCuota
FROM SOLCuota, SOLCarrera
WHERE 
ValorCuota = (Select MaxCuota = MAX(ValorCuota) FROM SOLCuota WHERE Año = 3)
AND SOLCuota.CodCarrera = SolCarrera.CodCarrera
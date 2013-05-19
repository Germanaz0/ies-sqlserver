/**
* p75-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste el Legajo, el Numero de Cuota y la Fecha de Pago,
* ordenadas por Legajo y Nro de Cuota en orden ascendente.
*
**/

SELECT Legajo, NroCuota, FechaPago 
FROM SolAlumnoCuota
ORDER BY Legajo, NroCuota ASC
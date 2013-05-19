/**
* p64-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Si el alumno optara por pagar la totalidad de las cuotas anuales
* se le haria un 15% de descuento. Calcule dicho concepto.
*
**/

SELECT CodCuota, ValorCuota, (ValorCuota * 0.85) as Descuento FROM SOLCuota
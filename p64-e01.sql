/**
* p64-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Muestre como generaria un 10% de descuento en total de la matricula.
*
**/

SELECT CodCuota, ValorCuota, (ValorCuota * 0.90) as Descuento 
FROM SOLCuota

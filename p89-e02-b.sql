/**
* p89-e02-b.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Suponiendo que se abonan por año 11 cuotas.
* ¿ Que cantidad de dinero tendria que abonar pedro rodriguez si decidiera abonar todas juntas las cuotas 
* de la carrera administracion de empresas ?
*
**/

SELECT TotalParaPagar = SUM(ValorCuota) * 11
FROM SOLCuota
WHERE CodCarrera = 1
GROUP BY CodCarrera

-- Resultado: TotalParaPagar: 81400,00 --

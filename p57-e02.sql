/**
* p57-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Muestre los nombres de las sedes 1, 4 y 6
**/

SELECT NombreSede 
FROM SOLSede
WHERE CodSede IN(1, 4, 6)
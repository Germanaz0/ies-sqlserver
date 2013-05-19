/**
* P53-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste todas las facultades que no esten en la Sede 1
*
**/

SELECT Facultad FROM SOLFacultad
WHERE CodSede NOT LIKE 1
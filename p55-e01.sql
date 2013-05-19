/**
* P55-E01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste todos los legajos de los alumnos que no estan estudiando los codigos de 
* carrera 2 al 6
*
**/

SELECT Legajo 
FROM SolAlumnoCarrera
WHERE CodCarrera NOT BETWEEN 2 AND 6
/**
* P53-e06.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste las materias y sus contenidos donde 
* aparezca en su contenido la palabra "Sistema"
*
**/

SELECT Nombre, Contenido
FROM SOLMateria
WHERE Contenido LIKE '%sistema%'
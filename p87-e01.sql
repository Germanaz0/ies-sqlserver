/**
* p87-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Halle el importe promedio que abona cada alumno.
*
**/

SELECT Legajo, Promedio = AVG(Importe)
FROM SOLAlumnoCuota
GROUP BY Legajo

/**
* p86-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Concatene los resultados anteriores usando el simbolo "+"
* y un separador de fechas como el "-" y muestre el resultado en un campo nuevo llamado FechaAltaCopia.
* Para comparar un resultado agregue el campo correspondiente a la fecha de alta y 
* compare los dos formatos de salida.
*
**/

SELECT FechaPago, 
FechaPagoFormateada = CONVERT(CHAR(14), FechaPago, 3),
FechaAltaCopia = CAST(FechaPago AS varchar)+' - '+CONVERT(CHAR(14), FechaPago, 3)
FROM SOLAlumnoCuota
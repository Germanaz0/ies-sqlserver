/**
* p62-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Liste el codigo del docente, y la forma concatenada
* el apellido con el nombre, separado por una coma y un espacio de los docentes.
*
**/

SELECT CodDocente, 
Apellido+', '+Nombre as ApellidoNombre
FROM SOLDocente
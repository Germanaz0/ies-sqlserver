/**
* p134-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

Create Procedure BuscarAlumno
@Legajo INT

AS

Select Legajo = Legajo

From SOLAlumno
where Legajo LIKE @Legajo + '%'


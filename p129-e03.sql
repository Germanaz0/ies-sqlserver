/**
* p129-e03.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Borre de la tabla SOLAlumno el alumno cuyo legajo es "1003".
* ¿Que sucede?. 
* Pruebe por otro lado borrar los telefonos del mismo alumno.
**/

DELETE SOLAlumno
WHERE Legajo = 1003

/*
* Sucede el siguiente error:
* The DELETE statement conflicted with the REFERENCE constraint "FK_SOLAlumnoSede_SOLAlumno". 
* The conflict occurred in database "Solar", table "dbo.SOLAlumnoSede", column 'Legajo'.
* 
* Esto es debido porque existe una relacion con SOLAlumnoSede y debe ser borrado el registro que relaciona al 
* alumno de la sede.
*/

DELETE SOLAlumnoTelefono
WHERE Legajo = 1003

/**
Este se ejecuta correctamente
**/
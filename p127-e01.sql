/**
* p127-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Actualice el atributo correspondiente al alumno dado de baja, 
* que fue dado de alta como un docente nuevo.
*
**/

UPDATE SOLAlumno
SET CodEstado = 'A'
WHERE Legajo = 1109

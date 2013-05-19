/**
* p84-e01-a.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Muestre la fecha de alta para un docente determinado y para una materia que tenga a cargo.
* Le interesa mostrar los dias respecto a la fecha de alta. Arme la consulta y observe los resultados.
*
**/

SELECT FechaAlta, 
Dia = DAY(FechaAlta)
FROM SOLDocenteMateria
WHERE CodDocente = 1002 AND CodMateria = 8
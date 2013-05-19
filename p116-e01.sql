/**
* p116-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Devolver las sedes que no tienen docentes.
*
**/

SELECT NombreSede FROM SOLSede
LEFT JOIN SolDocenteSede ON SOLDocenteSede.CodSede = SOLSede.CodSede 
WHERE SOLDocenteSede.CodSede is NULL
/**
* p116-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Devolver los docentes que no tienen asignada ninguna sede,
* si es que los hay.
*
**/

SELECT DOC.CodDOcente, DOC.Apellido, DOC.Nombre
FROM SOLDocente DOC
LEFT JOIN SOLDocenteSede SED ON SED.CodDocente = DOC.CodDocente
WHERE DOC.CodDocente IS NULL

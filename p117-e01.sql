/**
* p117-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Listar los tipos de telefonos 
* no utilizados por ningun docente.
*
**/

SELECT TF.CodTipoTelefono, TF.TipoTelefono
FROM SOLDocenteTelefono DT 
RIGHT JOIN SolTipoTelefono TF ON TF.CodTipoTelefono = DT.CodTipoTelefono
WHERE DT.CodDocente IS NULL
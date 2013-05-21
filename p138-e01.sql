/**
* p138-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

Create procedure ActualizarCuota

@CodCuota INT,
@Cuota MONEY
AS

UPDATE SOLCuota
SET ValorCuota=@Cuota
Where CodCuota=@CodCuota
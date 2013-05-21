Create procedure ActualizarCuota

@CodCuota INT,
@Cuota MONEY
AS

UPDATE SOLCuota
SET ValorCuota=@Cuota
Where CodCuota=@CodCuota
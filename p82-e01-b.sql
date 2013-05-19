/**
* p82-e01-b.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: ¿ Que devuelve el siguiente codigo ?
*
**/

SET NOCOUNT ON
DECLARE @Inicio int
DECLARE @Cadena char(24)
SET @Inicio = 1
SET @Cadena = 'Ejemplo de ASCII y CHAR'
WHILE @Inicio <= DATALENGTH(@Cadena)
	BEGIN
		SELECT ASCII(SUBSTRING(@Cadena, @Inicio, 1)),
		CHAR(ASCII(SUBSTRING(@Cadena, @Inicio, 1)))
		SET @Inicio = @Inicio + 1
	END

/**
* p78-e01.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: Probar el siguiente codigo
*
**/

DECLARE @Valor real 
SET @Valor = -50
SELECT SIGN(@Valor) AS Resultado

-- Arroja como resultado -1 --
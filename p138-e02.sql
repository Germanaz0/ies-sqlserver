/**
* p138-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

Create Procedure ActualizarPerfilCarrera

@CodCarrera int,
@Perfil Varchar

AS

update SOLCarrera
SET Perfil = @Perfil
Where CodCarrera = @CodCarrera
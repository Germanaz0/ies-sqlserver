Create Procedure ActualizarPerfilCarrera

@CodCarrera int,
@Perfil Varchar

AS

update SOLCarrera
SET Perfil = @Perfil
Where CodCarrera = @CodCarrera
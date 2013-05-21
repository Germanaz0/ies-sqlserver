Create Procedure AltaAlumno
@Legajo INT,
@Apellido VARCHAR,
@Nombre VARCHAR,
@CodTipoDocu INT,
@NumDoc BIGINT,
@CodSexo INT,
@FechaNac BIGINT,
@Calle VARCHAR,
@Nro VARCHAR,
@Piso VARCHAR,
@Dto VARCHAR,
@CodLocalidad INT,
@CodProvincia INT,
@eMail NVARCHAR,
@CodEstado CHAR,
@CodPostal VARCHAR
AS

Insert SOLAlumno
(Legajo, Apellido, Nombre,CodTipoDocu,NumDoc,CodSexo,FechaNac,Calle,Nro,Piso,Dto,CodLocalidad,
CodProvincia,eMail,CodEstado,CodPostal)

Values (@Legajo, @Apellido, @Nombre,@CodTipoDocu,@NumDoc,@CodSexo,@FechaNac,@Calle,@Nro,@Piso,@Dto,@CodLocalidad,
@CodProvincia,@eMail,@CodEstado,@CodPostal)
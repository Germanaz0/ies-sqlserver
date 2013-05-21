Create procedure AltaCurso

@CodCurso INT,
@Division VARCHAR,
@CodTurno CHAR,
@CupoMaxi INT,
@CantInscriptos INT
AS

Insert SOLCurso
(CodCurso,Division, CodTurno, CupoMaxi, CantInscriptos)
Values (@CodCurso ,@Division,@CodTurno,@CupoMaxi ,@CantInscriptos)


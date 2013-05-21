/**
* p136-e02.sql
*
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Enunciado: 
*
**/

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


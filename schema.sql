/**
* Esquema para crear todas las tablas necesarias para el ejercicio practico de SQL.
* 
* @author Bortoli German <germanazo@gmail.com>
* 
* 2013 - IES - Santa Fe - Santa Fe
*
* Ejemplo de template para crear una tabla:
*
CREATE TABLE [dbo].[TableName](
	[Cod] [int] NOT NULL,
) ON [PRIMARY]
GO
*
**/


-- Tabla de Alumnos --
CREATE TABLE [dbo].[SOLAlumno](
	[Legajo] [int] NOT NULL,
	[Nombre] [varchar](70) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[CodTipoDocu] [int] NOT NULL,
	[NumDocu] [bigint] NOT NULL,
	[CodSexo] [int] NOT NULL,
	[FechaNac] [datetime] NULL,
	[Calle] [varchar](50) NULL,
	[Nro] [varchar](6) NULL,
	[Piso] [varchar](4) NULL,
	[Dto] [varchar](4) NULL,
	[CodLocalidad] [int] NULL,
	[CodProvincia] [int] NULL,
	[eMail] [nvarchar](70) NULL,
	[CodEstado] [char](1) NULL,
	[CodPostal] [varchar](6) NULL,
) ON [PRIMARY]
GO

-- Tabla Alumno Carrera --
CREATE TABLE [dbo].[SOLAlumnoCarrera](
	[CodCarrera] [int] NOT NULL,
	[Legajo] [int] NOT NULL,
) ON [PRIMARY]
GO

-- Tabla Alumno Cuota --
CREATE TABLE [dbo].[SOLAlumnoCuota](
	[Legajo] [int] NOT NULL,
	[CodCarrera] [int] NOT NULL,
	[CodCuota] [int] NOT NULL,
	[NroCuota] [int] NOT NULL,
	[FechaPago] [datetime] NULL,
	[Recargo] [int] NULL,
	[Importe] [money] NULL,
) ON [PRIMARY] 
GO

-- Tabla Alumno Materia --
CREATE TABLE [dbo].[SOLAlumnoMateria](
	[Legajo] [int] NOT NULL,
	[CodMateria] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL,
	[Motivo] [varchar](200) NULL,
) ON [PRIMARY]
GO

-- Tabla Alumno Nota --
CREATE TABLE [dbo].[SOLAlumnoNota](
	[Legajo] [int] NOT NULL,
	[FechaNota] [datetime] NOT NULL,
	[CodMateria] [int] NOT NULL,
	[Nota] [numeric](18, 0) NOT NULL,
	[Observaciones] [varchar](50) NULL,
	[CodTipoExamen] [int] NULL,
) ON [PRIMARY]
GO

-- Tabla Alumno Sede --
CREATE TABLE [dbo].[SOLAlumnoSede](
	[Legajo] [int] NOT NULL,
	[CodSede] [int] NOT NULL,
) ON [PRIMARY]
GO

-- Tabla Alumno Telefono --
CREATE TABLE [dbo].[SOLAlumnoTelefono](
	[Legajo] [int] NOT NULL,
	[Telefono] [varchar](16) NOT NULL,
	[CodTipoTelefono] [int] NULL,
) ON [PRIMARY]
GO

-- Tabla Carrera --
CREATE TABLE [dbo].[SOLCarrera](
	[CodCarrera] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Perfil] [varchar](200) NULL,
	[AñosCarrera] [int] NULL,
) ON [PRIMARY]
GO

-- Tabla Codigo Postal --
CREATE TABLE [dbo].[SOLCodPostal](
	[CodPostal] [varchar](6) NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
) ON [PRIMARY]
GO

-- Tabla Cuota --
CREATE TABLE [dbo].[SOLCuota](
	[CodCuota] [int] NOT NULL,
	[Año] [int] NULL,
	[CodCarrera] [int] NULL,
	[ValorCuota] [money] NULL,
) ON [PRIMARY]
GO

-- Tabla Curso --
CREATE TABLE [dbo].[SOLCurso](
	[CodCurso] [int] NOT NULL,
	[Division] [varchar](50) NOT NULL,
	[CodTurno] [char](1) NOT NULL,
	[CupoMax] [int] NULL,
	[CantInscriptos] [int] NULL,
) ON [PRIMARY]
GO

-- Tabla Curso Materia --
CREATE TABLE [dbo].[SOLCursoMateria](
	[CodCurso] [int] NOT NULL,
	[Division] [varchar](50) NOT NULL,
	[CodTurno] [char](1) NOT NULL,
	[CodMateria] [int] NOT NULL,
) ON [PRIMARY]
GO

-- Tabla Docente --
CREATE TABLE [dbo].[SOLDocente](
	[CodDocente] [int] NOT NULL,
	[Nombre] [varchar](70) NULL,
	[Apellido] [varchar](50) NULL,
	[CodTipoDocu] [int] NULL,	
	[NumDocu] [nvarchar](20) NULL,
	[CodSexo] [int] NULL,
	[FechaNac] [datetime] NULL,
	[Calle] [varchar](50) NULL,
	[Nro] [varchar](4) NULL,
	[Piso] [varchar](4) NULL,
	[Dto] [varchar](4) NULL,
	[CodLocalidad] [int] NULL,
	[eMail] [nvarchar](70) NULL,
	[CodEstado] [char](1) NULL,
) ON [PRIMARY]
GO

/** BORRAR ESTO 

-- Tabla NOMBRE --
CREATE TABLE [dbo].[TableName](
	[Cod] [int] NOT NULL,
) ON [PRIMARY]
GO

**/
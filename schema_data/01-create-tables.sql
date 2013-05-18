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
	[CodProvincia] [int] NULL,
	[eMail] [nvarchar](70) NULL,
	[CodEstado] [char](1) NULL,
) ON [PRIMARY]
GO

-- Tabla Docente Materia --
CREATE TABLE [dbo].[SolDocenteMateria](
	[CodMateria] [int] NOT NULL,
	[CodDocente] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL,
	[Motivo] [varchar](200) NULL,
) ON [PRIMARY]
GO

-- Tabla Docente Sede --
CREATE TABLE [dbo].[SOLDocenteSede](
	[CodDocente] [int] NOT NULL,
	[CodSede] [int] NOT NULL,
) ON [PRIMARY]
GO

-- Tabla Docente Telefono --
CREATE TABLE [dbo].[SOLDocenteTelefono](
	[CodDocente] [int] NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[CodTipoTelefono] [int] NULL,
) ON [PRIMARY]
GO

-- Tabla Estado --
CREATE TABLE [dbo].[SOLEstado](
	[CodEstado] [char](1) NOT NULL,	
	[Estado] [varchar](30) NULL,
) ON [PRIMARY]
GO

-- Tabla Facultad --
CREATE TABLE [dbo].[SOLFacultad](
	[CodFacultad] [varchar](4) NOT NULL,
	[Facultad] [varchar](50) NOT NULL,
	[CodUniversidad] [int] NULL,
	[CodSede] [int] NULL,
) ON [PRIMARY]
GO

-- Tabla Facultad Carrera --
CREATE TABLE [dbo].[SOLFacultadCarrera](
	[CodFacultad] [varchar](4) NOT NULL,
	[CodCarrera] [int] NOT NULL,
) ON [PRIMARY]
GO

-- Tabla Localidad --
CREATE TABLE [dbo].[SOLLocalidad](
	[CodLocalidad] [int] NOT NULL,
	[Localidad] [varchar](100) NULL, 
) ON [PRIMARY]
GO

-- Tabla Materia --
CREATE TABLE [dbo].[SOLMateria](
	[CodMateria] [int] NOT NULL,
	[Nombre] [varchar](70) NULL,
	[Contenido] [nvarchar](200) NULL, 
) ON [PRIMARY]
GO

-- Tabla Materia Carrera --
CREATE TABLE [dbo].[SOLMateriaCarrera](
	[CodMateria] [int] NOT NULL,
	[CodCarrera] [int] NOT NULL,
) ON [PRIMARY]
GO

-- Tabla Provincia --
CREATE TABLE [dbo].[SOLProvincia](
	[CodProvincia] [int] NOT NULL,
	[Provincia] [varchar](100) NULL,
) ON [PRIMARY]
GO

-- Tabla Recargo --
CREATE TABLE [dbo].[SOLRecargo](
	[CodRecargo] [int] NOT NULL,
	[Porcentaje] [int] NULL,
	[Retraso] [varchar](10) NULL,
) ON [PRIMARY]
GO

-- Tabla Sede --
CREATE TABLE [dbo].[SOLSede](
	[CodSede] [int] NOT NULL,
	[NombreSede] [varchar](50) NULL,
	[CodLocalidad] [int] NULL,
	[CodProvincia] [int] NULL,
	[Calle] [varchar](100) NULL,
	[Nro] [varchar] (6) NULL,
) ON [PRIMARY]
GO

-- Tabla SOLSexo --
CREATE TABLE [dbo].[SOLSexo](
	[CodSexo] [int] IDENTITY(1, 1) NOT NULL,
	[Sexo] [varchar](50) NULL,
) ON [PRIMARY]
GO

-- Tabla Tipo Documento --
CREATE TABLE [dbo].[SOLTipoDocumento](
	[CodTipoDocu] [int] NOT NULL,
	[Tipo] [varchar](10) NULL,
	[Descripcion] [varchar](30) NULL,
) ON [PRIMARY]
GO

-- Tabla Tipo Examen --
CREATE TABLE [dbo].[SOLTipoExamen](
	[CodTipoExamen] [int] NOT NULL,
	[Descripcion] [nvarchar](30) NULL,
) ON [PRIMARY]
GO

-- Tabla Tipo Telefono --
CREATE TABLE [dbo].[SOLTipoTelefono](
	[CodTipoTelefono] [int] NOT NULL,
	[TipoTelefono] [varchar](60) NULL,
) ON [PRIMARY]
GO

-- Tabla SOLTurno --
CREATE TABLE [dbo].[SOLTurno](
	[CodTurno] [char](1) NOT NULL,
	[Descripcion] [nvarchar](30) NULL,
) ON [PRIMARY]
GO

-- Tabla Universidad --
CREATE TABLE [dbo].[SOLUniversidad](
	[CodUniversidad] [int] NOT NULL,
	[Universidad] [varchar](100) NULL,
	[DomLegal] [varchar](100) NULL,
) ON [PRIMARY]
GO
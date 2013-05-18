ALTER TABLE [dbo].[SOLAlumno] WITH NOCHECK ADD CONSTRAINT [PK_SOLAlumno] PRIMARY KEY CLUSTERED
( [Legajo] )
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SOLAlumnoSede] WITH NOCHECK ADD CONSTRAINT [PK_SOLAlumnoSede] PRIMARY KEY CLUSTERED
( [Legajo], [CodSede] )
ON [PRIMARY]
GO



ALTER TABLE [dbo].[SOLAlumnoCarrera] WITH NOCHECK ADD CONSTRAINT [PK_SOLAlumnoCarrera] PRIMARY KEY CLUSTERED
( [CodCarrera], [Legajo] )
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SOLAlumnoCuota] WITH NOCHECK ADD CONSTRAINT [PK_SOLAlumnoCuota] PRIMARY KEY CLUSTERED
( [Legajo], [CodCarrera], [CodCuota], [NroCuota] )
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SOLAlumnoTelefono] WITH NOCHECK ADD CONSTRAINT [PK_SOLAlumnoTelefono] PRIMARY KEY CLUSTERED
( [Legajo], [Telefono] )
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SOLCarrera] WITH NOCHECK ADD CONSTRAINT [PK_SOLCarrera] PRIMARY KEY CLUSTERED
( [CodCarrera] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLCuota] WITH NOCHECK ADD CONSTRAINT [PK_SOLCuota] PRIMARY KEY CLUSTERED
( [CodCuota] )
ON [PRIMARY] ,

CONSTRAINT [ValCuota] CHECK ([ValorCuota] > 0) 

GO


ALTER TABLE [dbo].[SOLCurso] WITH NOCHECK ADD CONSTRAINT [PK_SOLCurso] PRIMARY KEY CLUSTERED
( [CodCurso], [Division], [CodTurno] )

ON [PRIMARY] 

GO


ALTER TABLE [dbo].[SOLCursoMateria] WITH NOCHECK ADD CONSTRAINT [PK_SOLCursoMateria] PRIMARY KEY CLUSTERED
( [CodCurso], [Division], [CodTurno], [CodMateria] )

ON [PRIMARY] 

GO


ALTER TABLE [dbo].[SOLDocente] WITH NOCHECK ADD CONSTRAINT [PK_SOLDocente] PRIMARY KEY CLUSTERED
( [CodDocente] )

ON [PRIMARY] 

GO


ALTER TABLE [dbo].[SOLDocenteMateria] WITH NOCHECK ADD CONSTRAINT [PK_SOLDocenteMateria] PRIMARY KEY CLUSTERED
( [CodMateria], [CodDocente] )

ON [PRIMARY] 

GO


ALTER TABLE [dbo].[SOLDocenteSede] WITH NOCHECK ADD CONSTRAINT [PK_SOLDocenteSede] PRIMARY KEY CLUSTERED
( [CodDocente], [CodSede] )

ON [PRIMARY] 

GO


ALTER TABLE [dbo].[SOLDocenteTelefono] WITH NOCHECK ADD CONSTRAINT [PK_SOLDocenteTelefono] PRIMARY KEY CLUSTERED
( [CodDocente], [Telefono] )

ON [PRIMARY] 

GO

ALTER TABLE [dbo].[SOLEstado] WITH NOCHECK ADD CONSTRAINT [PK_SOLEstado] PRIMARY KEY CLUSTERED
( [CodEstado] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLFacultad] WITH NOCHECK ADD CONSTRAINT [PK_SOLFacultad] PRIMARY KEY CLUSTERED
( [CodFacultad] )
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SOLFacultadCarrera] WITH NOCHECK ADD CONSTRAINT [PK_SOLFacultadCarrera] PRIMARY KEY CLUSTERED
( [CodFacultad], [CodCarrera] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLLocalidad] WITH NOCHECK ADD CONSTRAINT [PK_SOLLocalidad] PRIMARY KEY CLUSTERED
( [CodLocalidad] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLMateria] WITH NOCHECK ADD CONSTRAINT [PK_SOLMateria] PRIMARY KEY CLUSTERED
( [CodMateria] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLMateriaCarrera] WITH NOCHECK ADD CONSTRAINT [PK_SOLMateriaCarrera] PRIMARY KEY CLUSTERED
( [CodCarrera], [CodMateria] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLProvincia] WITH NOCHECK ADD CONSTRAINT [PK_SOLProvincia] PRIMARY KEY CLUSTERED
( [CodProvincia] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLRecargo] WITH NOCHECK ADD CONSTRAINT [PK_SOLRecargo] PRIMARY KEY CLUSTERED
( [CodRecargo] )
ON [PRIMARY]
GO
	


ALTER TABLE [dbo].[SOLSede] WITH NOCHECK ADD CONSTRAINT [PK_SOLSede] PRIMARY KEY CLUSTERED
( [CodSede] )
ON [PRIMARY]
GO
	

ALTER TABLE [dbo].[SOLSexo] WITH NOCHECK ADD CONSTRAINT [PK_SOLSexo] PRIMARY KEY CLUSTERED
( [CodSexo] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLTipoDocumento] WITH NOCHECK ADD CONSTRAINT [PK_SOLTipoDocumento] PRIMARY KEY CLUSTERED
( [CodTipoDocu] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLTipoExamen] WITH NOCHECK ADD CONSTRAINT [PK_SOLTipoExamen] PRIMARY KEY CLUSTERED
( [CodTipoExamen] )
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SOLTipoTelefono] WITH NOCHECK ADD CONSTRAINT [PK_SOLTipoTelefono] PRIMARY KEY CLUSTERED
( [CodTipoTelefono] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLTurno] WITH NOCHECK ADD CONSTRAINT [PK_SOLTipoTurno] PRIMARY KEY CLUSTERED
( [CodTurno] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLUniversidad] WITH NOCHECK ADD CONSTRAINT [PK_SOLUniversidad] PRIMARY KEY CLUSTERED
( [CodUniversidad] )
ON [PRIMARY]
GO


ALTER TABLE [dbo].[SOLAlumno] ADD CONSTRAINT [FK_SOLAlumno_SOLEstado] FOREIGN KEY 
( [CodEstado] ) REFERENCES [dbo].[SOLEstado] ( [CodEstado] ), CONSTRAINT [FK_SOLAlumno_SOLLocalidad] FOREIGN KEY
( [CodProvincia] ) REFERENCES [dbo].[SOLProvincia] ( [CodProvincia] ), CONSTRAINT [FK_SOLAlumno_SOLSexo] FOREIGN KEY
( [CodSexo]) REFERENCES [dbo].[SOLSexo] ( [CodSexo] ), CONSTRAINT [FK_SOLAlumno_SOLTipoDocumento] FOREIGN KEY
( [CodTipoDocu] ) REFERENCES [dbo].[SOLTipoDocumento] ( [CodTipoDocu] ) 
GO


ALTER TABLE [dbo].[SOLAlumnoCarrera] ADD CONSTRAINT [FK_SOLAlumnoCarrera_SOLAlumno] FOREIGN KEY
( [Legajo] ) REFERENCES [dbo].[SOLAlumno] ( [Legajo] ), CONSTRAINT [FK_SOLAlumnoCarrera_SOLCarrera] FOREIGN KEY
( [CodCarrera] ) REFERENCES [dbo].[SOLCarrera] ( [CodCarrera] ) 
GO

ALTER TABLE [dbo].[SOLAlumnoCuota] ADD CONSTRAINT [FK_SOLAlumnoCuota_SOLCuota] FOREIGN KEY
( [CodCuota] ) REFERENCES [dbo].[SOLCuota] ( [CodCuota] )
GO


ALTER TABLE [dbo].[SOLAlumnoMateria] ADD CONSTRAINT [FK_SOLAlumnoMateria_SOLAlumno] FOREIGN KEY
( [Legajo] ) REFERENCES [dbo].[SOLAlumno] ( [Legajo] ), CONSTRAINT [FK_SOLAlumnoMateria_SOLMateria] FOREIGN KEY
( [CodMateria] ) REFERENCES [dbo].[SOLMateria] ( [CodMateria] )
GO


ALTER TABLE [dbo].[SOLAlumnoNota] ADD CONSTRAINT [FK_SOLAlumnoNota_SOLAlumno] FOREIGN KEY
( [Legajo] ) REFERENCES [dbo].[SOLAlumno] ( [Legajo] ), CONSTRAINT [FK_SOLAlumnoNota_SOLTipoExamen] FOREIGN KEY
( [CodTipoExamen] ) REFERENCES [dbo].[SOLTipoExamen] ( [CodTipoExamen] )
GO


ALTER TABLE [dbo].[SOLAlumnoSede] ADD CONSTRAINT [FK_SOLAlumnoSede_SOLAlumno] FOREIGN KEY
( [Legajo] ) REFERENCES [dbo].[SOLAlumno] ( [Legajo] ), CONSTRAINT [FK_SOLAlumnoSede_SOLSede] FOREIGN KEY
( [CodSede] ) REFERENCES [dbo].[SOLSede] ( [CodSede] )
GO

ALTER TABLE [dbo].[SOLAlumnoTelefono] ADD CONSTRAINT [FK_SOLAlumnoTelefono_SOLAlumno1] FOREIGN KEY
( [Legajo] ) REFERENCES [dbo].[SOLAlumno] ( [Legajo] ), CONSTRAINT [FK_SOLAlumnoTelefono_SOLTipoTelefono] FOREIGN KEY
( [CodTipoTelefono] ) REFERENCES [dbo].[SOLTipoTelefono] ( [CodTipoTelefono] )
GO

ALTER TABLE [dbo].[SOLCuota] ADD CONSTRAINT [FK_SOLCuota_SOLCarrera] FOREIGN KEY
( [CodCarrera] ) REFERENCES [dbo].[SOLCarrera] ( [CodCarrera] )
GO

ALTER TABLE [dbo].[SOLCurso] ADD CONSTRAINT [FK_SOLCurso_SOLTurno] FOREIGN KEY
( [CodTurno] ) REFERENCES [dbo].[SOLTurno] ( [CodTurno] )
GO


ALTER TABLE [dbo].[SOLCursoMateria] ADD CONSTRAINT [FK_SOLCursoMateria_SOLCurso] FOREIGN KEY
( [CodCurso], [Division], [CodTurno] ) REFERENCES [dbo].[SOLCurso] ( [CodCurso], [Division], [CodTurno] ),
CONSTRAINT [FK_SOLCursoMateria_SOLMateria] FOREIGN KEY ( [CodMateria] ) REFERENCES [dbo].[SOLMateria] ( [CodMateria] )
GO

ALTER TABLE [dbo].[SOLDocente] ADD CONSTRAINT [FK_SOLDocente_SOLEstado] FOREIGN KEY
( [CodEstado] ) REFERENCES [dbo].[SOLEstado] ( [CodEstado] ),
CONSTRAINT [FK_SOLDocente_SOLLocalidad] FOREIGN KEY ( [CodLocalidad] ) REFERENCES [dbo].[SOLLocalidad] ( [CodLocalidad] ), 
CONSTRAINT [FK_SOLDocente_SOLProvincia] FOREIGN KEY ( [CodProvincia] ) REFERENCES [dbo].[SOLProvincia] ( [CodProvincia] ),
CONSTRAINT [FK_SOLDocente_SOLSexo] FOREIGN KEY ( [CodSexo] ) REFERENCES [dbo].[SOLSexo] ( [CodSexo] ),
CONSTRAINT [FK_SOLDocente_SOLTipoDocumento] FOREIGN KEY ( [CodTipoDocu] ) REFERENCES [dbo].[SOLTipoDocumento] ( [CodTipoDocu] )
GO

ALTER TABLE [dbo].[SOLDocenteMateria] ADD CONSTRAINT [FK_SOLDocenteMateria_SOLDocente] FOREIGN KEY
( [CodDocente] ) REFERENCES [dbo].[SOLDocente] ( [CodDocente] ),
CONSTRAINT [FK_SOLDocenteMateria_SOLMateria] FOREIGN KEY ( [CodMateria] ) REFERENCES [dbo].[SOLMateria] ( [CodMateria] )
GO

ALTER TABLE [dbo].[SOLDocenteSede] ADD CONSTRAINT [FK_SOLDocenteSede_SOLDocente] FOREIGN KEY 
( [CodDocente] ) REFERENCES [dbo].[SOLDocente] ( [CodDocente] ), CONSTRAINT [FK_SOLDocenteSede_SOLSede] FOREIGN KEY
( [CodSede] ) REFERENCES [dbo].[SOLSede] ( [CodSede])
GO

ALTER TABLE [dbo].[SOLDocenteTelefono] ADD CONSTRAINT [FK_SOLDocenteTelefono_SOLDocente] FOREIGN KEY 
( [CodDocente] ) REFERENCES [dbo].[SOLDocente] ( [CodDocente] ), CONSTRAINT [FK_SOLDocenteTelefono_SOLTipoTelefono] FOREIGN KEY
( [CodTipoTelefono] ) REFERENCES [dbo].[SOLTipoTelefono] ( [CodTipoTelefono])
GO

ALTER TABLE [dbo].[SOLFacultad] ADD CONSTRAINT [FK_SOLFacultad_SOLSede] FOREIGN KEY 
( [CodSede] ) REFERENCES [dbo].[SOLSede] ( [CodSede] ), CONSTRAINT [FK_SOLFacultad_SOLUniversidad] FOREIGN KEY
( [CodUniversidad] ) REFERENCES [dbo].[SOLUniversidad] ( [CodUniversidad])
GO

ALTER TABLE [dbo].[SOLFacultadCarrera] ADD CONSTRAINT [FK_SOLFacultadCarrera_SOLCarrera] FOREIGN KEY 
( [CodCarrera] ) REFERENCES [dbo].[SOLCarrera] ( [CodCarrera] ), CONSTRAINT [FK_SOLFacultadCarrera_SOLFacultad] FOREIGN KEY
( [CodFacultad] ) REFERENCES [dbo].[SOLFacultad] ( [CodFacultad])
GO

ALTER TABLE [dbo].[SOLMateriaCarrera] ADD CONSTRAINT [FK_SOLMateriaCarrera_SOLCarrera] FOREIGN KEY 
( [CodCarrera] ) REFERENCES [dbo].[SOLCarrera] ( [CodCarrera] ), CONSTRAINT [FK_SOLMateriaCarrera_SOLMateria] FOREIGN KEY
( [CodMateria] ) REFERENCES [dbo].[SOLMateria] ( [CodMateria])
GO

ALTER TABLE [dbo].[SOLSede] ADD CONSTRAINT [FK_SOLSede_SOLLocalidad] FOREIGN KEY 
( [CodLocalidad] ) REFERENCES [dbo].[SOLLocalidad] ( [CodLocalidad] ), CONSTRAINT [FK_SOLSede_SOLProvincia] FOREIGN KEY
( [CodProvincia] ) REFERENCES [dbo].[SOLProvincia] ( [CodProvincia])
GO



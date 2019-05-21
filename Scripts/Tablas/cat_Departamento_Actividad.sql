USE [STickets]
GO

IF OBJECT_ID('cat_Departamento_Actividad') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Departamento_Actividad](
			[c_codigo_dep] [char](4) NULL,
			[c_codigo_act] [char](10) NULL
		) ON [PRIMARY]

	end
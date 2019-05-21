USE [STickets]
GO

IF OBJECT_ID('cat_Usuario_Departamento') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Usuario_Departamento](
			[c_codigo_usu] [char](7) NULL,
			[c_codigo_dep] [char](4) NULL
		) ON [PRIMARY]

	end

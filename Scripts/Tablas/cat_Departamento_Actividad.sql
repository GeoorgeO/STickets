USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Departamento_Actividad')
begin
   drop table cat_Departamento_Actividad
end
	
go

CREATE TABLE [dbo].[cat_Departamento_Actividad](
	[c_codigo_dep] [char](4) NULL,
	[c_codigo_act] [char](10) NULL
) ON [PRIMARY]
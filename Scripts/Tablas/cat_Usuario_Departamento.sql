USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Usuario_Departamento')
begin
   drop table cat_Usuario_Departamento
end
	
go

CREATE TABLE [dbo].[cat_Usuario_Departamento](
	[c_codigo_usu] [char](7) NULL,
	[c_codigo_dep] [char](4) NULL
) ON [PRIMARY]
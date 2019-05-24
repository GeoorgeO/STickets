USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Usuario_Perfil')
begin
   drop table cat_Usuario_Perfil
end
	
go

CREATE TABLE [dbo].[cat_Usuario_Perfil](
	[c_codigo_usu] [char](7) NULL,
	[c_codigo_per] [char](4) NULL
) ON [PRIMARY]
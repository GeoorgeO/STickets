USE [STickets]
GO

IF OBJECT_ID('cat_Usuario_Perfil') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Usuario_Perfil](
			[c_codigo_usu] [char](7) NULL,
			[c_codigo_per] [char](4) NULL
		) ON [PRIMARY]


	end
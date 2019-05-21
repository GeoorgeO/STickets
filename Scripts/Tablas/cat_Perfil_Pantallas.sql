USE [STickets]
GO

IF OBJECT_ID('cat_Perfil_Pantallas') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Perfil_Pantallas](
			[c_codigo_per] [char](4) NULL,
			[c_codigo_pan] [char](4) NULL
		) ON [PRIMARY]

	end
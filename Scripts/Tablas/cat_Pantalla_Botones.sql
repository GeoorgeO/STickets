USE [STickets]
GO

IF OBJECT_ID('cat_Pantalla_Botones') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Pantalla_Botones](
			[c_codigo_pan] [char](4) NULL,
			[c_codigo_bot] [char](4) NULL
		) ON [PRIMARY]

	end
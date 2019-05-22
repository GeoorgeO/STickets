USE [STickets]
GO

IF OBJECT_ID('cat_Perfil_PantallaBotones') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Perfil_PantallaBotones](
			[c_codigo_per] [char](4) NULL,
			[id_pantalla_boton] int NULL
		) ON [PRIMARY]

	end
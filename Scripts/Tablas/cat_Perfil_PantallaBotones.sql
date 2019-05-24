USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Perfil_PantallaBotones')
begin
   drop table cat_Perfil_PantallaBotones
end
	
go

CREATE TABLE [dbo].[cat_Perfil_PantallaBotones](
	[c_codigo_per] [char](4) NULL,
	[id_pantalla_boton] int NULL
) ON [PRIMARY]
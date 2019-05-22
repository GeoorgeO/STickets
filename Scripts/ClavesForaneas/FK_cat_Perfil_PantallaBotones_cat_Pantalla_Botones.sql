USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Perfil_PantallaBotones_cat_Pantalla_Botones'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Perfil_PantallaBotones]  WITH CHECK ADD  CONSTRAINT [FK_cat_Perfil_PantallaBotones_cat_Pantalla_Botones] FOREIGN KEY([id_pantalla_boton])
		REFERENCES [dbo].[cat_Pantalla_Botones] ([id_pantalla_boton])


		ALTER TABLE [dbo].[cat_Perfil_PantallaBotones] CHECK CONSTRAINT [FK_cat_Perfil_PantallaBotones_cat_Pantalla_Botones]
	end

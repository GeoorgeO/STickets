USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Perfil_PantallaBotones_cat_Perfiles'
)begin
	select 0
end
else
	begin


		ALTER TABLE [dbo].[cat_Perfil_PantallaBotones]  WITH CHECK ADD  CONSTRAINT [FK_cat_Perfil_PantallaBotones_cat_Perfiles] FOREIGN KEY([c_codigo_per])
		REFERENCES [dbo].[cat_Perfiles] ([c_codigo_per])
		

		ALTER TABLE [dbo].[cat_Perfil_PantallaBotones] CHECK CONSTRAINT [FK_cat_Perfil_PantallaBotones_cat_Perfiles]
	end



USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Perfil_Pantallas_cat_Pantallas'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Perfil_Pantallas]  WITH CHECK ADD  CONSTRAINT [FK_cat_Perfil_Pantallas_cat_Pantallas] FOREIGN KEY([c_codigo_pan])
		REFERENCES [dbo].[cat_Pantallas] ([c_codigo_pan])


		ALTER TABLE [dbo].[cat_Perfil_Pantallas] CHECK CONSTRAINT [FK_cat_Perfil_Pantallas_cat_Pantallas]
	end



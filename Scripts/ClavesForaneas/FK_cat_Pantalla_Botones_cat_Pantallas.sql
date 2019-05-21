USE [STickets]
GO


IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Pantalla_Botones_cat_Pantallas'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Pantalla_Botones]  WITH CHECK ADD  CONSTRAINT [FK_cat_Pantalla_Botones_cat_Pantallas] FOREIGN KEY([c_codigo_pan])
		REFERENCES [dbo].[cat_Pantallas] ([c_codigo_pan])


		ALTER TABLE [dbo].[cat_Pantalla_Botones] CHECK CONSTRAINT [FK_cat_Pantalla_Botones_cat_Pantallas]
	end
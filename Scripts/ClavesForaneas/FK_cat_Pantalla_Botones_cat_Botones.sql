USE [STickets]
GO


IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Pantalla_Botones_cat_Botones'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Pantalla_Botones]  WITH CHECK ADD  CONSTRAINT [FK_cat_Pantalla_Botones_cat_Botones] FOREIGN KEY([c_codigo_bot])
		REFERENCES [dbo].[cat_Botones] ([c_codigo_bot])


		ALTER TABLE [dbo].[cat_Pantalla_Botones] CHECK CONSTRAINT [FK_cat_Pantalla_Botones_cat_Botones]
	end
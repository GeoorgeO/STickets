USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Usuario_Perfil_cat_Usuarios'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Usuario_Perfil]  WITH CHECK ADD  CONSTRAINT [FK_cat_Usuario_Perfil_cat_Usuarios] FOREIGN KEY([c_codigo_usu])
		REFERENCES [dbo].[cat_Usuarios] ([c_codigo_usu])
		
		ALTER TABLE [dbo].[cat_Usuario_Perfil] CHECK CONSTRAINT [FK_cat_Usuario_Perfil_cat_Usuarios]
	end
USE [STickets]


GO
IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Usuario_Departamento_cat_Usuarios'
)begin
	select 0
end
else
	begin
		ALTER TABLE [dbo].[cat_Usuario_Departamento]  WITH CHECK ADD  CONSTRAINT [FK_cat_Usuario_Departamento_cat_Usuarios] FOREIGN KEY([c_codigo_usu])
		REFERENCES [dbo].[cat_Usuarios] ([c_codigo_usu])
		
		ALTER TABLE [dbo].[cat_Usuario_Departamento] CHECK CONSTRAINT [FK_cat_Usuario_Departamento_cat_Usuarios]
	end
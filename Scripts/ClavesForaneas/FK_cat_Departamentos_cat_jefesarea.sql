USE [STickets]
GO


IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Departamentos_cat_jefesarea'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Departamentos]  WITH CHECK ADD  CONSTRAINT [FK_cat_Departamentos_cat_jefesarea] FOREIGN KEY([c_codigo_jef])
		REFERENCES [dbo].[cat_jefesarea] ([c_codigo_jef])

		ALTER TABLE [dbo].[cat_Departamentos] CHECK CONSTRAINT [FK_cat_Departamentos_cat_jefesarea]
	end
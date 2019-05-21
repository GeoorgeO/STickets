USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Departamento_Actividad_cat_Departamentos'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Departamento_Actividad]  WITH CHECK ADD  CONSTRAINT [FK_cat_Departamento_Actividad_cat_Departamentos] FOREIGN KEY([c_codigo_dep])
		REFERENCES [dbo].[cat_Departamentos] ([c_codigo_dep])


		ALTER TABLE [dbo].[cat_Departamento_Actividad] CHECK CONSTRAINT [FK_cat_Departamento_Actividad_cat_Departamentos]
	end
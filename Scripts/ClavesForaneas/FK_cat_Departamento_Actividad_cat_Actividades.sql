USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Departamento_Actividad_cat_Actividades'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Departamento_Actividad]  WITH CHECK ADD  CONSTRAINT [FK_cat_Departamento_Actividad_cat_Actividades] FOREIGN KEY([c_codigo_act])
		REFERENCES [dbo].[cat_Actividades] ([c_codigo_act])


		ALTER TABLE [dbo].[cat_Departamento_Actividad] CHECK CONSTRAINT [FK_cat_Departamento_Actividad_cat_Actividades]
	end




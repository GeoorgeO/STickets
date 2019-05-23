USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividad_Asignacion_cat_Usuarios'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividad_Asignacion]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividad_Asignacion_cat_Usuarios] FOREIGN KEY([c_codigo_usu_asignado])
		REFERENCES [dbo].[cat_Usuarios] ([c_codigo_usu])


		ALTER TABLE [dbo].[ctrl_Actividad_Asignacion] CHECK CONSTRAINT [FK_ctrl_Actividad_Asignacion_cat_Usuarios]

end





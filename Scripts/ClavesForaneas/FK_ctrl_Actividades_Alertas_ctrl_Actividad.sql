USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividades_Alertas_ctrl_Actividad'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividades_Alertas]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividades_Alertas_ctrl_Actividad] FOREIGN KEY([c_codigo_folact])
		REFERENCES [dbo].[ctrl_Actividad] ([c_codigo_folact])


		ALTER TABLE [dbo].[ctrl_Actividades_Alertas] CHECK CONSTRAINT [FK_ctrl_Actividades_Alertas_ctrl_Actividad]

	end

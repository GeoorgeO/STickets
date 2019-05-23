USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividad_imagenes_ctrl_Actividad_Detalle'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividad_imagenes]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividad_imagenes_ctrl_Actividad_Detalle] FOREIGN KEY([c_codigo_folact], [c_codigo_detact])
		REFERENCES [dbo].[ctrl_Actividad_Detalle] ([c_codigo_folact], [c_codigo_detact])


		ALTER TABLE [dbo].[ctrl_Actividad_imagenes] CHECK CONSTRAINT [FK_ctrl_Actividad_imagenes_ctrl_Actividad_Detalle]

	end
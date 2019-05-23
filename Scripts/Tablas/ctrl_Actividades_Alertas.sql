USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividades_Alertas') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividades_Alertas](
			[c_codigo_folact] [char](10) NULL,
			[c_codigo_usu_solicito] [char](7) NULL,
			[c_codigo_usu_asignado] [char](7) NULL,
			[c_estatus_alerta] [char](2) NULL
		) ON [PRIMARY]

	end



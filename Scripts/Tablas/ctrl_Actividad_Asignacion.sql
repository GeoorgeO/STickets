USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividad_Asignacion') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividad_Asignacion](
			[c_codigo_folact] [char](10) NULL,
			[c_codigo_usu_asignado] [char](7) NULL
		) ON [PRIMARY]

	end
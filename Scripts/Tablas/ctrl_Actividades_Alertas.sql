USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'ctrl_Actividades_Alertas')
begin
   drop table ctrl_Actividades_Alertas
end
	
go

CREATE TABLE [dbo].[ctrl_Actividades_Alertas](
	[c_codigo_folact] [char](10) NULL,
	[c_codigo_usu_solicito] [char](7) NULL,
	[c_codigo_usu_asignado] [char](7) NULL,
	[c_estatus_alerta] [char](2) NULL
) ON [PRIMARY]
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'ctrl_Actividad_Asignacion')
begin
   drop table ctrl_Actividad_Asignacion
end
	
go

CREATE TABLE [dbo].[ctrl_Actividad_Asignacion](
	[c_codigo_folact] [char](10) NULL,
	[c_codigo_usu_asignado] [char](7) NULL
) ON [PRIMARY]
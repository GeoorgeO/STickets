USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'ctrl_Actividad_imagenes')
begin
   drop table ctrl_Actividad_imagenes
end
	
go

CREATE TABLE [dbo].[ctrl_Actividad_imagenes](
	[id_Actividad_imagen][uniqueidentifier] ROWGUIDCOL NOT NULL UNIQUE,
	[c_codigo_folact] [char](10) NULL,
	[c_codigo_detact] [char](5) NULL,
	[b_imagen] [varbinary](max) FILESTREAM NULL
)
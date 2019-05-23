USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividad_imagenes') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividad_imagenes](
			[id_Actividad_imagen][uniqueidentifier] ROWGUIDCOL NOT NULL UNIQUE,
			[c_codigo_folact] [char](10) NULL,
			[c_codigo_detact] [char](5) NULL,
			[b_imagen] [varbinary](max) FILESTREAM NULL
	)
end



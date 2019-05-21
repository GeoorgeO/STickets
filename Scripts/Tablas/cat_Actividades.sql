USE [STickets]
GO

IF OBJECT_ID('cat_Actividades') IS NOT NULL
	begin
		select 0
	end
ELSE
	BEGIN
		CREATE TABLE [dbo].[cat_Actividades](
			[c_codigo_act] [char](10) NOT NULL,
			[v_nombre_act] [varchar](200) NULL,
			[c_actividad_padre] [char](10) NULL,
			[v_descripcion_act] [varchar](max) NULL,
		 CONSTRAINT [PK_cat_Actividades] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_act] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	END
USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividad_Detalle') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividad_Detalle](
			[c_codigo_folact] [char](10) NOT NULL,
			[c_codigo_detact] [char](5) NOT NULL,
			[d_fecha_detact] [datetime] NULL,
			[v_descripcion_detact] [varchar](max) NULL,
			[b_estatus_detact] [bit] NULL,
		 CONSTRAINT [PK_ctrl_Actividad_Detalle] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_folact] ASC,
			[c_codigo_detact] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	end 

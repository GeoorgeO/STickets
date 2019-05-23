USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividad') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividad](
			[c_codigo_folact] [char](10) NULL,
			[d_fecha_folact] [datetime] NULL,
			[c_codigo_usu_solicito] [char](7) NULL,
			[c_estatus_folact] [char](1) NULL,
		CONSTRAINT [PK_ctrl_Actividad] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_folact] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]

	end



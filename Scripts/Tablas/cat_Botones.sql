USE [STickets]

IF OBJECT_ID('cat_Botones') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Botones](
			[c_codigo_bot] [char](4) NOT NULL,
			[v_nombre_bot] [varchar](100) NULL,
		 CONSTRAINT [PK_cat_Botones] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_bot] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]
	end
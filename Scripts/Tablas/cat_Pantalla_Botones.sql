USE [STickets]
GO

IF OBJECT_ID('cat_Pantalla_Botones') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Pantalla_Botones](
			[c_codigo_pan] [char](4) NULL,
			[c_codigo_bot] [char](4) NULL,
			[id_pantalla_boton] int NULL
		CONSTRAINT [PK_cat_Pantalla_Botones] PRIMARY KEY CLUSTERED 
(
	[id_pantalla_boton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

	end
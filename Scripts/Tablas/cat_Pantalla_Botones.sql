USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Pantalla_Botones')
begin
   drop table cat_Pantalla_Botones
end
	
go

CREATE TABLE [dbo].[cat_Pantalla_Botones](
	[id_pantalla_boton] int not NULL,
	[c_codigo_pan] [char](4) NULL,
	[c_codigo_bot] [char](4) NULL
CONSTRAINT [PK_cat_Pantalla_Botones] PRIMARY KEY CLUSTERED 
(
	[id_pantalla_boton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
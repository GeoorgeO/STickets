USE [STickets]

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Botones')
begin
   drop table cat_Botones
end
	
go

CREATE TABLE [dbo].[cat_Botones](
	[c_codigo_bot] [char](4) NOT NULL,
	[v_nombre_bot] [varchar](100) NULL,
 CONSTRAINT [PK_cat_Botones] PRIMARY KEY CLUSTERED 
(
	[c_codigo_bot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Pantallas')
begin
   drop table cat_Pantallas
end
	
go
CREATE TABLE [dbo].[cat_Pantallas](
	[c_codigo_pan] [char](4) NOT NULL,
	[v_nombre_pan] [varchar](100) NULL,
 CONSTRAINT [PK_cat_Pantallas] PRIMARY KEY CLUSTERED 
(
	[c_codigo_pan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
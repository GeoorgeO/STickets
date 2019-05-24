USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Perfiles')
begin
   drop table cat_Perfiles
end
	
go

CREATE TABLE [dbo].[cat_Perfiles](
	[c_codigo_per] [char](4) NOT NULL,
	[v_nombre_per] [varchar](100) NULL,
 CONSTRAINT [PK_cat_Perfiles] PRIMARY KEY CLUSTERED 
(
	[c_codigo_per] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_jefesarea')
begin
   drop table cat_jefesarea
end
	
go

CREATE TABLE [dbo].[cat_jefesarea](
	[c_codigo_jef] [char](5) NOT NULL,
	[v_nombre_jef] [varchar](100) NULL,
	[v_correoelectronico] [varchar](100) NULL,
 CONSTRAINT [PK_cat_jefesarea] PRIMARY KEY CLUSTERED 
(
	[c_codigo_jef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
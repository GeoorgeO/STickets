USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Usuarios')
begin
   drop table cat_Usuarios
end
	
go

CREATE TABLE [dbo].[cat_Usuarios](
	[c_codigo_usu] [char](7) NOT NULL,
	[v_login] [varchar](50) NULL,
	[v_nombres] [varchar](100) NULL,
	[v_apaterno] [varchar](50) NULL,
	[v_amaterno] [varchar](50) NULL,
	[v_password] [varchar](50) NULL,
	[d_fecha_alta] [datetime] NULL,
	[d_fecha_udp] [datetime] NULL,
	[v_correoelectronico] [varchar](100) NULL,
	[c_codigo_act] [bit] NULL,
 CONSTRAINT [PK_cat_Usuarios] PRIMARY KEY CLUSTERED 
(
	[c_codigo_usu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'conf_Correos')
begin
   drop table conf_Correos
end
	
go

CREATE TABLE [dbo].[conf_Correos](
	[v_correoremitente] [varchar](100) NULL,
	[v_correousuario] [varchar](100) NULL,
	[v_correocontrasenia] [varchar](50) NULL,
	[v_correoservidorsalida] [varchar](100) NULL,
	[v_correoservidorentrada] [varchar](100) NULL,
	[b_correocifradoSSL] [bit] NULL,
	[n_correopuertosalida] [numeric](10, 0) NULL
) ON [PRIMARY]
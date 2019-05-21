USE [STickets]
GO

IF OBJECT_ID('conf_Correos') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[conf_Correos](
			[v_correoremitente] [varchar](100) NULL,
			[v_correousuario] [varchar](100) NULL,
			[v_correocontraseña] [varchar](50) NULL,
			[v_correoservidorsalida] [varchar](100) NULL,
			[v_correoservidorentrada] [varchar](100) NULL,
			[b_correocifradoSSL] [bit] NULL,
			[n_correopuertosalida] [numeric](10, 0) NULL
		) ON [PRIMARY]

	end
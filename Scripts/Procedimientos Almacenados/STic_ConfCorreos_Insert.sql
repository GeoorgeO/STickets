USE [STickets]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_ConfCorreos_Insert')
DROP PROCEDURE STic_ConfCorreos_Insert 
go
CREATE PROCEDURE STic_ConfCorreos_Insert
	@v_correoremitente varchar(100), 
	@v_correousuario varchar(100),
	@v_correocontrasenia varchar(50),
	@v_correoservidorsalida varchar(100),
	@v_correoservidorentrada varchar(100),
	@b_correocifradoSSL bit,
	@n_correopuertosalida numeric(10, 0)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	delete from conf_Correos

	INSERT INTO conf_Correos
                         (v_correoremitente, v_correousuario,v_correocontrasenia,v_correoservidorsalida,v_correoservidorentrada,b_correocifradoSSL,n_correopuertosalida)
	VALUES        (@v_correoremitente,@v_correousuario,@v_correocontrasenia,@v_correoservidorsalida,@v_correoservidorentrada,@b_correocifradoSSL,@n_correopuertosalida)
	
	SELECT        v_correoremitente, v_correousuario,v_correocontrasenia,v_correoservidorsalida,v_correoservidorentrada,b_correocifradoSSL,n_correopuertosalida
	FROM            conf_Correos
END
GO

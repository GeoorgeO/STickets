USE [STickets]
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuarios_Select')
DROP PROCEDURE STic_CatUsuarios_Select 
go
CREATE PROCEDURE STic_CatUsuarios_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        c_codigo_usu, 
		v_login, 
		v_nombres, 
		v_apaterno, 
		v_amaterno, 
		v_password, 
		d_fecha_alta, 
		d_fecha_udp, 
		v_correoelectronico, 
		c_codigo_act
	FROM            cat_Usuarios
END
GO

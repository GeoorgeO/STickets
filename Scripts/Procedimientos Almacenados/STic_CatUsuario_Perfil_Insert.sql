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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_Perfil_Insert')
DROP PROCEDURE STic_CatUsuario_Perfil_Insert 
go
CREATE PROCEDURE STic_CatUsuario_Perfil_Insert
	@c_codigo_usu char(7),
	@c_codigo_per	char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	

	INSERT INTO cat_Usuario_Perfil
                         (c_codigo_usu, c_codigo_per)
	VALUES        (@c_codigo_usu,@c_codigo_per)
	
	select 1
END
GO

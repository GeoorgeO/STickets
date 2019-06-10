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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPerfiles_Update')
DROP PROCEDURE STic_CatPerfiles_Update 
go
CREATE PROCEDURE STic_CatPerfiles_Update
	@c_codigo_per	char(4),
	@v_nombre_per	varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Perfiles
	SET               v_nombre_per = @v_nombre_per
		
	WHERE        (c_codigo_per = @c_codigo_per)

	SELECT        c_codigo_per, v_nombre_per
	FROM            cat_Perfiles
	WHERE        (c_codigo_per = @c_codigo_per)
END
GO
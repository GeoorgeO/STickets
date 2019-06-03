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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatBotones_Update')
DROP PROCEDURE STic_CatBotones_Update 
go
CREATE PROCEDURE STic_CatBotones_Update
	@c_codigo_bot	char(4),
	@v_nombre_bot	varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Botones
	SET               v_nombre_bot = @v_nombre_bot
	WHERE        (c_codigo_bot = @c_codigo_bot)

	SELECT        c_codigo_bot, v_nombre_bot
	FROM            cat_Botones
	WHERE        (c_codigo_bot = @c_codigo_bot)
END
GO

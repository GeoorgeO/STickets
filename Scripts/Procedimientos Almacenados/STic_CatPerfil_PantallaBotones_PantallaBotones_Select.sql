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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPerfil_PantallaBotones_PantallaBotones_Select')
DROP PROCEDURE STic_CatPerfil_PantallaBotones_PantallaBotones_Select 
go
CREATE PROCEDURE STic_CatPerfil_PantallaBotones_PantallaBotones_Select
	@c_codigo_pan char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	SELECT        pb.id_pantalla_boton, pan.v_nombre_pan+' -| '+bot.v_nombre_bot as v_pantalla_boton
	FROM            cat_Pantalla_Botones as pb
	inner join cat_Pantallas as pan on pan.c_codigo_pan=pb.c_codigo_pan
	inner join cat_Botones as bot on bot.c_codigo_bot=pb.c_codigo_bot
	where pb.c_codigo_pan=@c_codigo_pan

END
GO

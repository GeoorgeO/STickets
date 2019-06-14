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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPerfil_PantallaBotones_Select')
DROP PROCEDURE STic_CatPerfil_PantallaBotones_Select 
go
CREATE PROCEDURE STic_CatPerfil_PantallaBotones_Select
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select ppb.c_codigo_per,per.v_nombre_per,ppb.id_pantalla_boton,pan.v_nombre_pan+' -| '+bot.v_nombre_bot as v_pantalla_boton
	from cat_Perfil_PantallaBotones as ppb 
		inner join cat_Perfiles as per on per.c_codigo_per=ppb.c_codigo_per
		inner join cat_Pantalla_Botones as pb on pb.id_pantalla_boton=ppb.id_pantalla_boton
		inner join cat_Pantallas as pan on pan.c_codigo_pan=pb.c_codigo_pan
		inner join cat_Botones as bot on bot.c_codigo_bot=pb.c_codigo_bot
END
GO
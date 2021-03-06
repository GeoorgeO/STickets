USE [STickets]
GO
/****** Object:  StoredProcedure [dbo].[STic_CatPantallasBotones_Buscar_Select]    Script Date: 11/06/2019 12:27:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPantallasBotones_Select')
DROP PROCEDURE STic_CatPantallasBotones_Select 
go
Create PROCEDURE [dbo].[STic_CatPantallasBotones_Select]
	@c_codigo_pan varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        cat_Pantalla_Botones.id_pantalla_boton, cat_Pantalla_Botones.c_codigo_pan, cat_Pantalla_Botones.c_codigo_bot, cat_Botones.v_nombre_bot
FROM            cat_Pantalla_Botones INNER JOIN
                         cat_Botones ON cat_Pantalla_Botones.c_codigo_bot = cat_Botones.c_codigo_bot
WHERE        (cat_Pantalla_Botones.c_codigo_pan = @c_codigo_pan)
END

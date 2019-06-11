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
CREATE PROCEDURE STic_CatPantallasBotones_Update
	@id_pantalla_boton int,
	@c_codigo_pan varchar(4),
	@c_codigo_bot varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Pantalla_Botones
SET                c_codigo_pan = @c_codigo_pan, c_codigo_bot = @c_codigo_bot
WHERE        (id_pantalla_boton = @id_pantalla_boton)
END
GO

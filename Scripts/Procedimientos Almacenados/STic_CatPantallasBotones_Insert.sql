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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPantallasBotones_Insert')
DROP PROCEDURE STic_CatPantallasBotones_Insert 
go
create PROCEDURE STic_CatPantallasBotones_Insert
	@c_codigo_pan varchar(4),
	@c_codigo_bot varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @id_pantalla_boton int
	select @id_pantalla_boton=isnull(count(id_pantalla_boton),0)+1 from cat_Pantalla_Botones
    -- Insert statements for procedure here
	INSERT INTO cat_Pantalla_Botones
                         (id_pantalla_boton, c_codigo_pan, c_codigo_bot)
	VALUES        (@id_pantalla_boton,@c_codigo_pan,@c_codigo_bot)
END
GO

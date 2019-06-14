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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPerfil_PantallaBotones_Insert')
DROP PROCEDURE STic_CatPerfil_PantallaBotones_Insert 
go
CREATE PROCEDURE STic_CatPerfil_PantallaBotones_Insert
	@c_codigo_per char(4),
	@id_pantalla_boton	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	

	INSERT INTO cat_Perfil_PantallaBotones
                         (c_codigo_per, id_pantalla_boton)
	VALUES        (@c_codigo_per,@id_pantalla_boton)
	
	select 1
END
GO

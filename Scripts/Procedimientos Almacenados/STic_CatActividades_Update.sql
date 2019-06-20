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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatActividades_Update')
DROP PROCEDURE STic_CatActividades_Update 
go
CREATE PROCEDURE STic_CatActividades_Update
	@c_codigo_act	char(10),
	@v_nombre_act varchar(200),
	@v_descripcion_act	varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Actividades
	SET               v_descripcion_act = @v_descripcion_act, v_nombre_act=@v_nombre_act
	WHERE        (c_codigo_act = @c_codigo_act)

	SELECT        c_codigo_act, v_nombre_act,c_actividad_padre, v_descripcion_act
	FROM            cat_Actividades
	WHERE        (c_codigo_act = @c_codigo_act)
END
GO

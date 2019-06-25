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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatDepartamento_Actividad_Select')
DROP PROCEDURE STic_CatDepartamento_Actividad_Select 
go
CREATE PROCEDURE STic_CatDepartamento_Actividad_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    select da.c_codigo_dep,
        dep.v_nombre_dep,
        da.c_codigo_act,
        act.v_nombre_act,
        act.c_actividad_padre
    from cat_departamento_actividad as da
    inner join cat_departamentos as dep on dep.c_codigo_dep=da.c_codigo_dep
    inner join cat_actividades as act on act.c_codigo_act=da.c_codigo_act
    union
    select '','', c_codigo_act,v_nombre_act,c_actividad_padre
    from cat_actividades
    order by 3

END
GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatActividades_Select')
DROP PROCEDURE STic_CatActividades_Select 
go
CREATE PROCEDURE STic_CatActividades_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



select c_codigo_act,v_nombre_act,c_actividad_padre,(select temp.v_nombre_act from cat_Actividades as temp where temp.c_codigo_act=act.c_actividad_padre) as v_nombre_act_padre,v_descripcion_act from cat_Actividades as act order by c_codigo_act
END
GO
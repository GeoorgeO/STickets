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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatActividades_Actividad_Select')
DROP PROCEDURE STic_CatActividades_Actividad_Select 
go
CREATE PROCEDURE STic_CatActividades_Actividad_Select
	@c_codigo_act char(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

select c_actividad_padre,
	(select t.v_nombre_act from cat_Actividades as t where t.c_codigo_act=act.c_actividad_padre) as v_nombre_act_padre,
	v_descripcion_act 
from cat_Actividades as act 
where c_codigo_act=@c_codigo_act

END
GO
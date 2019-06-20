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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatActividades_Insert')
DROP PROCEDURE STic_CatActividades_Insert 
go
CREATE PROCEDURE STic_CatActividades_Insert
	@v_nombre_act	varchar(200),
	@c_actividad_padre char(10),
	@v_descripcion_act varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @c_codigo_act char(10)
	declare @Numero int
	select @Numero=isnull(Max(c_codigo_act),0)+1 from cat_Actividades

	Set @c_codigo_act=RIGHT('0000000000' + Ltrim(Rtrim(@Numero)),10)
    -- Insert statements for procedure here
	INSERT INTO cat_Actividades
                         (c_codigo_act, v_nombre_act,c_actividad_padre,v_descripcion_act)
	VALUES        (@c_codigo_act,@v_nombre_act,@c_actividad_padre,@v_descripcion_act)
	
	SELECT        c_codigo_act, v_nombre_act, c_actividad_padre, v_descripcion_act
	FROM            cat_Actividades
	WHERE        (c_codigo_act = @c_codigo_act) 
END
GO

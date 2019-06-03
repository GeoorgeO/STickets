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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatJefesarea_Update')
DROP PROCEDURE STic_CatJefesarea_Update 
go
CREATE PROCEDURE STic_CatJefesarea_Update
	@c_codigo_jef	char(5),
	@v_nombre_jef	varchar(100),
	@v_correoelectronico varchar (100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_jefesarea
	SET               v_nombre_jef = @v_nombre_jef,v_correoelectronico = @v_correoelectronico
	WHERE        (c_codigo_jef = @c_codigo_jef)

	SELECT        c_codigo_jef, v_nombre_jef, v_correoelectronico
	FROM            cat_jefesarea
	WHERE        (c_codigo_jef = @c_codigo_jef)
END
GO

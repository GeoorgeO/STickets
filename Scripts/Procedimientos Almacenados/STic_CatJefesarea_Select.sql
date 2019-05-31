SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatJefesarea_Select')
DROP PROCEDURE STic_CatJefesarea_Select 
go
CREATE PROCEDURE STic_CatJefesarea_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



select c_codigo_jef,v_nombre_jef,v_correoelectronico from cat_jefesarea
END
GO
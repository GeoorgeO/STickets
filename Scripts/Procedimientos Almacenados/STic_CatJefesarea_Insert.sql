SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatJefesarea_Insert')
DROP PROCEDURE STic_CatJefesarea_Insert 
go
CREATE PROCEDURE STic_CatJefesarea_Insert
	@v_nombre_jef	varchar(100), @v_correoelectronico varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @c_codigo_jef char(5)
	declare @Numero int
	select @Numero=isnull(count(c_codigo_jef),0)+1 from cat_jefesarea

	Set @c_codigo_jef=RIGHT('00000' + Ltrim(Rtrim(@Numero)),5)
    -- Insert statements for procedure here
	INSERT INTO cat_jefesarea
                         (c_codigo_jef, v_nombre_jef,v_correoelectronico)
	VALUES        (@c_codigo_jef,@v_nombre_jef,@v_correoelectronico)
	
	SELECT        c_codigo_jef, v_nombre_jef, v_correoelectronico
	FROM            cat_jefesarea
	WHERE        (@c_codigo_jef = @c_codigo_jef) 
END
GO

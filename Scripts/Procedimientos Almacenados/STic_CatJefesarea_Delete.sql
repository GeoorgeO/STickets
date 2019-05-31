SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatJefesarea_Delete')
DROP PROCEDURE STic_CatJefesarea_Delete 
go
CREATE PROCEDURE STic_CatJefesarea_Delete 
	@c_codigo_jef	char(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_jefesarea
	WHERE  (c_codigo_jef = @c_codigo_jef)

	COMMIT ; 
    set @Ejecutado=1
END TRY  
BEGIN CATCH  
	rollback ;  
	set @Ejecutado=0
END CATCH  

select @Ejecutado Exito

END
GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatDepartamento_Actividad_Delete')
DROP PROCEDURE STic_CatDepartamento_Actividad_Delete 
go
CREATE PROCEDURE STic_CatDepartamento_Actividad_Delete 
	@c_codigo_dep	char(4),
	@c_codigo_act char(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_Departamento_Actividad
	WHERE  (c_codigo_dep = @c_codigo_dep and c_codigo_act=@c_codigo_act)

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
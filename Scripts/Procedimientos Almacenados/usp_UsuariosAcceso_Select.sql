
GO
/****** Object:  StoredProcedure [dbo].[usp_UsuariosAcceso_Select]    Script Date: 27/05/2019 06:58:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[usp_UsuariosAcceso_Select]
	@v_login	char(20),
	@v_password	varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT c_codigo_usu, v_passwo_usu,c_admin_usu, c_activo_usu
	FROM            NRA.dbo.assusuario
	WHERE        (v_login = @v_login) AND (v_login = @v_login)
END

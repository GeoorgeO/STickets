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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_Perfil_Select')
DROP PROCEDURE STic_CatUsuario_Perfil_Select 
go
CREATE PROCEDURE STic_CatUsuario_Perfil_Select
	@c_codigo_usu char(7)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



select ud.c_codigo_usu,ud.c_codigo_per,d.v_nombre_per from cat_Usuario_Perfil as ud inner join cat_Perfiles as d on d.c_codigo_per=ud.c_codigo_per where ud.c_codigo_usu=@c_codigo_usu
END
GO
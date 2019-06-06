USE [STickets]
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatDepartamentos_Update')
DROP PROCEDURE STic_CatDepartamentos_Update 
go
CREATE PROCEDURE STic_CatDepartamentos_Update
	@c_codigo_dep	char(4),
	@v_nombre_dep	varchar(200),
	@c_codigo_jef char(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Departamentos
	SET               v_nombre_dep = @v_nombre_dep,
		c_codigo_jef=@c_codigo_jef
	WHERE        (c_codigo_dep = @c_codigo_dep)

	SELECT        c_codigo_dep, v_nombre_dep, c_codigo_jef
	FROM            cat_Departamentos
	WHERE        (c_codigo_dep = @c_codigo_dep)
END
GO

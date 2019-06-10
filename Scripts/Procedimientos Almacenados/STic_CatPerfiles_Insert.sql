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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPerfiles_Insert')
DROP PROCEDURE STic_CatPerfiles_Insert 
go
CREATE PROCEDURE STic_CatPerfiles_Insert
	@v_nombre_per	varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @c_codigo_per varchar(4)
	declare @Numero int
	select @Numero=isnull(count(c_codigo_per),0)+1 from cat_Perfiles

	Set @c_codigo_per=RIGHT('0000' + Ltrim(Rtrim(@Numero)),4)
    -- Insert statements for procedure here
	INSERT INTO cat_Perfiles
                         (c_codigo_per, v_nombre_per)
	VALUES        (@c_codigo_per,@v_nombre_per)
	
	SELECT        c_codigo_dep, v_nombre_dep
	FROM            cat_Departamentos
	WHERE        (@c_codigo_per = @c_codigo_per) 
END
GO

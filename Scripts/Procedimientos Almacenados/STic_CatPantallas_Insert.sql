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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPantallas_Insert')
DROP PROCEDURE STic_CatPantallas_Insert 
go
CREATE PROCEDURE STic_CatPantallas_Insert
	@v_nombre_pan	varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @c_codigo_pan varchar(4)
	declare @Numero int
	select @Numero=isnull(count(c_codigo_pan),0)+1 from cat_Pantallas

	Set @c_codigo_pan=RIGHT('0000' + Ltrim(Rtrim(@Numero)),4)
    -- Insert statements for procedure here
	INSERT INTO cat_Pantallas
                         (c_codigo_pan, v_nombre_pan)
	VALUES        (@c_codigo_pan,@v_nombre_pan)
	
	SELECT        c_codigo_pan, v_nombre_pan
	FROM            cat_Pantallas
	WHERE        (c_codigo_pan = @c_codigo_pan) 
END
GO

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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatBotones_Insert')
DROP PROCEDURE STic_CatBotones_Insert 
go
CREATE PROCEDURE STic_CatBotones_Insert
	@v_nombre_bot	varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @c_codigo_bot char(4)
	declare @Numero int
	select @Numero=isnull(count(c_codigo_bot),0)+1 from cat_Botones

	Set @c_codigo_bot=RIGHT('00000' + Ltrim(Rtrim(@Numero)),5)
    -- Insert statements for procedure here
	INSERT INTO cat_Botones
                         (c_codigo_bot, v_nombre_bot)
	VALUES        (@c_codigo_bot,@v_nombre_bot)
	
	SELECT        c_codigo_bot, v_nombre_bot
	FROM            cat_Botones
	WHERE        (@c_codigo_bot = @c_codigo_bot) 
END
GO

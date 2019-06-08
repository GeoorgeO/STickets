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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuarios_Update')
DROP PROCEDURE STic_CatUsuarios_Update 
go
CREATE PROCEDURE STic_CatUsuarios_Update
	@c_codigo_usu char(7),
	@v_login	varchar(50),
	@v_nombres varchar(100), 
	@v_apaterno varchar(50), 
	@v_amaterno varchar(50), 
	@v_password varchar(50), 
	@d_fecha_alta datetime, 
	@d_fecha_udp datetime, 
	@v_correoelectronico varchar(100), 
	@c_codigo_act bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Usuarios
	SET               v_login = @v_login,
				v_nombres=@v_nombres, 
				v_apaterno=@v_apaterno, 
				v_amaterno=@v_amaterno, 
				v_password=@v_password, 
				d_fecha_alta=@d_fecha_alta, 
				d_fecha_udp=@d_fecha_udp, 
				v_correoelectronico=@v_correoelectronico, 
				c_codigo_act=@c_codigo_act
	WHERE        (c_codigo_usu = @c_codigo_usu)

	SELECT        c_codigo_usu, 
		v_login, 
		v_nombres, 
		v_apaterno, 
		v_amaterno, 
		v_password, 
		d_fecha_alta, 
		d_fecha_udp, 
		v_correoelectronico, 
		c_codigo_act
	FROM            cat_Usuarios
	where c_codigo_usu=@c_codigo_usu
END
GO

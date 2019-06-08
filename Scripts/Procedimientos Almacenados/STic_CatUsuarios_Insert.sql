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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuarios_Insert')
DROP PROCEDURE STic_CatUsuarios_Insert 
go
CREATE PROCEDURE STic_CatUsuarios_Insert
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
	declare @c_codigo_usu char(7)
	declare @Numero int
	select @Numero=isnull(count(c_codigo_usu),0)+1 from cat_Usuarios

	Set @c_codigo_usu=RIGHT('0000000' + Ltrim(Rtrim(@Numero)),7)
    -- Insert statements for procedure here
	INSERT INTO cat_Usuarios
                         (c_codigo_usu, 
							v_login, 
							v_nombres, 
							v_apaterno, 
							v_amaterno, 
							v_password, 
							d_fecha_alta, 
							d_fecha_udp, 
							v_correoelectronico, 
							c_codigo_act)
	VALUES        (@c_codigo_usu, 
							@v_login, 
							@v_nombres, 
							@v_apaterno, 
							@v_amaterno, 
							@v_password, 
							@d_fecha_alta, 
							@d_fecha_udp, 
							@v_correoelectronico, 
							@c_codigo_act)
	
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

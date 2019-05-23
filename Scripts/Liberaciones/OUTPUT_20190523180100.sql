USE [master]
GO

IF NOT EXISTS (SELECT * FROM sysdatabases WHERE (name = 'STickets'))
BEGIN
	create Database STickets
END

GO
USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividad_imagenes') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividad_imagenes](
			[id_Actividad_imagen][uniqueidentifier] ROWGUIDCOL NOT NULL UNIQUE,
			[c_codigo_folact] [char](10) NULL,
			[c_codigo_detact] [char](5) NULL,
			[b_imagen] [varbinary](max) FILESTREAM NULL
	)
end



GO
USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividades_Alertas') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividades_Alertas](
			[c_codigo_folact] [char](10) NULL,
			[c_codigo_usu_solicito] [char](7) NULL,
			[c_codigo_usu_asignado] [char](7) NULL,
			[c_estatus_alerta] [char](2) NULL
		) ON [PRIMARY]

	end



GO
USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividad_Asignacion') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividad_Asignacion](
			[c_codigo_folact] [char](10) NULL,
			[c_codigo_usu_asignado] [char](7) NULL
		) ON [PRIMARY]

	end

GO
USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividad_Detalle') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividad_Detalle](
			[c_codigo_folact] [char](10) NOT NULL,
			[c_codigo_detact] [char](5) NOT NULL,
			[d_fecha_detact] [datetime] NULL,
			[v_descripcion_detact] [varchar](max) NULL,
			[b_estatus_detact] [bit] NULL,
		 CONSTRAINT [PK_ctrl_Actividad_Detalle] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_folact] ASC,
			[c_codigo_detact] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	end 

GO
USE [STickets]
GO

IF OBJECT_ID('ctrl_Actividad') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[ctrl_Actividad](
			[c_codigo_folact] [char](10) NULL,
			[d_fecha_folact] [datetime] NULL,
			[c_codigo_usu_solicito] [char](7) NULL,
			[c_estatus_folact] [char](1) NULL,
		CONSTRAINT [PK_ctrl_Actividad] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_folact] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]

	end



GO
USE [STickets]
GO

IF OBJECT_ID('cat_Pantalla_Botones') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Pantalla_Botones](
			[c_codigo_pan] [char](4) NULL,
			[c_codigo_bot] [char](4) NULL,
			[id_pantalla_boton] int NULL
		CONSTRAINT [PK_cat_Pantalla_Botones] PRIMARY KEY CLUSTERED 
(
	[id_pantalla_boton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

	end

GO
USE [STickets]
GO

IF OBJECT_ID('cat_Perfil_PantallaBotones') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Perfil_PantallaBotones](
			[c_codigo_per] [char](4) NULL,
			[id_pantalla_boton] int NULL
		) ON [PRIMARY]

	end

GO
USE [STickets]
GO

IF OBJECT_ID('cat_jefesarea') IS NOT NULL
	begin
		select 0
	end
ELSE
	BEGIN

		CREATE TABLE [dbo].[cat_jefesarea](
			[c_codigo_jef] [char](5) NOT NULL,
			[v_nombre_jef] [varchar](100) NULL,
			[v_correoelectronico] [varchar](100) NULL,
		 CONSTRAINT [PK_cat_jefesarea] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_jef] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]

	end



GO
USE [STickets]
GO

IF OBJECT_ID('cat_Departamento_Actividad') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Departamento_Actividad](
			[c_codigo_dep] [char](4) NULL,
			[c_codigo_act] [char](10) NULL
		) ON [PRIMARY]

	end

GO
USE [STickets]
GO

IF OBJECT_ID('cat_Usuario_Perfil') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Usuario_Perfil](
			[c_codigo_usu] [char](7) NULL,
			[c_codigo_per] [char](4) NULL
		) ON [PRIMARY]


	end

GO
USE [STickets]
GO

IF OBJECT_ID('cat_Usuario_Departamento') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Usuario_Departamento](
			[c_codigo_usu] [char](7) NULL,
			[c_codigo_dep] [char](4) NULL
		) ON [PRIMARY]

	end

GO
USE [STickets]
GO

IF OBJECT_ID('conf_Correos') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[conf_Correos](
			[v_correoremitente] [varchar](100) NULL,
			[v_correousuario] [varchar](100) NULL,
			[v_correocontraseña] [varchar](50) NULL,
			[v_correoservidorsalida] [varchar](100) NULL,
			[v_correoservidorentrada] [varchar](100) NULL,
			[b_correocifradoSSL] [bit] NULL,
			[n_correopuertosalida] [numeric](10, 0) NULL
		) ON [PRIMARY]

	end

GO
USE [STickets]
GO

IF OBJECT_ID('cat_Usuarios') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Usuarios](
			[c_codigo_usu] [char](7) NOT NULL,
			[v_login] [varchar](50) NULL,
			[v_nombres] [varchar](100) NULL,
			[v_apaterno] [varchar](50) NULL,
			[v_amaterno] [varchar](50) NULL,
			[v_password] [varchar](50) NULL,
			[d_fecha_alta] [datetime] NULL,
			[d_fecha_udp] [datetime] NULL,
			[v_correoelectronico] [varchar](100) NULL,
			[c_codigo_act] [bit] NULL,
		 CONSTRAINT [PK_cat_Usuarios] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_usu] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]

	end

GO
USE [STickets]
GO

IF OBJECT_ID('cat_Perfiles') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Perfiles](
			[c_codigo_per] [char](4) NOT NULL,
			[v_nombre_per] [varchar](100) NULL,
		 CONSTRAINT [PK_cat_Perfiles] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_per] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]
	end

GO
USE [STickets]
GO

IF OBJECT_ID('cat_Pantallas') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin
		CREATE TABLE [dbo].[cat_Pantallas](
			[c_codigo_pan] [char](4) NOT NULL,
			[v_nombre_pan] [varchar](100) NULL,
		 CONSTRAINT [PK_cat_Pantallas] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_pan] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]
	end

GO
USE [STickets]

IF OBJECT_ID('cat_Botones') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin

		CREATE TABLE [dbo].[cat_Botones](
			[c_codigo_bot] [char](4) NOT NULL,
			[v_nombre_bot] [varchar](100) NULL,
		 CONSTRAINT [PK_cat_Botones] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_bot] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]
	end

GO
USE [STickets]
GO

IF OBJECT_ID('cat_Actividades') IS NOT NULL
	begin
		select 0
	end
ELSE
	BEGIN
		CREATE TABLE [dbo].[cat_Actividades](
			[c_codigo_act] [char](10) NOT NULL,
			[v_nombre_act] [varchar](200) NULL,
			[c_actividad_padre] [char](10) NULL,
			[v_descripcion_act] [varchar](max) NULL,
		 CONSTRAINT [PK_cat_Actividades] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_act] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	END

GO
USE [STickets]
GO
IF OBJECT_ID('cat_Departamentos') IS NOT NULL
	begin
		select 0
	end
ELSE
	begin
		CREATE TABLE [dbo].[cat_Departamentos](
			[c_codigo_dep] [char](4) NOT NULL,
			[v_nombre_dep] [varchar](200) NULL,
		 CONSTRAINT [PK_cat_Departamentos] PRIMARY KEY CLUSTERED 
		(
			[c_codigo_dep] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]
	end 

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Departamento_Actividad_cat_Actividades'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Departamento_Actividad]  WITH CHECK ADD  CONSTRAINT [FK_cat_Departamento_Actividad_cat_Actividades] FOREIGN KEY([c_codigo_act])
		REFERENCES [dbo].[cat_Actividades] ([c_codigo_act])


		ALTER TABLE [dbo].[cat_Departamento_Actividad] CHECK CONSTRAINT [FK_cat_Departamento_Actividad_cat_Actividades]
	end




GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Departamento_Actividad_cat_Departamentos'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Departamento_Actividad]  WITH CHECK ADD  CONSTRAINT [FK_cat_Departamento_Actividad_cat_Departamentos] FOREIGN KEY([c_codigo_dep])
		REFERENCES [dbo].[cat_Departamentos] ([c_codigo_dep])


		ALTER TABLE [dbo].[cat_Departamento_Actividad] CHECK CONSTRAINT [FK_cat_Departamento_Actividad_cat_Departamentos]
	end

GO
USE [STickets]
GO


IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Pantalla_Botones_cat_Botones'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Pantalla_Botones]  WITH CHECK ADD  CONSTRAINT [FK_cat_Pantalla_Botones_cat_Botones] FOREIGN KEY([c_codigo_bot])
		REFERENCES [dbo].[cat_Botones] ([c_codigo_bot])


		ALTER TABLE [dbo].[cat_Pantalla_Botones] CHECK CONSTRAINT [FK_cat_Pantalla_Botones_cat_Botones]
	end

GO
USE [STickets]
GO


IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Pantalla_Botones_cat_Pantallas'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Pantalla_Botones]  WITH CHECK ADD  CONSTRAINT [FK_cat_Pantalla_Botones_cat_Pantallas] FOREIGN KEY([c_codigo_pan])
		REFERENCES [dbo].[cat_Pantallas] ([c_codigo_pan])


		ALTER TABLE [dbo].[cat_Pantalla_Botones] CHECK CONSTRAINT [FK_cat_Pantalla_Botones_cat_Pantallas]
	end

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Perfil_PantallaBotones_cat_Pantalla_Botones'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Perfil_PantallaBotones]  WITH CHECK ADD  CONSTRAINT [FK_cat_Perfil_PantallaBotones_cat_Pantalla_Botones] FOREIGN KEY([id_pantalla_boton])
		REFERENCES [dbo].[cat_Pantalla_Botones] ([id_pantalla_boton])


		ALTER TABLE [dbo].[cat_Perfil_PantallaBotones] CHECK CONSTRAINT [FK_cat_Perfil_PantallaBotones_cat_Pantalla_Botones]
	end

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Perfil_PantallaBotones_cat_Perfiles'
)begin
	select 0
end
else
	begin


		ALTER TABLE [dbo].[cat_Perfil_PantallaBotones]  WITH CHECK ADD  CONSTRAINT [FK_cat_Perfil_PantallaBotones_cat_Perfiles] FOREIGN KEY([c_codigo_per])
		REFERENCES [dbo].[cat_Perfiles] ([c_codigo_per])
		

		ALTER TABLE [dbo].[cat_Perfil_PantallaBotones] CHECK CONSTRAINT [FK_cat_Perfil_PantallaBotones_cat_Perfiles]
	end



GO
USE [STickets]
GO


IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Usuario_Departamento_cat_Departamentos'
)begin
	select 0
end
else
	begin
		ALTER TABLE [dbo].[cat_Usuario_Departamento]  WITH CHECK ADD  CONSTRAINT [FK_cat_Usuario_Departamento_cat_Departamentos] FOREIGN KEY([c_codigo_dep])
		REFERENCES [dbo].[cat_Departamentos] ([c_codigo_dep])

		ALTER TABLE [dbo].[cat_Usuario_Departamento] CHECK CONSTRAINT [FK_cat_Usuario_Departamento_cat_Departamentos]
	end 


GO
USE [STickets]


GO
IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Usuario_Departamento_cat_Usuarios'
)begin
	select 0
end
else
	begin
		ALTER TABLE [dbo].[cat_Usuario_Departamento]  WITH CHECK ADD  CONSTRAINT [FK_cat_Usuario_Departamento_cat_Usuarios] FOREIGN KEY([c_codigo_usu])
		REFERENCES [dbo].[cat_Usuarios] ([c_codigo_usu])
		
		ALTER TABLE [dbo].[cat_Usuario_Departamento] CHECK CONSTRAINT [FK_cat_Usuario_Departamento_cat_Usuarios]
	end

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Usuario_Perfil_cat_Perfiles'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Usuario_Perfil]  WITH CHECK ADD  CONSTRAINT [FK_cat_Usuario_Perfil_cat_Perfiles] FOREIGN KEY([c_codigo_per])
		REFERENCES [dbo].[cat_Perfiles] ([c_codigo_per])
		

		ALTER TABLE [dbo].[cat_Usuario_Perfil] CHECK CONSTRAINT [FK_cat_Usuario_Perfil_cat_Perfiles]
	end
	

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Usuario_Perfil_cat_Usuarios'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Usuario_Perfil]  WITH CHECK ADD  CONSTRAINT [FK_cat_Usuario_Perfil_cat_Usuarios] FOREIGN KEY([c_codigo_usu])
		REFERENCES [dbo].[cat_Usuarios] ([c_codigo_usu])
		
		ALTER TABLE [dbo].[cat_Usuario_Perfil] CHECK CONSTRAINT [FK_cat_Usuario_Perfil_cat_Usuarios]
	end

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividad_Asignacion_cat_Usuarios'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividad_Asignacion]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividad_Asignacion_cat_Usuarios] FOREIGN KEY([c_codigo_usu_asignado])
		REFERENCES [dbo].[cat_Usuarios] ([c_codigo_usu])


		ALTER TABLE [dbo].[ctrl_Actividad_Asignacion] CHECK CONSTRAINT [FK_ctrl_Actividad_Asignacion_cat_Usuarios]

end





GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividad_Asignacion_ctrl_Actividad'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividad_Asignacion]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividad_Asignacion_ctrl_Actividad] FOREIGN KEY([c_codigo_folact])
		REFERENCES [dbo].[ctrl_Actividad] ([c_codigo_folact])


		ALTER TABLE [dbo].[ctrl_Actividad_Asignacion] CHECK CONSTRAINT [FK_ctrl_Actividad_Asignacion_ctrl_Actividad]

	end

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividad_Detalle_ctrl_Actividad'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividad_Detalle]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividad_Detalle_ctrl_Actividad] FOREIGN KEY([c_codigo_folact])
		REFERENCES [dbo].[ctrl_Actividad] ([c_codigo_folact])


		ALTER TABLE [dbo].[ctrl_Actividad_Detalle] CHECK CONSTRAINT [FK_ctrl_Actividad_Detalle_ctrl_Actividad]

	end

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividad_imagenes_ctrl_Actividad_Detalle'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividad_imagenes]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividad_imagenes_ctrl_Actividad_Detalle] FOREIGN KEY([c_codigo_folact], [c_codigo_detact])
		REFERENCES [dbo].[ctrl_Actividad_Detalle] ([c_codigo_folact], [c_codigo_detact])


		ALTER TABLE [dbo].[ctrl_Actividad_imagenes] CHECK CONSTRAINT [FK_ctrl_Actividad_imagenes_ctrl_Actividad_Detalle]

	end

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividades_Alertas_cat_Usuarios'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividades_Alertas]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividades_Alertas_cat_Usuarios] FOREIGN KEY([c_codigo_usu_asignado])
		REFERENCES [dbo].[cat_Usuarios] ([c_codigo_usu])


		ALTER TABLE [dbo].[ctrl_Actividades_Alertas] CHECK CONSTRAINT [FK_ctrl_Actividades_Alertas_cat_Usuarios]
	end

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividades_Alertas_cat_Usuarios1'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividades_Alertas]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividades_Alertas_cat_Usuarios1] FOREIGN KEY([c_codigo_usu_asignado])
		REFERENCES [dbo].[cat_Usuarios] ([c_codigo_usu])
		

		ALTER TABLE [dbo].[ctrl_Actividades_Alertas] CHECK CONSTRAINT [FK_ctrl_Actividades_Alertas_cat_Usuarios1]
		
end

GO
USE [STickets]
GO

IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_ctrl_Actividades_Alertas_ctrl_Actividad'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[ctrl_Actividades_Alertas]  WITH CHECK ADD  CONSTRAINT [FK_ctrl_Actividades_Alertas_ctrl_Actividad] FOREIGN KEY([c_codigo_folact])
		REFERENCES [dbo].[ctrl_Actividad] ([c_codigo_folact])


		ALTER TABLE [dbo].[ctrl_Actividades_Alertas] CHECK CONSTRAINT [FK_ctrl_Actividades_Alertas_ctrl_Actividad]

	end

GO

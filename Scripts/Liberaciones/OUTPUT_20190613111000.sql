USE [master]
GO

IF NOT EXISTS (SELECT * FROM sysdatabases WHERE (name = 'STickets'))
BEGIN
	create Database STickets
END

GO
USE [STickets]
GO

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Departamento_Actividad_cat_Actividades' )
begin

ALTER TABLE cat_Departamento_Actividad DROP FK_cat_Departamento_Actividad_cat_Actividades
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Departamento_Actividad_cat_Departamentos' )
begin

ALTER TABLE cat_Departamento_Actividad DROP FK_cat_Departamento_Actividad_cat_Departamentos
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Pantalla_Botones_cat_Botones' )
begin

ALTER TABLE cat_Pantalla_Botones DROP FK_cat_Pantalla_Botones_cat_Botones
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Pantalla_Botones_cat_Pantallas' )
begin

ALTER TABLE cat_Pantalla_Botones DROP FK_cat_Pantalla_Botones_cat_Pantallas
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Perfil_PantallaBotones_cat_Pantalla_Botones' )
begin

ALTER TABLE cat_Perfil_PantallaBotones DROP FK_cat_Perfil_PantallaBotones_cat_Pantalla_Botones
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Perfil_PantallaBotones_cat_Perfiles' )
begin

ALTER TABLE cat_Perfil_PantallaBotones DROP FK_cat_Perfil_PantallaBotones_cat_Perfiles
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Usuario_Departamento_cat_Departamentos' )
begin

ALTER TABLE cat_Usuario_Departamento DROP FK_cat_Usuario_Departamento_cat_Departamentos
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Usuario_Departamento_cat_Usuarios' )
begin

ALTER TABLE cat_Usuario_Departamento DROP FK_cat_Usuario_Departamento_cat_Usuarios
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Usuario_Perfil_cat_Perfiles' )
begin

ALTER TABLE cat_Usuario_Perfil DROP FK_cat_Usuario_Perfil_cat_Perfiles
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Usuario_Perfil_cat_Usuarios' )
begin

ALTER TABLE cat_Usuario_Perfil DROP FK_cat_Usuario_Perfil_cat_Usuarios
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_ctrl_Actividad_Asignacion_cat_Usuarios' )
begin

ALTER TABLE ctrl_Actividad_Asignacion DROP FK_ctrl_Actividad_Asignacion_cat_Usuarios
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_ctrl_Actividad_Asignacion_ctrl_Actividad' )
begin

ALTER TABLE ctrl_Actividad_Asignacion DROP FK_ctrl_Actividad_Asignacion_ctrl_Actividad
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_ctrl_Actividad_Detalle_ctrl_Actividad' )
begin

ALTER TABLE ctrl_Actividad_Detalle DROP FK_ctrl_Actividad_Detalle_ctrl_Actividad
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_ctrl_Actividad_imagenes_ctrl_Actividad_Detalle' )
begin

ALTER TABLE ctrl_Actividad_imagenes DROP FK_ctrl_Actividad_imagenes_ctrl_Actividad_Detalle
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_ctrl_Actividades_Alertas_cat_Usuarios' )
begin

ALTER TABLE ctrl_Actividades_Alertas DROP FK_ctrl_Actividades_Alertas_cat_Usuarios
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_ctrl_Actividades_Alertas_cat_Usuarios1' )
begin

ALTER TABLE ctrl_Actividades_Alertas DROP FK_ctrl_Actividades_Alertas_cat_Usuarios1
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_ctrl_Actividades_Alertas_ctrl_Actividad' )
begin

ALTER TABLE ctrl_Actividades_Alertas DROP FK_ctrl_Actividades_Alertas_ctrl_Actividad
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Perfil_Pantallas_cat_Pantallas' )
begin

ALTER TABLE cat_Perfil_Pantallas DROP FK_cat_Perfil_Pantallas_cat_Pantallas
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Perfil_PantallaBotones_cat_Perfiles' )
begin

ALTER TABLE cat_Perfiles DROP FK_cat_Perfil_PantallaBotones_cat_Perfiles
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Usuario_Perfil_cat_Perfiles' )
begin

ALTER TABLE cat_Perfiles DROP FK_cat_Usuario_Perfil_cat_Perfiles
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Perfil_Pantallas_cat_Pantallas' )
begin

ALTER TABLE cat_Perfil_Pantallas DROP FK_cat_Perfil_Pantallas_cat_Pantallas
end

Go

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Perfil_Pantallas_cat_Perfiles' )
begin

ALTER TABLE cat_Perfil_Pantallas DROP FK_cat_Perfil_Pantallas_cat_Perfiles
end

if exists  ( SELECT fk.name AS FK FROM sys.foreign_keys AS fk INNER JOIN sys.foreign_key_columns AS fc ON fk.OBJECT_ID = fc.constraint_object_id 
where fk.name='FK_cat_Departamentos_cat_jefesarea' )
begin

ALTER TABLE cat_Departamentos DROP FK_cat_Departamentos_cat_jefesarea
end

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'ctrl_Actividad_imagenes')
begin
   drop table ctrl_Actividad_imagenes
end
	
go

CREATE TABLE [dbo].[ctrl_Actividad_imagenes](
	[id_Actividad_imagen][uniqueidentifier] ROWGUIDCOL NOT NULL UNIQUE,
	[c_codigo_folact] [char](10) NULL,
	[c_codigo_detact] [char](5) NULL,
	[b_imagen] [varbinary](max) FILESTREAM NULL
)

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'ctrl_Actividades_Alertas')
begin
   drop table ctrl_Actividades_Alertas
end
	
go

CREATE TABLE [dbo].[ctrl_Actividades_Alertas](
	[c_codigo_folact] [char](10) NULL,
	[c_codigo_usu_solicito] [char](7) NULL,
	[c_codigo_usu_asignado] [char](7) NULL,
	[c_estatus_alerta] [char](2) NULL
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'ctrl_Actividad_Asignacion')
begin
   drop table ctrl_Actividad_Asignacion
end
	
go

CREATE TABLE [dbo].[ctrl_Actividad_Asignacion](
	[c_codigo_folact] [char](10) NULL,
	[c_codigo_usu_asignado] [char](7) NULL
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'ctrl_Actividad_Detalle')
begin
   drop table ctrl_Actividad_Detalle
end
	
go

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

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'ctrl_Actividad')
begin
   drop table ctrl_Actividad
end
	
go

CREATE TABLE [dbo].[ctrl_Actividad](
	[c_codigo_folact] [char](10)  NOT NULL,
	[d_fecha_folact] [datetime] NULL,
	[c_codigo_usu_solicito] [char](7) NULL,
	[c_estatus_folact] [char](1)  NULL
CONSTRAINT [PK_ctrl_Actividad] PRIMARY KEY CLUSTERED 
(
	[c_codigo_folact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Pantalla_Botones')
begin
   drop table cat_Pantalla_Botones
end
	
go

CREATE TABLE [dbo].[cat_Pantalla_Botones](
	[id_pantalla_boton] int not NULL,
	[c_codigo_pan] [char](4) NULL,
	[c_codigo_bot] [char](4) NULL
CONSTRAINT [PK_cat_Pantalla_Botones] PRIMARY KEY CLUSTERED 
(
	[id_pantalla_boton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Perfil_PantallaBotones')
begin
   drop table cat_Perfil_PantallaBotones
end
	
go

CREATE TABLE [dbo].[cat_Perfil_PantallaBotones](
	[c_codigo_per] [char](4) NULL,
	[id_pantalla_boton] int NULL
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_jefesarea')
begin
   drop table cat_jefesarea
end
	
go

CREATE TABLE [dbo].[cat_jefesarea](
	[c_codigo_jef] [char](5) NOT NULL,
	[v_nombre_jef] [varchar](100) NULL,
	[v_correoelectronico] [varchar](100) NULL,
 CONSTRAINT [PK_cat_jefesarea] PRIMARY KEY CLUSTERED 
(
	[c_codigo_jef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Departamento_Actividad')
begin
   drop table cat_Departamento_Actividad
end
	
go

CREATE TABLE [dbo].[cat_Departamento_Actividad](
	[c_codigo_dep] [char](4) NULL,
	[c_codigo_act] [char](10) NULL
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Usuario_Perfil')
begin
   drop table cat_Usuario_Perfil
end
	
go

CREATE TABLE [dbo].[cat_Usuario_Perfil](
	[c_codigo_usu] [char](7) NULL,
	[c_codigo_per] [char](4) NULL
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Usuario_Departamento')
begin
   drop table cat_Usuario_Departamento
end
	
go

CREATE TABLE [dbo].[cat_Usuario_Departamento](
	[c_codigo_usu] [char](7) NULL,
	[c_codigo_dep] [char](4) NULL
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'conf_Correos')
begin
   drop table conf_Correos
end
	
go

CREATE TABLE [dbo].[conf_Correos](
	[v_correoremitente] [varchar](100) NULL,
	[v_correousuario] [varchar](100) NULL,
	[v_correocontrasenia] [varchar](50) NULL,
	[v_correoservidorsalida] [varchar](100) NULL,
	[v_correoservidorentrada] [varchar](100) NULL,
	[b_correocifradoSSL] [bit] NULL,
	[n_correopuertosalida] [numeric](10, 0) NULL
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Usuarios')
begin
   drop table cat_Usuarios
end
	
go

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

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Perfiles')
begin
   drop table cat_Perfiles
end
	
go

CREATE TABLE [dbo].[cat_Perfiles](
	[c_codigo_per] [char](4) NOT NULL,
	[v_nombre_per] [varchar](100) NULL,
 CONSTRAINT [PK_cat_Perfiles] PRIMARY KEY CLUSTERED 
(
	[c_codigo_per] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Pantallas')
begin
   drop table cat_Pantallas
end
	
go
CREATE TABLE [dbo].[cat_Pantallas](
	[c_codigo_pan] [char](4) NOT NULL,
	[v_nombre_pan] [varchar](100) NULL,
 CONSTRAINT [PK_cat_Pantallas] PRIMARY KEY CLUSTERED 
(
	[c_codigo_pan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [STickets]

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Botones')
begin
   drop table cat_Botones
end
	
go

CREATE TABLE [dbo].[cat_Botones](
	[c_codigo_bot] [char](4) NOT NULL,
	[v_nombre_bot] [varchar](100) NULL,
 CONSTRAINT [PK_cat_Botones] PRIMARY KEY CLUSTERED 
(
	[c_codigo_bot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [STickets]
GO

if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Actividades')
begin
   drop table cat_Actividades
end
	
go
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

GO
USE [STickets]
GO
if exists (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'cat_Departamentos')
begin
   drop table cat_Departamentos
end
	
go
CREATE TABLE [dbo].[cat_Departamentos](
	[c_codigo_dep] [char](4) NOT NULL,
	[v_nombre_dep] [varchar](200) NULL,
	[c_codigo_jef] [char](5) NULL
 CONSTRAINT [PK_cat_Departamentos] PRIMARY KEY CLUSTERED 
(
	[c_codigo_dep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

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
USE [STickets]
GO


IF EXISTS
(
SELECT * FROM sys.foreign_keys WHERE name = 'FK_cat_Departamentos_cat_jefesarea'
)begin
	select 0
end
else
	begin

		ALTER TABLE [dbo].[cat_Departamentos]  WITH CHECK ADD  CONSTRAINT [FK_cat_Departamentos_cat_jefesarea] FOREIGN KEY([c_codigo_jef])
		REFERENCES [dbo].[cat_jefesarea] ([c_codigo_jef])

		ALTER TABLE [dbo].[cat_Departamentos] CHECK CONSTRAINT [FK_cat_Departamentos_cat_jefesarea]
	end

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatJefesarea_Delete')
DROP PROCEDURE STic_CatJefesarea_Delete 
go
CREATE PROCEDURE STic_CatJefesarea_Delete 
	@c_codigo_jef	char(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_jefesarea
	WHERE  (c_codigo_jef = @c_codigo_jef)

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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatJefesarea_Insert')
DROP PROCEDURE STic_CatJefesarea_Insert 
go
CREATE PROCEDURE STic_CatJefesarea_Insert
	@v_nombre_jef	varchar(100), @v_correoelectronico varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @c_codigo_jef char(5)
	declare @Numero int
	select @Numero=isnull(count(c_codigo_jef),0)+1 from cat_jefesarea

	Set @c_codigo_jef=RIGHT('00000' + Ltrim(Rtrim(@Numero)),5)
    -- Insert statements for procedure here
	INSERT INTO cat_jefesarea
                         (c_codigo_jef, v_nombre_jef,v_correoelectronico)
	VALUES        (@c_codigo_jef,@v_nombre_jef,@v_correoelectronico)
	
	SELECT        c_codigo_jef, v_nombre_jef, v_correoelectronico
	FROM            cat_jefesarea
	WHERE        (@c_codigo_jef = @c_codigo_jef) 
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatJefesarea_Select')
DROP PROCEDURE STic_CatJefesarea_Select 
go
CREATE PROCEDURE STic_CatJefesarea_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



select c_codigo_jef,v_nombre_jef,v_correoelectronico from cat_jefesarea
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatJefesarea_Update')
DROP PROCEDURE STic_CatJefesarea_Update 
go
CREATE PROCEDURE STic_CatJefesarea_Update
	@c_codigo_jef	char(5),
	@v_nombre_jef	varchar(100),
	@v_correoelectronico varchar (100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_jefesarea
	SET               v_nombre_jef = @v_nombre_jef,v_correoelectronico = @v_correoelectronico
	WHERE        (c_codigo_jef = @c_codigo_jef)

	SELECT        c_codigo_jef, v_nombre_jef, v_correoelectronico
	FROM            cat_jefesarea
	WHERE        (c_codigo_jef = @c_codigo_jef)
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPantallas_Delete')
DROP PROCEDURE STic_CatPantallas_Delete 
go
CREATE PROCEDURE STic_CatPantallas_Delete 
	@c_codigo_pan	char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_Pantallas
	WHERE  (c_codigo_pan = @c_codigo_pan)

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

GO
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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPantallas_Select')
DROP PROCEDURE STic_CatPantallas_Select 
go
CREATE PROCEDURE STic_CatPantallas_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        c_codigo_pan, v_nombre_pan
	FROM            cat_Pantallas
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPantallas_Update')
DROP PROCEDURE STic_CatPantallas_Update 
go
CREATE PROCEDURE STic_CatPantallas_Update
	@c_codigo_pan	char(4),
	@v_nombre_pan	varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Pantallas
	SET               v_nombre_pan = @v_nombre_pan
	WHERE        (c_codigo_pan = @c_codigo_pan)

	SELECT        c_codigo_pan, v_nombre_pan
	FROM            cat_Pantallas
	WHERE        (c_codigo_pan = @c_codigo_pan)
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatBotones_Delete')
DROP PROCEDURE STic_CatBotones_Delete 
go
CREATE PROCEDURE STic_CatBotones_Delete 
	@c_codigo_bot	char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_Botones
	WHERE  (c_codigo_bot = @c_codigo_bot)

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

GO
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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatBotones_Select')
DROP PROCEDURE STic_CatBotones_Select 
go
CREATE PROCEDURE STic_CatBotones_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        c_codigo_bot, v_nombre_bot
	FROM            cat_Botones
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatBotones_Update')
DROP PROCEDURE STic_CatBotones_Update 
go
CREATE PROCEDURE STic_CatBotones_Update
	@c_codigo_bot	char(4),
	@v_nombre_bot	varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Botones
	SET               v_nombre_bot = @v_nombre_bot
	WHERE        (c_codigo_bot = @c_codigo_bot)

	SELECT        c_codigo_bot, v_nombre_bot
	FROM            cat_Botones
	WHERE        (c_codigo_bot = @c_codigo_bot)
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatDepartamentos_Delete')
DROP PROCEDURE STic_CatDepartamentos_Delete 
go
CREATE PROCEDURE STic_CatDepartamentos_Delete 
	@c_codigo_dep	char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_Departamentos
	WHERE  (c_codigo_dep = @c_codigo_dep)

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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatDepartamentos_Insert')
DROP PROCEDURE STic_CatDepartamentos_Insert 
go
CREATE PROCEDURE STic_CatDepartamentos_Insert
	@v_nombre_dep	varchar(200),
	@c_codigo_jef char(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @c_codigo_dep varchar(4)
	declare @Numero int
	select @Numero=isnull(count(c_codigo_dep),0)+1 from cat_Departamentos

	Set @c_codigo_dep=RIGHT('0000' + Ltrim(Rtrim(@Numero)),4)
    -- Insert statements for procedure here
	INSERT INTO cat_Departamentos
                         (c_codigo_dep, v_nombre_dep, c_codigo_jef)
	VALUES        (@c_codigo_dep,@v_nombre_dep,@c_codigo_jef)
	
	SELECT        c_codigo_dep, v_nombre_dep, c_codigo_jef
	FROM            cat_Departamentos
	WHERE        (c_codigo_dep = @c_codigo_dep) 
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatDepartamentos_Jefe_Select')
DROP PROCEDURE STic_CatDepartamentos_Jefe_Select 
go
CREATE PROCEDURE STic_CatDepartamentos_Jefe_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select c_codigo_jef,v_nombre_jef from cat_jefesarea

END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatDepartamentos_Select')
DROP PROCEDURE STic_CatDepartamentos_Select 
go
CREATE PROCEDURE STic_CatDepartamentos_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        c_codigo_dep, v_nombre_dep, c_codigo_jef
	FROM            cat_Departamentos
END
GO

GO
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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_ConfCorreos_Select')
DROP PROCEDURE STic_ConfCorreos_Select 
go
CREATE PROCEDURE STic_ConfCorreos_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        v_correoremitente, 
		v_correousuario,
		v_correocontrasenia,
		v_correoservidorsalida,
		v_correoservidorentrada,
		b_correocifradoSSL,
		n_correopuertosalida
	FROM            conf_Correos
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_ConfCorreos_Insert')
DROP PROCEDURE STic_ConfCorreos_Insert 
go
CREATE PROCEDURE STic_ConfCorreos_Insert
	@v_correoremitente varchar(100), 
	@v_correousuario varchar(100),
	@v_correocontrasenia varchar(50),
	@v_correoservidorsalida varchar(100),
	@v_correoservidorentrada varchar(100),
	@b_correocifradoSSL bit,
	@n_correopuertosalida numeric(10, 0)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	delete from conf_Correos

	INSERT INTO conf_Correos
                         (v_correoremitente, v_correousuario,v_correocontrasenia,v_correoservidorsalida,v_correoservidorentrada,b_correocifradoSSL,n_correopuertosalida)
	VALUES        (@v_correoremitente,@v_correousuario,@v_correocontrasenia,@v_correoservidorsalida,@v_correoservidorentrada,@b_correocifradoSSL,@n_correopuertosalida)
	
	SELECT        v_correoremitente, v_correousuario,v_correocontrasenia,v_correoservidorsalida,v_correoservidorentrada,b_correocifradoSSL,n_correopuertosalida
	FROM            conf_Correos
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPantalla_Botones_Select')
DROP PROCEDURE STic_CatPantalla_Botones_Select 
go
CREATE PROCEDURE STic_CatPantalla_Botones_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        c_codigo_pan,
		c_codigo_bot,
		id_pantalla_boton
	FROM cat_Pantalla_Botones
END
GO

GO
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
CREATE PROCEDURE STic_CatPantallasBotones_Buscar_Select
	@c_codigo_pan varchar(4),
	@c_codigo_bot varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        c_codigo_pan, c_codigo_bot
FROM            cat_Pantalla_Botones
WHERE        (c_codigo_pan = @c_codigo_pan) AND (c_codigo_bot = @c_codigo_bot)
END
GO

GO
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
CREATE PROCEDURE STic_CatPantallasBotones_Update
	@id_pantalla_boton int,
	@c_codigo_pan varchar(4),
	@c_codigo_bot varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Pantalla_Botones
SET                c_codigo_pan = @c_codigo_pan, c_codigo_bot = @c_codigo_bot
WHERE        (id_pantalla_boton = @id_pantalla_boton)
END
GO

GO
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
create PROCEDURE STic_CatPantallasBotones_Insert
	@c_codigo_pan varchar(4),
	@c_codigo_bot varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @id_pantalla_boton int
	select @id_pantalla_boton=isnull(count(id_pantalla_boton),0)+1 from cat_Pantalla_Botones
    -- Insert statements for procedure here
	INSERT INTO cat_Pantalla_Botones
                         (id_pantalla_boton, c_codigo_pan, c_codigo_bot)
	VALUES        (@id_pantalla_boton,@c_codigo_pan,@c_codigo_bot)
END
GO

GO
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
CREATE PROCEDURE STic_CatPantallasBotones_Delete
	@id_pantalla_boton int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM cat_Pantalla_Botones
	WHERE  (id_pantalla_boton = @id_pantalla_boton)
END
GO

GO
USE [STickets]
GO
/****** Object:  StoredProcedure [dbo].[STic_CatPantallasBotones_Buscar_Select]    Script Date: 11/06/2019 12:27:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[STic_CatPantallasBotones_Select]
	@c_codigo_pan varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        cat_Pantalla_Botones.id_pantalla_boton, cat_Pantalla_Botones.c_codigo_pan, cat_Pantalla_Botones.c_codigo_bot, cat_Botones.v_nombre_bot
FROM            cat_Pantalla_Botones INNER JOIN
                         cat_Botones ON cat_Pantalla_Botones.c_codigo_bot = cat_Botones.c_codigo_bot
WHERE        (cat_Pantalla_Botones.c_codigo_pan = @c_codigo_pan)
END

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuarios_Select')
DROP PROCEDURE STic_CatUsuarios_Select 
go
CREATE PROCEDURE STic_CatUsuarios_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
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
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuarios_Delete')
DROP PROCEDURE STic_CatUsuarios_Delete 
go
CREATE PROCEDURE STic_CatUsuarios_Delete 
	@c_codigo_usu	char(7)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_Usuarios
	WHERE  (c_codigo_usu = @c_codigo_usu)

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

GO
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
				d_fecha_udp=getdate(), 
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

GO
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
	@v_correoelectronico varchar(100), 
	@c_codigo_act bit,
	@c_codigo_usu char(7)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	INSERT INTO cat_Usuarios
                         (c_codigo_usu, 
							v_login, 
							v_nombres, 
							v_apaterno, 
							v_amaterno, 
							v_password, 
							d_fecha_alta, 
							v_correoelectronico, 
							c_codigo_act)
	VALUES        (@c_codigo_usu, 
							@v_login, 
							@v_nombres, 
							@v_apaterno, 
							@v_amaterno, 
							@v_password, 
							getdate(), 
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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuarios_SelectMax')
DROP PROCEDURE STic_CatUsuarios_SelectMax 
go
CREATE PROCEDURE STic_CatUsuarios_SelectMax
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT       RIGHT('0000000'+convert(varchar(2),isnull(max(c_codigo_usu),'0000001') +1),7)  as c_codigo_usu
	FROM            cat_Usuarios
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_All_Departamento_Perfil_Delete')
DROP PROCEDURE STic_CatUsuario_All_Departamento_Perfil_Delete 
go
CREATE PROCEDURE STic_CatUsuario_All_Departamento_Perfil_Delete 
	@c_codigo_usu	char(7)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_Usuario_Perfil
	WHERE  (c_codigo_usu = @c_codigo_usu )

    DELETE FROM cat_Usuario_Departamento
	WHERE  (c_codigo_usu = @c_codigo_usu )

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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_Departamento_Select')
DROP PROCEDURE STic_CatUsuario_Departamento_Select 
go
CREATE PROCEDURE STic_CatUsuario_Departamento_Select
	@c_codigo_usu char(7)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



select ud.c_codigo_usu,ud.c_codigo_dep,d.v_nombre_dep from cat_Usuario_Departamento as ud inner join cat_Departamentos as d on d.c_codigo_dep=ud.c_codigo_dep where ud.c_codigo_usu=@c_codigo_usu
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_Departamento_Insert')
DROP PROCEDURE STic_CatUsuario_Departamento_Insert 
go
CREATE PROCEDURE STic_CatUsuario_Departamento_Insert
	@c_codigo_usu char(7),
	@c_codigo_dep	char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	

	INSERT INTO cat_Usuario_Departamento
                         (c_codigo_usu, c_codigo_dep)
	VALUES        (@c_codigo_usu,@c_codigo_dep)
	
	select 1
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_Departamento_Delete')
DROP PROCEDURE STic_CatUsuario_Departamento_Delete 
go
CREATE PROCEDURE STic_CatUsuario_Departamento_Delete 
	@c_codigo_usu	char(7),
	@c_codigo_dep char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_Usuario_Departamento
	WHERE  (c_codigo_usu = @c_codigo_usu and c_codigo_dep=@c_codigo_dep)

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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_Departamento_Departamentos_Select')
DROP PROCEDURE STic_CatUsuario_Departamento_Departamentos_Select 
go
CREATE PROCEDURE STic_CatUsuario_Departamento_Departamentos_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select c_codigo_dep,v_nombre_dep from cat_Departamentos

END
GO

GO
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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_Perfil_Insert')
DROP PROCEDURE STic_CatUsuario_Perfil_Insert 
go
CREATE PROCEDURE STic_CatUsuario_Perfil_Insert
	@c_codigo_usu char(7),
	@c_codigo_per	char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	

	INSERT INTO cat_Usuario_Perfil
                         (c_codigo_usu, c_codigo_per)
	VALUES        (@c_codigo_usu,@c_codigo_per)
	
	select 1
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_Perfil_Delete')
DROP PROCEDURE STic_CatUsuario_Perfil_Delete 
go
CREATE PROCEDURE STic_CatUsuario_Perfil_Delete 
	@c_codigo_usu	char(7),
	@c_codigo_per char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_Usuario_Perfil
	WHERE  (c_codigo_usu = @c_codigo_usu and c_codigo_per=@c_codigo_per)

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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatUsuario_Perfil_Perfiles_Select')
DROP PROCEDURE STic_CatUsuario_Perfil_Perfiles_Select 
go
CREATE PROCEDURE STic_CatUsuario_Perfil_Perfiles_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select c_codigo_per,v_nombre_per from cat_Perfiles

END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPerfiles_Update')
DROP PROCEDURE STic_CatPerfiles_Update 
go
CREATE PROCEDURE STic_CatPerfiles_Update
	@c_codigo_per	char(4),
	@v_nombre_per	varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       cat_Perfiles
	SET               v_nombre_per = @v_nombre_per
		
	WHERE        (c_codigo_per = @c_codigo_per)

	SELECT        c_codigo_per, v_nombre_per
	FROM            cat_Perfiles
	WHERE        (c_codigo_per = @c_codigo_per)
END
GO

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPerfiles_Select')
DROP PROCEDURE STic_CatPerfiles_Select 
go
CREATE PROCEDURE STic_CatPerfiles_Select
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        c_codigo_per, v_nombre_per
	FROM            cat_Perfiles
END
GO

GO
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

GO
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
IF  EXISTS (SELECT * FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'STic_CatPerfiles_Delete')
DROP PROCEDURE STic_CatPerfiles_Delete 
go
CREATE PROCEDURE STic_CatPerfiles_Delete 
	@c_codigo_per	char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Ejecutado bit
		  
BEGIN TRANSACTION ;  
 BEGIN TRY  

	DELETE FROM cat_Perfiles
	WHERE  (c_codigo_per = @c_codigo_per)

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

GO

GO
INSERT [dbo].[cat_Botones] ([c_codigo_bot], [v_nombre_bot]) VALUES (N'0001', N'Nuevo')
GO
INSERT [dbo].[cat_Botones] ([c_codigo_bot], [v_nombre_bot]) VALUES (N'0002', N'Guardar')
GO
INSERT [dbo].[cat_Botones] ([c_codigo_bot], [v_nombre_bot]) VALUES (N'0003', N'Eliminar')
GO
INSERT [dbo].[cat_Botones] ([c_codigo_bot], [v_nombre_bot]) VALUES (N'0004', N'Salir')
GO
INSERT [dbo].[cat_Botones] ([c_codigo_bot], [v_nombre_bot]) VALUES (N'0005', N'Probar')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0001', N'Modulo Botones')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0002', N'Modulo Pantallas')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0003', N'Modulo Perfiles')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0004', N'Modulo Usuarios')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0005', N'Modulo Jefes')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0006', N'Modulo Departamentos')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0007', N'Modulo Actividades')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0008', N'Modulo Pantalla - Boton')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0009', N'Modulo Perfil - [Pantalla - Boton]')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0010', N'Modulo Departamento - Actividad')
GO
INSERT [dbo].[cat_Pantallas] ([c_codigo_pan], [v_nombre_pan]) VALUES (N'0011', N'Modulo EMail')
GO

GO

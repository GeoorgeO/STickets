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
	[c_codigo_pan] [char](4) NULL,
	[c_codigo_bot] [char](4) NULL,
	[id_pantalla_boton] int not NULL
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

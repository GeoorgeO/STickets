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
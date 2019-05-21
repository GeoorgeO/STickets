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
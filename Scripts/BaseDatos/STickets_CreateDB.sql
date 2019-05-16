USE [master]
GO

IF NOT EXISTS (SELECT * FROM sysdatabases WHERE (name = 'STickets'))
BEGIN
	create Database STickets
END

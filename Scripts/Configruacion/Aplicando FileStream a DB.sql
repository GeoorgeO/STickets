ALTER DATABASE STickets
ADD FILEGROUP FileStreamGroup01 CONTAINS FILESTREAM
GO
ALTER DATABASE STickets
ADD FILE
(
NAME = 'FileStreamFile01'
,FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\STickets'
)
TO FILEGROUP FileStreamGroup01
GO
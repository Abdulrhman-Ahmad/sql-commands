CREATE DATABASE ExaminationSystem ON PRIMARY (
    NAME = 'ExaminationSystem',
    FILENAME = N'D:\SQL Project\ExaminationSystem-Data.mdf',
    SIZE = 8MB,
    FILEGROWTH = 10 %,
    MAXSIZE = 50MB
) LOG ON (
    NAME = 'Net23-Company-Log',
    FILENAME = N'D:\SQL Project\ExaminationSystem-Log.Ldf',
    SIZE = 8MB,
    FILEGROWTH = 10 %,
    MAXSIZE = 50MB
)

/*
 Primary File (.mdf):
 -  NAME: Specifies the logical name of the file. In this case, it's set to 'ExaminationSystem'.
 -  FILENAME: Specifies the physical path and filename for the data file. In this case, it's 'D:\SQL Project\ExaminationSystem-Data.mdf'.
 -  SIZE: Specifies the initial size of the file. It's set to 8MB.
 -  FILEGROWTH: Specifies the growth increment of the file. It's set to 10%, meaning that the file will grow by 10% each time it needs more space.
 -  MAXSIZE: Specifies the maximum size to which the file can grow. It's set to 50MB, meaning the file won't grow beyond this size.
 
 Log File (.ldf):
 -  NAME: Specifies the logical name of the log file. In this case, it's set to 'ExaminationSystem-Log'.
 -  FILENAME: Specifies the physical path and filename for the log file. In this case, it's 'D:\SQL Project\ExaminationSystem-Log.Ldf'.
 -  SIZE: Specifies the initial size of the log file. It's set to 8MB.
 -  FILEGROWTH: Specifies the growth increment of the log file. It's set to 10%, meaning that the log file will grow by 10% each time it needs more space.
 -  MAXSIZE: Specifies the maximum size to which the log file can grow. It's set to 50MB, meaning the log file won't grow beyond this size.
 */


-- Logical Name is a name used internally by SQL Server to reference the database. It's typically used within SQL Server queries and management tools to identify the database.
-- Physical Name refers to the actual file name on the disk where the database's data or log is stored.
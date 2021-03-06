USE [master]
GO
/****** Object:  Database [angular_asp_crud]    Script Date: 6/21/2017 4:02:54 PM ******/
CREATE DATABASE [angular_asp_crud]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'angular_asp_crud', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\angular_asp_crud.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'angular_asp_crud_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\angular_asp_crud_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [angular_asp_crud] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [angular_asp_crud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [angular_asp_crud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [angular_asp_crud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [angular_asp_crud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [angular_asp_crud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [angular_asp_crud] SET ARITHABORT OFF 
GO
ALTER DATABASE [angular_asp_crud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [angular_asp_crud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [angular_asp_crud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [angular_asp_crud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [angular_asp_crud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [angular_asp_crud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [angular_asp_crud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [angular_asp_crud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [angular_asp_crud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [angular_asp_crud] SET  DISABLE_BROKER 
GO
ALTER DATABASE [angular_asp_crud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [angular_asp_crud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [angular_asp_crud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [angular_asp_crud] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [angular_asp_crud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [angular_asp_crud] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [angular_asp_crud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [angular_asp_crud] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [angular_asp_crud] SET  MULTI_USER 
GO
ALTER DATABASE [angular_asp_crud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [angular_asp_crud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [angular_asp_crud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [angular_asp_crud] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [angular_asp_crud] SET DELAYED_DURABILITY = DISABLED 
GO
USE [angular_asp_crud]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/21/2017 4:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Salary] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Name], [Age], [Salary]) VALUES (1, N'Mohon', 23, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Age], [Salary]) VALUES (2, N'Rana', 24, CAST(20000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Employee] OFF
USE [master]
GO
ALTER DATABASE [angular_asp_crud] SET  READ_WRITE 
GO

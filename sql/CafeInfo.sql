USE [master]
GO
/****** Object:  Database [CafeInfo]    Script Date: 11/29/2021 2:30:39 PM ******/
CREATE DATABASE [CafeInfo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CafeInfo', FILENAME = N'C:\Program Files (x86)\MSSQL15.MSSQLSERVER\MSSQL\DATA\CafeInfo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CafeInfo_log', FILENAME = N'C:\Program Files (x86)\MSSQL15.MSSQLSERVER\MSSQL\DATA\CafeInfo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CafeInfo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CafeInfo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CafeInfo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CafeInfo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CafeInfo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CafeInfo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CafeInfo] SET ARITHABORT OFF 
GO
ALTER DATABASE [CafeInfo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CafeInfo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CafeInfo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CafeInfo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CafeInfo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CafeInfo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CafeInfo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CafeInfo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CafeInfo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CafeInfo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CafeInfo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CafeInfo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CafeInfo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CafeInfo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CafeInfo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CafeInfo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CafeInfo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CafeInfo] SET RECOVERY FULL 
GO
ALTER DATABASE [CafeInfo] SET  MULTI_USER 
GO
ALTER DATABASE [CafeInfo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CafeInfo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CafeInfo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CafeInfo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CafeInfo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CafeInfo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CafeInfo', N'ON'
GO
ALTER DATABASE [CafeInfo] SET QUERY_STORE = OFF
GO
USE [CafeInfo]
GO
/****** Object:  Table [dbo].[CafeInfo]    Script Date: 11/29/2021 2:30:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CafeInfo](
	[ID] [char](10) NOT NULL,
	[cafeType] [char](10) NULL,
	[cafeName] [nvarchar](50) NOT NULL,
	[cafePrice] [int] NOT NULL,
	[cafeAmount] [int] NOT NULL,
	[cafeNote] [nvarchar](max) NULL,
	[cafeTaste] [nvarchar](max) NOT NULL,
	[cafeModify] [nvarchar](max) NULL,
 CONSTRAINT [PK_CafeInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CafeInfo] ([ID], [cafeType], [cafeName], [cafePrice], [cafeAmount], [cafeNote], [cafeTaste], [cafeModify]) VALUES (N'ACD051222 ', N'Arabica1  ', N'Arabica Cầu Đất', 130000, 10, N'100% Arabica', N'Chua thanh, hậu vị đắng', NULL)
INSERT [dbo].[CafeInfo] ([ID], [cafeType], [cafeName], [cafePrice], [cafeAmount], [cafeNote], [cafeTaste], [cafeModify]) VALUES (N'C051222   ', N'Culi      ', N'Culi123', 95000, 10, N'100% Culi', N'Đắng mạnh, thơm nồng, nhiều cafein hơn Robusta', N'Dành cho những người có gu cafe mạnh')
INSERT [dbo].[CafeInfo] ([ID], [cafeType], [cafeName], [cafePrice], [cafeAmount], [cafeNote], [cafeTaste], [cafeModify]) VALUES (N'CE051222  ', N'Espresso  ', N'Charm Espresso', 360000, 10, N'80% Arabica + 20% Robusta', N'Chua thanh có chút ngọt, hậu vị đắng', NULL)
INSERT [dbo].[CafeInfo] ([ID], [cafeType], [cafeName], [cafePrice], [cafeAmount], [cafeNote], [cafeTaste], [cafeModify]) VALUES (N'CR051222  ', N'Robusta   ', N'Culi Robusta', 150000, 15, N'80% Robusta + 20% Culi', N'Đắng đậm, thơm nồng', N'Dành cho những người có gu cafe hơi mạnh')
INSERT [dbo].[CafeInfo] ([ID], [cafeType], [cafeName], [cafePrice], [cafeAmount], [cafeNote], [cafeTaste], [cafeModify]) VALUES (N'EP051222  ', N'Espresso  ', N'Espresso Premium', 120000, 10, N'40% Robusta + Arabica + Culi', N'Thơm nồng, đắng vừa, hậu vị chua', NULL)
INSERT [dbo].[CafeInfo] ([ID], [cafeType], [cafeName], [cafePrice], [cafeAmount], [cafeNote], [cafeTaste], [cafeModify]) VALUES (N'HB051222  ', N'Espresso  ', N'Harmony Blend', 360000, 10, N'30% Robusta + 70% Arabica ', N'Đắng dịu, chua thanh', NULL)
INSERT [dbo].[CafeInfo] ([ID], [cafeType], [cafeName], [cafePrice], [cafeAmount], [cafeNote], [cafeTaste], [cafeModify]) VALUES (N'PB051222  ', N'Epresso   ', N'Passion Blend', 260000, 15, N'70% Robusta + 30% Arabica', N'Đắng vừa, hậu vị chua nhẹ', NULL)
GO
USE [master]
GO
ALTER DATABASE [CafeInfo] SET  READ_WRITE 
GO

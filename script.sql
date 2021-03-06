USE [master]
GO
/****** Object:  Database [DbAIT]    Script Date: 02/11/2021 16:48:38 ******/
CREATE DATABASE [DbAIT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbAIT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DbAIT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbAIT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DbAIT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DbAIT] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbAIT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbAIT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbAIT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbAIT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbAIT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbAIT] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbAIT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbAIT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbAIT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbAIT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbAIT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbAIT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbAIT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbAIT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbAIT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbAIT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DbAIT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbAIT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbAIT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbAIT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbAIT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbAIT] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DbAIT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbAIT] SET RECOVERY FULL 
GO
ALTER DATABASE [DbAIT] SET  MULTI_USER 
GO
ALTER DATABASE [DbAIT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbAIT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbAIT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbAIT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbAIT] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbAIT', N'ON'
GO
ALTER DATABASE [DbAIT] SET QUERY_STORE = OFF
GO
USE [DbAIT]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/11/2021 16:48:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branchs]    Script Date: 02/11/2021 16:48:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branchs](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](250) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Branchs] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 02/11/2021 16:48:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](250) NOT NULL,
	[Dob] [date] NOT NULL,
	[DateFirst] [date] NOT NULL,
	[ShortIntro] [nvarchar](500) NOT NULL,
	[BranchId] [int] NULL,
	[SkillId] [int] NULL,
	[Avatar] [nvarchar](500) NULL,
	[Status] [bit] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 02/11/2021 16:48:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02/11/2021 16:48:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 02/11/2021 16:48:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 02/11/2021 16:48:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 02/11/2021 16:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 02/11/2021 16:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/11/2021 16:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](450) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 02/11/2021 16:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211101030104_Add-Idetity', N'5.0.11')
GO
SET IDENTITY_INSERT [dbo].[Branchs] ON 

INSERT [dbo].[Branchs] ([BranchId], [BranchName], [Address]) VALUES (1, N'TP Huế', N'2 Lê Quý Đôn, P.Phú Hội, TP.Huế, Tỉnh Thừa Thiên Huế')
INSERT [dbo].[Branchs] ([BranchId], [BranchName], [Address]) VALUES (4, N'TP Hồ Chí Minh', N'9 Đinh Tiên Hoàng,P.ĐaKao,Q1,TP.HCM')
SET IDENTITY_INSERT [dbo].[Branchs] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (70, N'Riley Oneil', CAST(N'2003-10-04' AS Date), CAST(N'1991-08-24' AS Date), N'Adipisicing autem qu', 1, 3, N'riley-oneilpreview_.jpg', 0, N'Expedita lorem iusto')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (71, N'Keith Stevenson', CAST(N'1998-07-11' AS Date), CAST(N'2003-08-18' AS Date), N'Explicabo Inventore', 1, 1, N'keith-stevensonpreview_.jpg', 0, N'Aliqua Mollitia inc')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (72, N'Dorian Dalton', CAST(N'2021-10-02' AS Date), CAST(N'1988-05-14' AS Date), N'Fugit est ut minus', 1, 1, N'dorian-daltonpreview_.jpg', 0, N'Omnis ad temporibus ')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (73, N'Joseph Pena', CAST(N'1995-12-18' AS Date), CAST(N'2019-12-23' AS Date), N'Esse aut sit sunt m', 1, 1, N'joseph-penapreview_.jpg', 0, N'Et rerum obcaecati f')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (74, N'Kaye Mccullough', CAST(N'1990-09-28' AS Date), CAST(N'2014-10-08' AS Date), N'Earum iure anim aute', 1, 1, N'kaye-mcculloughpreview_.jpg', 0, N'Ab sit recusandae ')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (75, N'Lamar Chase', CAST(N'1985-05-10' AS Date), CAST(N'2012-06-23' AS Date), N'Sequi aperiam atque ', 1, 1, N'noavatar.jpg', 0, N'Asperiores non harum')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (76, N'Ivana Cummings', CAST(N'2019-10-26' AS Date), CAST(N'2013-03-03' AS Date), N'Fugit ut repellendu', 4, 3, N'noavatar.jpg', 0, N'Harum natus ea offic')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (77, N'Anne Lopez', CAST(N'2016-08-24' AS Date), CAST(N'1992-02-28' AS Date), N'Tempor autem accusam', 1, 1, N'anne-lopezpreview_.jpg', 0, N'Numquam maiores quos')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (78, N'Hilary Perry', CAST(N'2006-01-23' AS Date), CAST(N'1986-11-07' AS Date), N'Quis dolor excepteur', 4, 5, N'noavatar.jpg', 0, N'Lorem impedit nostr')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (79, N'Linda Patton', CAST(N'1995-07-07' AS Date), CAST(N'1988-11-20' AS Date), N'Quia possimus neces', 4, 1, N'linda-pattonpreview_.jpg', 0, N'Delectus fugit dol')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (80, N'Anne Page', CAST(N'2010-12-13' AS Date), CAST(N'1971-12-23' AS Date), N'Delectus eos sit ', 4, 3, N'anne-pagepreview_.jpg', 0, N'In deserunt pariatur')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (81, N'Yolanda Frazier', CAST(N'1998-05-11' AS Date), CAST(N'2003-07-26' AS Date), N'Quis id temporibus l', 1, 6, N'noavatar.jpg', 0, N'Voluptatibus volupta')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (82, N'Amanda Stanley', CAST(N'1983-10-13' AS Date), CAST(N'1985-05-16' AS Date), N'Nulla sapiente conse', 4, 1, N'noavatar.jpg', 0, N'Sed doloribus quisqu')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (84, N'Donna Ortega', CAST(N'1998-08-25' AS Date), CAST(N'2017-08-21' AS Date), N'Sunt quasi ratione n', 4, 3, N'donna-ortegapreview_.jpg', 0, N'Accusantium corporis')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (85, N'Scott Frost', CAST(N'2019-01-06' AS Date), CAST(N'1985-04-14' AS Date), N'Laudantium doloremq', 1, 6, N'noavatar.jpg', 0, N'Est nihil laboris ir')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (86, N'Britanney Valentine', CAST(N'1978-03-17' AS Date), CAST(N'1986-08-02' AS Date), N'Minus sint non labor', 1, 7, N'noavatar.jpg', 0, N'Aut numquam et dolor')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (88, N'Warren Washington', CAST(N'1982-01-27' AS Date), CAST(N'2006-01-09' AS Date), N'Voluptatibus iure ut', 4, 8, N'noavatar.jpg', 0, N'Aliquip cum dolores ')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (89, N'Zoe Mccullough', CAST(N'2015-04-21' AS Date), CAST(N'2016-10-05' AS Date), N'Sapiente velit dolor', 4, 10, N'zoe-mcculloughpreview_.jpg', 0, N'Id vero voluptatibus')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (91, N'Uriah Lamb', CAST(N'2005-06-12' AS Date), CAST(N'1979-07-10' AS Date), N'Qui sed eos eveniet', 4, 2, N'noavatar.jpg', 0, N'Voluptas sit adipisc')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [Dob], [DateFirst], [ShortIntro], [BranchId], [SkillId], [Avatar], [Status], [Address]) VALUES (92, N'Trần Văn Duy', CAST(N'2010-02-20' AS Date), CAST(N'1972-06-21' AS Date), N'Officia provident d', 4, 10, N'tran-van-duypreview_.jpg', 0, N'Veniam deleniti aut')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'32ffd287-205f-43a2-9f0d-80sc5309fb47', N'Customer', N'Customer', N'2')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c0c6661b-0964-4e62-8083-3cac6a6741ec', N'SystemAdmin', N'SystemAdmin', N'1')
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (1, N'Ruby')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (2, N'Python')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (3, N'PHP')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (4, N'PHP,C#')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (5, N'C#,Java')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (6, N'English')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (7, N'JavaScript ')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (8, N'Angular')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (9, N'PHP,Ruby')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (10, N'C#,Java,PHP')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (11, N'NodeJS')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'2c0fca4e-9376-4a70-bcc6-35bebe497866', N'c0c6661b-0964-4e62-8083-3cac6a6741ec')
GO
INSERT [dbo].[Users] ([Id], [Avatar], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2c0fca4e-9376-4a70-bcc6-35bebe497866', N'/Images/logo.png', N'Admin', N'AIT.admin@gmail.com', N'AIT.admin@gmail.com', N'AIT.admin@gmail.com', 0, N'AQAAAAEAACcQAAAAEGgFE1bW81OmULEzr+RdkIFM23VTP6M/k/89gAeHorCjZQaYu7GBKh4I4sdSGaHizw==', N'f96141e3-d414-4083-98ef-4b4739eb0b64', N'd8306bf9-8eb5-4050-9073-7bb2f7627e54', NULL, 0, 0, NULL, 0, 0)
GO
/****** Object:  Index [IX_Employees_BranchId]    Script Date: 02/11/2021 16:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_Employees_BranchId] ON [dbo].[Employees]
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employees_SkillId]    Script Date: 02/11/2021 16:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_Employees_SkillId] ON [dbo].[Employees]
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleClaims_RoleId]    Script Date: 02/11/2021 16:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [dbo].[RoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 02/11/2021 16:48:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Roles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserClaims_UserId]    Script Date: 02/11/2021 16:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [dbo].[UserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLogins_UserId]    Script Date: 02/11/2021 16:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId] ON [dbo].[UserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserRoles_RoleId]    Script Date: 02/11/2021 16:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId] ON [dbo].[UserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 02/11/2021 16:48:39 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Users]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 02/11/2021 16:48:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Users]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Branchs] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branchs] ([BranchId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Branchs]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Skills] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Skills]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [DbAIT] SET  READ_WRITE 
GO

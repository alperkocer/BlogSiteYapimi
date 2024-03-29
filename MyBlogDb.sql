USE [master]
GO
/****** Object:  Database [MyBlog]    Script Date: 25.6.2019 18:07:37 ******/
CREATE DATABASE [MyBlog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyBlog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MyBlog.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyBlog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MyBlog_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MyBlog] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyBlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyBlog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyBlog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyBlog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyBlog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyBlog] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyBlog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyBlog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyBlog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyBlog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyBlog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyBlog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyBlog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyBlog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyBlog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyBlog] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MyBlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyBlog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyBlog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyBlog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyBlog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyBlog] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MyBlog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyBlog] SET RECOVERY FULL 
GO
ALTER DATABASE [MyBlog] SET  MULTI_USER 
GO
ALTER DATABASE [MyBlog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyBlog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyBlog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyBlog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyBlog] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MyBlog', N'ON'
GO
ALTER DATABASE [MyBlog] SET QUERY_STORE = OFF
GO
USE [MyBlog]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25.6.2019 18:07:37 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[Address] [nvarchar](max) NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[CitizenshipNumber] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Surname] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[ParentCategoryId] [int] NULL,
	[PictureUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[PostId] [int] NOT NULL,
	[CommentDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Summary] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ReadCount] [int] NOT NULL,
	[Voting] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostTags]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_PostTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 25.6.2019 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190622191309_CreateIdentitySchema', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190622191850_CreateBlogDbSchemaa', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190622200227_updateUserTable', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190623123558_updateCategoryTable', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190623124007_updateCategoryTable1', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190623124237_updateCategoryTable2', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190623132605_updatePostTable', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190623145803_updateCommentTable', N'2.2.4-servicing-10062')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'User', N'USER', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b59bb64-aede-443c-985a-7ef134e13e73', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'80e0a01d-a909-4e6a-8e33-6e2bf1e73f2f', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c9706e01-3473-4bf8-a92a-56f283e75a17', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Birthday], [CitizenshipNumber], [FirstName], [Status], [Surname]) VALUES (N'7b59bb64-aede-443c-985a-7ef134e13e73', N'ferdi@f.com', N'FERDI@F.COM', N'ferdi@f.com', N'FERDI@F.COM', 0, N'AQAAAAEAACcQAAAAENGMhleHRju5npR7qM9afX28pyYoVYYc4GAhfpTy9dmTSS3GZBkzUjwzGwlueS41fA==', N'P4DWVWDVRCNE5XWTR3FOJL3J5XW2FBHY', N'9211f240-d7f8-40c2-bcd3-574b7921f355', N'12344', 0, 0, NULL, 1, 0, N'ist', CAST(N'2019-06-04T00:00:00.0000000' AS DateTime2), N'12345678909', N'ferdi', 1, N'fırat')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Birthday], [CitizenshipNumber], [FirstName], [Status], [Surname]) VALUES (N'80e0a01d-a909-4e6a-8e33-6e2bf1e73f2f', N'ferdi@firat.com', N'FERDI@FIRAT.COM', N'ferdi@firat.com', N'FERDI@FIRAT.COM', 0, N'AQAAAAEAACcQAAAAECOfrFVl+SAlXPUs7tydzrBhwmQNrQu/SHeB4K2yDibRl7Fu4NMV5Fv2TG+wrPphgw==', N'G3K2IU2P2EE3PAN6YTFALNV4I62NYDTF', N'b7f2b58f-4c6f-45cb-be03-42885ac813a8', N'5315315353', 0, 0, NULL, 1, 0, N'asdad', CAST(N'2019-06-04T00:00:00.0000000' AS DateTime2), N'123456', N'ferdi', 1, N'fırat')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Birthday], [CitizenshipNumber], [FirstName], [Status], [Surname]) VALUES (N'c9706e01-3473-4bf8-a92a-56f283e75a17', N'ferdi@ferdi.com', N'FERDI@FERDI.COM', N'ferdi@ferdi.com', N'FERDI@FERDI.COM', 0, N'AQAAAAEAACcQAAAAEDV10iuK+u1iltQTt4jn3Igc/AEHIWARGMRCHtSUi/WxD3lkMwOC0E6YNibgf4ZRqQ==', N'XMOQOLVUVUVU3HLMVV2LY7YCIZSN432O', N'5164c53e-bb7a-478d-8c08-79fbad90e3ba', N'5315315353', 0, 0, NULL, 1, 0, N'ist', CAST(N'1994-06-14T00:00:00.0000000' AS DateTime2), N'12345678909', N'ferdi', 1, N'fırat')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName], [ParentCategoryId], [PictureUrl]) VALUES (1, N'Kitap', NULL, N'https://image.flaticon.com/icons/svg/182/182321.svg')
INSERT [dbo].[Categories] ([Id], [CategoryName], [ParentCategoryId], [PictureUrl]) VALUES (3, N'Müzik', NULL, N'https://image.flaticon.com/icons/svg/126/126493.svg')
INSERT [dbo].[Categories] ([Id], [CategoryName], [ParentCategoryId], [PictureUrl]) VALUES (4, N'Oyun', NULL, N'https://image.flaticon.com/icons/svg/263/263076.svg')
INSERT [dbo].[Categories] ([Id], [CategoryName], [ParentCategoryId], [PictureUrl]) VALUES (5, N'Film', NULL, N'https://image.flaticon.com/icons/svg/263/263068.svg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Content], [UserId], [PostId], [CommentDate], [IsActive]) VALUES (1, N'yorum denemes', N'c9706e01-3473-4bf8-a92a-56f283e75a17', 1, CAST(N'2019-06-23T20:53:22.2099833' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Title], [Summary], [Content], [Picture], [CreationDate], [CategoryId], [UserId], [ReadCount], [Voting], [IsActive]) VALUES (1, N'Yüzüklerin Efendisi - Yüzük Kardeşliği', N'Dünya ikiye bölünmüştür, denir Tolkien''ın yapıtı söz konusu olduğunda: Yüzüklerin Efendisi''ni okumuş olanlar ve okuyacak olanlar. 1997 ile birlikte, çok sayıda Türkiyeli okur da "okumuş olanlar" safına geçme fırsatı buldu. Kitabın türkçe basımı Yüzüklerin Efendisi''ne duyulan ilginin evrenselliğini kanıtladı.', N'Dünya ikiye bölünmüştür, denir Tolkien''ın yapıtı söz konusu olduğunda: Yüzüklerin Efendisi''ni okumuş olanlar ve okuyacak olanlar. 1997 ile birlikte, çok sayıda Türkiyeli okur da "okumuş olanlar" safına geçme fırsatı buldu. Kitabın türkçe basımı Yüzüklerin Efendisi''ne duyulan ilginin evrenselliğini kanıtladı.
Yapıtın bu başarısını taçlandırmak için üç kısmı bir araya getiren bu özel, tek cilt edisyonu sunuyoruz: Hem hâlâ okumamış, "okuyacak olanlar" için, hem de bu güzel kitabın kütüphanenizde gelecek kuşaklara devrolacak kadar kalıcı olması için Yüzüklerin Efendisi yirminci yüzyılın en çok okunan yüz kitabı arasında en başta geliyor; bilimkurgu, fantazi, polisiye, best-seller ya da ana akım demeden, tüm edebiyat türleri arasındaki tartışmasız bir önderliğe sahip. Bir açıdan bakarsanız bir fantezi romanı, başka bir açıdan baktığınızda, insanlık durumu, sorumluluk, iktidar ve savaş üzerine bir roman. Bir yolculuk, bir büyüme öyküsü; fedakârlık ve dostluk üzerine, hırs ihanet üzerine bir roman.
', N'http://www.sanalkomisyoncu.com/wp-content/uploads/2017/11/yuzuklerin-efendisi-yuzuk-kardesligi-tolkien.jpg', CAST(N'2019-06-23T20:46:19.9835311' AS DateTime2), 1, N'c9706e01-3473-4bf8-a92a-56f283e75a17', 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Summary], [Content], [Picture], [CreationDate], [CategoryId], [UserId], [ReadCount], [Voting], [IsActive]) VALUES (6, N'Esaretin Bedeli', N'Esaretin Bedeli, Andy ve Red isimli iki mahkumun parmaklıklar ardında kurdukları dünyanın hikayesini anlatıyor. Andy Dufresne, genç ve başarılı bir bankerdir. Karısını ve karısının sevgilisini öldürmek suçundan yargılanır ve ömür boyu hapis cezası alır. ', N'Esaretin Bedeli, Andy ve Red isimli iki mahkumun parmaklıklar ardında kurdukları dünyanın hikayesini anlatıyor. Andy Dufresne, genç ve başarılı bir bankerdir. Karısını ve karısının sevgilisini öldürmek suçundan yargılanır ve ömür boyu hapis cezası alır. Shawsank Hapishanesi''nde dayak, işkence, tecavüz, her türlü durum yaşanmaktadır fakat Andy gene de hayata bağlı ve iyimserdir. Bu tutumu etrafındakileri de etkiler. Andy umutlu bakış açısıyla çevresindeki tüm mahkumları, parmaklıklar arkasında bile özgür bir yaşam olabileceğine inandırır. Andy''nin bu çabalarına ortak olacak bir arkadaşı da olacaktır: Red.Bir Stephen King uyarlaması olan filmde Morgan Freeman ve Tim Robbins başrolde. Film, 1995''te, aralarında en iyi film adaylığı da olmak üzere tam 7 dalda Oscar''a aday gösterildi.', N'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', CAST(N'2019-06-24T09:08:40.6281846' AS DateTime2), 5, N'80e0a01d-a909-4e6a-8e33-6e2bf1e73f2f', 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Summary], [Content], [Picture], [CreationDate], [CategoryId], [UserId], [ReadCount], [Voting], [IsActive]) VALUES (8, N'9.senfoni', N'beethoven', NULL, N'data:image/jpeg;base64,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', CAST(N'2019-06-24T10:31:30.9800682' AS DateTime2), 3, N'80e0a01d-a909-4e6a-8e33-6e2bf1e73f2f', 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Summary], [Content], [Picture], [CreationDate], [CategoryId], [UserId], [ReadCount], [Voting], [IsActive]) VALUES (9, N'Esaretin Bedeli', N'Esaretin Bedeli, Andy ve Red isimli iki mahkumun parmaklıklar ardında kurdukları dünyanın hikayesini anlatıyor. Andy Dufresne, genç ve başarılı bir bankerdir. Karısını ve karısının sevgilisini öldürmek suçundan yargılanır ve ömür boyu hapis cezası alır. Shawsank Hapishanesi''nde dayak, işkence, tecavüz, her türlü durum yaşanmaktadır fakat Andy gene de hayata bağlı ve iyimserdir. Bu tutumu etrafındakileri de etkiler. Andy umutlu bakış açısıyla çevresindeki tüm mahkumları, parmaklıklar arkasında bile özgür bir yaşam olabileceğine inandırır. Andy''nin bu çabalarına ortak olacak bir arkadaşı da olacaktır: Red.Bir Stephen King uyarlaması olan filmde Morgan Freeman ve Tim Robbins başrolde. Film, 1995''te, aralarında en iyi film adaylığı da olmak üzere tam 7 dalda Oscar''a aday gösterildi.', NULL, N'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', CAST(N'2019-06-24T10:33:21.2313340' AS DateTime2), 5, N'80e0a01d-a909-4e6a-8e33-6e2bf1e73f2f', 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Summary], [Content], [Picture], [CreationDate], [CategoryId], [UserId], [ReadCount], [Voting], [IsActive]) VALUES (10, N'bos', N'klsfh', N'fs', N'http://www.sanalkomisyoncu.com/wp-content/uploads/2017/11/yuzuklerin-efendisi-yuzuk-kardesligi-tolkien.jpg', CAST(N'2019-06-24T19:56:28.1965027' AS DateTime2), 3, N'80e0a01d-a909-4e6a-8e33-6e2bf1e73f2f', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 25.6.2019 18:07:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 25.6.2019 18:07:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_PostId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_PostId] ON [dbo].[Comments]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Comments_UserId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_UserId] ON [dbo].[Comments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Posts_CategoryId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_Posts_CategoryId] ON [dbo].[Posts]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Posts_UserId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_Posts_UserId] ON [dbo].[Posts]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostTags_PostId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_PostTags_PostId] ON [dbo].[PostTags]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostTags_TagId]    Script Date: 25.6.2019 18:07:39 ******/
CREATE NONCLUSTERED INDEX [IX_PostTags_TagId] ON [dbo].[PostTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Birthday]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts_PostId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Categories_CategoryId]
GO
ALTER TABLE [dbo].[PostTags]  WITH CHECK ADD  CONSTRAINT [FK_PostTags_Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostTags] CHECK CONSTRAINT [FK_PostTags_Posts_PostId]
GO
ALTER TABLE [dbo].[PostTags]  WITH CHECK ADD  CONSTRAINT [FK_PostTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostTags] CHECK CONSTRAINT [FK_PostTags_Tags_TagId]
GO
USE [master]
GO
ALTER DATABASE [MyBlog] SET  READ_WRITE 
GO

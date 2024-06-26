USE [DbFDHotelsProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2.04.2024 08:02:00 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [nvarchar](max) NULL,
	[Title2] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[RoomCount] [int] NOT NULL,
	[StaffCount] [int] NOT NULL,
	[CustomerCount] [int] NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
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
	[Country] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[WorkDepartment] [nvarchar](max) NULL,
	[WorkLocationID] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Checkin] [datetime2](7) NOT NULL,
	[Checkout] [datetime2](7) NOT NULL,
	[AdultCount] [nvarchar](max) NULL,
	[ChildCount] [nvarchar](max) NULL,
	[RoomCount] [nvarchar](max) NULL,
	[SpecialRequest] [nvarchar](max) NULL,
	[Dexcription] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[MessageCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guests]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guests](
	[GuestID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
 CONSTRAINT [PK_Guests] PRIMARY KEY CLUSTERED 
(
	[GuestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageCategories]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageCategories](
	[MessageCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[MessageCategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MessageCategories] PRIMARY KEY CLUSTERED 
(
	[MessageCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomNumber] [nvarchar](max) NULL,
	[RoomCoverImage] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[BedCount] [nvarchar](max) NULL,
	[BathCount] [nvarchar](max) NULL,
	[Wifi] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SendMessages]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SendMessages](
	[SendMessageID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiverName] [nvarchar](max) NULL,
	[ReceiverMail] [nvarchar](max) NULL,
	[SenderName] [nvarchar](max) NULL,
	[SenderMail] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SendMessages] PRIMARY KEY CLUSTERED 
(
	[SendMessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceIcon] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[SocialMedia1] [nvarchar](max) NULL,
	[SocialMedia2] [nvarchar](max) NULL,
	[SocialMedia3] [nvarchar](max) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscribes]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscribes](
	[SubscribeID] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Subscribes] PRIMARY KEY CLUSTERED 
(
	[SubscribeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkLocations]    Script Date: 2.04.2024 08:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkLocations](
	[WorkLocationID] [int] IDENTITY(1,1) NOT NULL,
	[WorkLocationName] [nvarchar](max) NULL,
	[WorkLocationCity] [nvarchar](max) NULL,
 CONSTRAINT [PK_WorkLocations] PRIMARY KEY CLUSTERED 
(
	[WorkLocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240314153652_mig1', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240317132053_mig_add_identity', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240317160348_mig_identity_remove', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240317160459_mig_identity_again', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240318214740_mig_add_about', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240319234352_mig_add_booking', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240322063412_mig_add_guest', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240324144629_mig_add_contact', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240326092601_mig_add_sendMessage', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240329050813_mig_add_messageCategory', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240330032448_mig_add_workLocation', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240401045527_mig_add_booking_city_country', N'8.0.3')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutID], [Title1], [Title2], [Content], [RoomCount], [StaffCount], [CustomerCount]) VALUES (1, N'FDOtel''e', N'Hoşgeldiniz', N'Eşsiz Bursa Manzarası içinde yeni gün uyanacağınız harika kahvaltısı, muhteşem doğası ve tertemiz havası ile tarifi olmayan eşsiz bir tatil sizi bekliyor.', 3, 5, 7)
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Member', N'MEMBER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'Admin', N'ADMIN', N'7c0f4e23-2b0c-41a2-9ec1-d904c392f7a1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (4, N'Visitor', N'VISITOR', NULL)
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (4, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (3, 3)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (3, 4)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (4, 4)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [City], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Country], [Gender], [ImageUrl], [WorkDepartment], [WorkLocationID]) VALUES (3, N'furkan', N'Dal', N'Bursa', N'furkan1', N'FURKAN1', N'furkan@gmail.com', N'FURKAN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEM38pa9zfE1tEKhE1931d5RSeIG0sXikFltFzGkdwPhK5E85Fibd5DTJbrAjLdDAkA==', N'QB4ZTXMZNWJWPR247IH37DUJNRVARSFT', N'a5525c09-ac8d-4998-9f75-e096d7acafe0', NULL, 0, 0, NULL, 1, 0, N'Türkiye', N'Erkek', N'/adminweb/images/avatar/1.jpg', NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [City], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Country], [Gender], [ImageUrl], [WorkDepartment], [WorkLocationID]) VALUES (4, N'furkannn', N'dal', N'Bursa', N'furkan2', N'FURKAN2', N'deneme@gmail.com', N'DENEME@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFvvJ4xyq8WzUtCr4Rz0Q8OpuUmx4RDfY2Sil3drhNUGDnolaHIiC0BvfzsDyERxtg==', N'X7YXXYLQ6C4SNDKRDBEVSG5N7K5SITWN', N'a7b42d48-45c7-4580-bdf7-1ca56b870233', NULL, 0, 0, NULL, 1, 0, N'Türkiye', N'Erkek', N'/adminweb/images/avatar/2.jpg', NULL, 2)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([BookingID], [Name], [Mail], [Checkin], [Checkout], [AdultCount], [ChildCount], [RoomCount], [SpecialRequest], [Dexcription], [Status], [City], [Country]) VALUES (1, N'Ali Yıldız', N'deneme11@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'2', N'2', N'1', N'test', NULL, N'Onaylandı', N'Bursa', N'Türkiye')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Mail], [Checkin], [Checkout], [AdultCount], [ChildCount], [RoomCount], [SpecialRequest], [Dexcription], [Status], [City], [Country]) VALUES (2, N'furkan', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'1', N'1', N'1', NULL, NULL, N'İptal Edildi', N'Bursa', N'Türkiye')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Mail], [Checkin], [Checkout], [AdultCount], [ChildCount], [RoomCount], [SpecialRequest], [Dexcription], [Status], [City], [Country]) VALUES (3, N'MAyşe Yılmaz', N'ayse@gmail.com', CAST(N'2024-10-03T23:54:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'2', N'1', N'1', N'yok', NULL, N'Müşteri Aranacak', N'Paris', N'Fransa')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Mail], [Checkin], [Checkout], [AdultCount], [ChildCount], [RoomCount], [SpecialRequest], [Dexcription], [Status], [City], [Country]) VALUES (4, N'furkandal', N'furkan1@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'2', N'1', N'2', N'yok', NULL, N'İptal Edildi', N'Viyana', N'Avusturya')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Mail], [Checkin], [Checkout], [AdultCount], [ChildCount], [RoomCount], [SpecialRequest], [Dexcription], [Status], [City], [Country]) VALUES (5, N'betüll', N'beto@gmail.com', CAST(N'2024-01-04T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-04T00:00:00.0000000' AS DateTime2), N'2', N'1', N'1', N'yok', NULL, N'Onay Bekliyor', N'Budapeşte', N'Macaristan')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Mail], [Checkin], [Checkout], [AdultCount], [ChildCount], [RoomCount], [SpecialRequest], [Dexcription], [Status], [City], [Country]) VALUES (6, N'ahmet', N'ahmet@gmail.com', CAST(N'2024-01-04T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-04T00:00:00.0000000' AS DateTime2), N'2', N'2', N'2', N'yok', NULL, N'Onaylandı', N'Atina', N'Yunanistan')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Mail], [Checkin], [Checkout], [AdultCount], [ChildCount], [RoomCount], [SpecialRequest], [Dexcription], [Status], [City], [Country]) VALUES (7, N'yasin', N'yasin@gmail.com', CAST(N'2024-01-04T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-04T00:00:00.0000000' AS DateTime2), N'2', N'2', N'1', N'yok', NULL, N'Onay Bekliyor', N'Yozgat', N'Türkiye')
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [Name], [Mail], [Subject], [Message], [Date], [MessageCategoryID]) VALUES (1, N'furkan', N'deneme@gmail.com', N'iş başvurusu', N'sizinle çalışmak isterim cv mi ekte bulabilirsiniz', CAST(N'2024-03-30T00:00:00.0000000' AS DateTime2), 5)
INSERT [dbo].[Contacts] ([ContactID], [Name], [Mail], [Subject], [Message], [Date], [MessageCategoryID]) VALUES (2, N'furkan', N'denemeee1@gmail.com', N'İş Başvurusu', N'Merhaba sizinle çalışmak isterim cv mi ekte bırakıyorum.', CAST(N'2024-03-30T00:00:00.0000000' AS DateTime2), 5)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Guests] ON 

INSERT [dbo].[Guests] ([GuestID], [Name], [Surname], [City]) VALUES (1, N'Ahmet', N'Yılmaz', N'Adana')
INSERT [dbo].[Guests] ([GuestID], [Name], [Surname], [City]) VALUES (2, N'Merve', N'Yılmaz', N'Adana')
INSERT [dbo].[Guests] ([GuestID], [Name], [Surname], [City]) VALUES (3, N'Zeynep', N'Neşe', N'Kayseri')
INSERT [dbo].[Guests] ([GuestID], [Name], [Surname], [City]) VALUES (4, N'Enver', N'Açıkgöz', N'Ankara')
INSERT [dbo].[Guests] ([GuestID], [Name], [Surname], [City]) VALUES (5, N'Kerem', N'Açık', N'Trabzon')
INSERT [dbo].[Guests] ([GuestID], [Name], [Surname], [City]) VALUES (6, N'Cemal', N'Kapalı', N'Bursa')
INSERT [dbo].[Guests] ([GuestID], [Name], [Surname], [City]) VALUES (7, N'Furkan', N'Dal', N'Bursa')
SET IDENTITY_INSERT [dbo].[Guests] OFF
GO
SET IDENTITY_INSERT [dbo].[MessageCategories] ON 

INSERT [dbo].[MessageCategories] ([MessageCategoryID], [MessageCategoryName]) VALUES (1, N'Teşekkür')
INSERT [dbo].[MessageCategories] ([MessageCategoryID], [MessageCategoryName]) VALUES (2, N'Şikayet')
INSERT [dbo].[MessageCategories] ([MessageCategoryID], [MessageCategoryName]) VALUES (3, N'Öneri')
INSERT [dbo].[MessageCategories] ([MessageCategoryID], [MessageCategoryName]) VALUES (4, N'Talep')
INSERT [dbo].[MessageCategories] ([MessageCategoryID], [MessageCategoryName]) VALUES (5, N'İş Görüşmesi')
INSERT [dbo].[MessageCategories] ([MessageCategoryID], [MessageCategoryName]) VALUES (6, N'Diğer(Belirtiniz)')
SET IDENTITY_INSERT [dbo].[MessageCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [RoomCoverImage], [Price], [Title], [BedCount], [BathCount], [Wifi], [Description]) VALUES (1, N'101', N'/hotel-html-template/img/room-1.jpg', 750, N'Tek Kişilik Oda', N'1', N'1', N'Var', N'Doğanın iöinde doğaya zarar vermeden oluşturulan alanlarda tek kişilik huzur dolu bir an.')
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [RoomCoverImage], [Price], [Title], [BedCount], [BathCount], [Wifi], [Description]) VALUES (2, N'110', N'/hotel-html-template/img/room-2.jpg', 1250, N'Çift Kişilik Oda', N'1', N'1', N'Var', N'Eşinizle veya arkadaşınız ile beraber keyifli bir tatil geçirebileceğiniz çift kişilik odamız.')
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [RoomCoverImage], [Price], [Title], [BedCount], [BathCount], [Wifi], [Description]) VALUES (4, N'103', N'/hotel-html-template/img/room-3.jpg', 1450, N'Aile Odası', N'2', N'2', N'Var', N'Ailecek doya doya huzurlu bir tatil için aile odamız sizlerin hizmetine hazır.')
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[SendMessages] ON 

INSERT [dbo].[SendMessages] ([SendMessageID], [ReceiverName], [ReceiverMail], [SenderName], [SenderMail], [Title], [Content], [Date]) VALUES (1, NULL, N'deneme', N'FDadmin', N'FDadmin@gmail.com', NULL, NULL, CAST(N'2024-03-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[SendMessages] ([SendMessageID], [ReceiverName], [ReceiverMail], [SenderName], [SenderMail], [Title], [Content], [Date]) VALUES (2, N'Furkan Daloğlu', N'furkandaloglu@hotmail.com', N'FDadmin', N'FDadmin@gmail.com', N'Şikayet', N'Şikayetiniz alınmıştır. Bizi tercih ettiğiniz için teşekkür ederiz', CAST(N'2024-03-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[SendMessages] ([SendMessageID], [ReceiverName], [ReceiverMail], [SenderName], [SenderMail], [Title], [Content], [Date]) VALUES (3, N'Furkan Daloğlu', N'dene1', N'FDadmin', N'FDadmin@gmail.com', N'Şikayet', N'deneme mesajıııııııııııııııııııı', CAST(N'2024-03-29T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SendMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([ServiceID], [ServiceIcon], [Title], [Description]) VALUES (1, N'fa fa-hotel fa-2x text-primary', N'Odalarımız', N'Odalarımız alanında uzman dekoratörler tarafından sizin konforunuz için tasarlandı.')
INSERT [dbo].[Services] ([ServiceID], [ServiceIcon], [Title], [Description]) VALUES (2, N'fa fa-utensils fa-2x text-primary', N'Yemek & Restorant', N'Açık büfe restoranlarımız ile otelimizde her an usta şeflerimizin yemeklerine ulaşabilirsiniz.')
INSERT [dbo].[Services] ([ServiceID], [ServiceIcon], [Title], [Description]) VALUES (5, N'fa fa-spa fa-2x text-primary', N'Spa & Firness', N'Spa, sauna buhar odası ve fitness salonlarımız ile dinlenirken sağlıklı birkaç gün geçirebilirsiniz.')
INSERT [dbo].[Services] ([ServiceID], [ServiceIcon], [Title], [Description]) VALUES (6, N'fa fa-swimmer fa-2x text-primary', N'Spor & Oyunlar', N'Hem çocuklar hem de yetişkinler için spor ve oyun gösterilerimiz her akşam mevcuttur.')
INSERT [dbo].[Services] ([ServiceID], [ServiceIcon], [Title], [Description]) VALUES (7, N'fa fa-glass-cheers fa-2x text-primary', N'Kutlamalar & Eğlence', N'Snack barımızda 7/24 alkollü ve alkolsüz içeceklerimize ulaşabilirsiniz. Hepsi ikramımızdır.')
INSERT [dbo].[Services] ([ServiceID], [ServiceIcon], [Title], [Description]) VALUES (8, N'fa fa-dumbbell fa-2x text-primary', N'Yoga & Meditasyon', N'Uzman yoga ve meditasyon hocalarımız ile her akşam 20:00''da etkinliklerimiz sizleri bekliyor.')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([StaffID], [Name], [Title], [SocialMedia1], [SocialMedia2], [SocialMedia3]) VALUES (3, N'Cem Yılmaz', N'House Keaper', N'/hotel-html-template/img/team-1.jpg', N'string', N'string')
INSERT [dbo].[Staff] ([StaffID], [Name], [Title], [SocialMedia1], [SocialMedia2], [SocialMedia3]) VALUES (6, N'Furkan Daloğlu', N'Genel Müdür', N'/hotel-html-template/img/team-2.jpg', N'eee', N'ee')
INSERT [dbo].[Staff] ([StaffID], [Name], [Title], [SocialMedia1], [SocialMedia2], [SocialMedia3]) VALUES (7, N'Kemal Sunal', N'Dış İlişkiler', N'/hotel-html-template/img/team-3.jpg', N'dasdas', N'adasd')
INSERT [dbo].[Staff] ([StaffID], [Name], [Title], [SocialMedia1], [SocialMedia2], [SocialMedia3]) VALUES (9, N'Kıvırcık Ali', N'Müzisyen', N'/hotel-html-template/img/team-4.jpg', N'dasdad', N'asdas')
INSERT [dbo].[Staff] ([StaffID], [Name], [Title], [SocialMedia1], [SocialMedia2], [SocialMedia3]) VALUES (10, N'Betül', N'Müdür Yardımcısı', N'/hotel-html-template/img/team-1.jpg', N'yok', N'yokk')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscribes] ON 

INSERT [dbo].[Subscribes] ([SubscribeID], [Mail]) VALUES (1, N'Deneme1@gmail.com')
INSERT [dbo].[Subscribes] ([SubscribeID], [Mail]) VALUES (2, N'deneme2@gmail.com')
SET IDENTITY_INSERT [dbo].[Subscribes] OFF
GO
SET IDENTITY_INSERT [dbo].[Testimonials] ON 

INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Description], [Image]) VALUES (1, N'Ayşenur Sarı', N'İşletme Müdürü', N'Ailemle birlikte her tatil mutlaka kaldığım bir otel. Tavsiye ederim. Doğayla iç içe bir otel görebilmek gerçekten son zamanlarda çok zor.', N'/hotel-html-template/img/testimonial-1.jpg')
INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Description], [Image]) VALUES (2, N'Furkan Daloğlu', N'Mağaza Ceousu', N'Hem restoranı, hem kahbaltısı, hem spa ve diğer hizmetleri ile on numara beş yıldız bir otel. Fırsatı olan mutlaka gelip birkaç gün konaklamalı.', N'/hotel-html-template/img/testimonial-2.jpg')
INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Description], [Image]) VALUES (4, N'Mehmet Mehmetoğlu', N'İşletme Yöneticisi', N'İş seyehatlerimden birinde tanıştığım, akabinde önce eşim sonra eşim ve kendi ailelerimizle geldiğimiz enfes otel, çalışanlar ço ktatlı insanlar.', N'/hotel-html-template/img/testimonial-3.jpg')
INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Description], [Image]) VALUES (5, N'Zeynep Çınar', N'Genel Koordinatör', N'Yaz tatilinden ziyade sonbahar mevsiminde gelinip kalınmalı. Eşsiz orman manzarası içinde kahvenizi yudumlamanın keyfini çıkarın ve rahatlayın.', N'/hotel-html-template/img/testimonial-4.jpg')
SET IDENTITY_INSERT [dbo].[Testimonials] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkLocations] ON 

INSERT [dbo].[WorkLocations] ([WorkLocationID], [WorkLocationName], [WorkLocationCity]) VALUES (1, N'Bursa FDHotel', N'Bursa')
INSERT [dbo].[WorkLocations] ([WorkLocationID], [WorkLocationName], [WorkLocationCity]) VALUES (2, N'Yıldırım FDHotel', N'Bursa')
INSERT [dbo].[WorkLocations] ([WorkLocationID], [WorkLocationName], [WorkLocationCity]) VALUES (3, N'Osmangazi FDHotel', N'Bursa')
INSERT [dbo].[WorkLocations] ([WorkLocationID], [WorkLocationName], [WorkLocationCity]) VALUES (4, N'Kadıköy FDHotel', N'İstanbul')
INSERT [dbo].[WorkLocations] ([WorkLocationID], [WorkLocationName], [WorkLocationCity]) VALUES (5, N'Kaş FDHotel', N'Antalya')
SET IDENTITY_INSERT [dbo].[WorkLocations] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [WorkLocationID]
GO
ALTER TABLE [dbo].[Contacts] ADD  DEFAULT ((0)) FOR [MessageCategoryID]
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
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_WorkLocations_WorkLocationID] FOREIGN KEY([WorkLocationID])
REFERENCES [dbo].[WorkLocations] ([WorkLocationID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_WorkLocations_WorkLocationID]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_MessageCategories_MessageCategoryID] FOREIGN KEY([MessageCategoryID])
REFERENCES [dbo].[MessageCategories] ([MessageCategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_MessageCategories_MessageCategoryID]
GO

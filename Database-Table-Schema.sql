USE [MMTShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 26-09-2021 04:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26-09-2021 04:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [uniqueidentifier] NOT NULL,
	[CategoryID] [uniqueidentifier] NULL,
	[SKU] [bigint] NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](2000) NULL,
	[Price] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryID], [Name], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'2cfbac59-3229-46ce-88ba-4994ea54c75b', N'Electronics', 1, 0, CAST(N'2021-09-25T23:27:24.290' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryID], [Name], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'685335e8-ab19-4a4d-a6d9-6bae90ac88bd', N'Fitness', 1, 0, CAST(N'2021-09-25T23:27:49.860' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryID], [Name], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'8e610f8c-a3d3-4c0f-b6a7-9e1b44a011f6', N'Home', 1, 0, CAST(N'2021-09-25T23:26:35.147' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryID], [Name], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'4bd1512f-f56d-47dd-8678-a4999b046679', N'Toys', 1, 0, CAST(N'2021-09-25T23:28:18.340' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryID], [Name], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'3e1fc218-82a4-4a3d-9c99-f3df5f68f607', N'Garden', 1, 0, CAST(N'2021-09-25T23:27:02.150' AS DateTime), NULL)
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'553582de-3a23-4f59-8129-0cac7d1818af', N'4bd1512f-f56d-47dd-8678-a4999b046679', 50001, N'Webby Walkie Talkie', N'Webby Walkie Talkie Toy with Range Upto 100 Feet (Multi-Color)', CAST(860.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:40:17.463' AS DateTime), NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'9e888559-9f05-4756-a02f-40487195ad0b', N'3e1fc218-82a4-4a3d-9c99-f3df5f68f607', 20000, N'Kraft Seeds', N'test craft seeds', CAST(99.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:32:10.827' AS DateTime), NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'545ed2fd-88d1-4729-8505-5baadf3b2b8e', N'2cfbac59-3229-46ce-88ba-4994ea54c75b', 30001, N'Keyboard', N'test keyboard', CAST(500.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:34:55.497' AS DateTime), NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'154be3ef-c724-4898-b7d1-6836093b6da1', N'685335e8-ab19-4a4d-a6d9-6bae90ac88bd', 40001, N'Wheel Roller', N'Sunshine Ab Wheel Roller with Free Knee Mat and Anti-Slip Handles and Storage Box', CAST(799.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:37:28.117' AS DateTime), NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'17d9bec3-c595-4796-b6af-a76ef5e47d85', N'3e1fc218-82a4-4a3d-9c99-f3df5f68f607', 20001, N'Garden Solar LED', N'test solor des', CAST(489.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:33:00.700' AS DateTime), NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'34cf1b7e-cb79-402c-924f-ba64360b6d15', N'2cfbac59-3229-46ce-88ba-4994ea54c75b', 30000, N'Headphones', N'test headphones', CAST(1299.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:33:57.120' AS DateTime), NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'69124ffd-f070-467b-b5c8-bb94f3afbfb9', N'8e610f8c-a3d3-4c0f-b6a7-9e1b44a011f6', 10001, N'Home Cube Multipurpose', N'test des', CAST(199.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:30:16.027' AS DateTime), NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'e4cf6a74-e255-479a-a769-c66b66485569', N'4bd1512f-f56d-47dd-8678-a4999b046679', 50000, N'Super Toy E-Note Pad', N'SUPER TOY LCD Writing Tablet 8.5Inch E-Note Pad', CAST(499.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:39:06.077' AS DateTime), NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'a1f7f26f-2d89-49ef-a1c9-f91527726198', N'8e610f8c-a3d3-4c0f-b6a7-9e1b44a011f6', 10000, N'Bedsheet', N'test description for bedsheet', CAST(100.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:28:58.217' AS DateTime), NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [SKU], [Name], [Description], [Price], [IsActive], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (N'9eb7931d-7b02-47de-9957-fc84a077c5e3', N'685335e8-ab19-4a4d-a6d9-6bae90ac88bd', 40000, N'Spike Tummy Trimmer', N'Spike Tummy Trimmer Ab Exerciser for Men and Women Waist Trimming, Bicep, Body Toner Yellow…', CAST(111.00 AS Decimal(18, 2)), 1, 0, CAST(N'2021-09-25T23:35:58.183' AS DateTime), NULL)
GO

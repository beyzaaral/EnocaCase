USE [EnocaCase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6.03.2023 12:48:13 ******/
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
/****** Object:  Table [dbo].[Companies]    Script Date: 6.03.2023 12:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[OrderStatus] [bit] NOT NULL,
	[OrderStartTime] [datetime2](7) NOT NULL,
	[OrderFinishTime] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyOrder]    Script Date: 6.03.2023 12:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyOrder](
	[CompaniesId] [int] NOT NULL,
	[OrdersId] [int] NOT NULL,
 CONSTRAINT [PK_CompanyOrder] PRIMARY KEY CLUSTERED 
(
	[CompaniesId] ASC,
	[OrdersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 6.03.2023 12:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrdersId] [int] NOT NULL,
	[ProductsId] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[OrdersId] ASC,
	[ProductsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6.03.2023 12:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrdersName] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6.03.2023 12:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Stock] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230305170706_beyza', N'7.0.3')
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [OrderId], [OrderStatus], [OrderStartTime], [OrderFinishTime], [Name], [CreatedDate]) VALUES (1, 0, 0, CAST(N'2023-03-05T17:09:52.0480000' AS DateTime2), CAST(N'2023-03-05T17:09:52.0480000' AS DateTime2), N'beyza', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([Id], [OrderId], [OrderStatus], [OrderStartTime], [OrderFinishTime], [Name], [CreatedDate]) VALUES (2, 0, 1, CAST(N'2023-03-05T17:09:30.5110000' AS DateTime2), CAST(N'2023-03-05T17:09:30.5110000' AS DateTime2), N'beyza', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([Id], [OrderId], [OrderStatus], [OrderStartTime], [OrderFinishTime], [Name], [CreatedDate]) VALUES (3, 0, 0, CAST(N'2023-03-05T20:26:45.0950000' AS DateTime2), CAST(N'2023-03-05T20:26:45.0950000' AS DateTime2), N'fghjf', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CompanyId], [ProductId], [OrdersName], [OrderDate], [Name], [CreatedDate]) VALUES (1, 0, 0, N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [CompanyId], [ProductId], [OrdersName], [OrderDate], [Name], [CreatedDate]) VALUES (2, 3, 8, N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'ghj', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CompanyId], [ProductName], [Stock], [Price], [Name], [CreatedDate]) VALUES (2, 1, N'koltuk', 20, 50, N'esya', CAST(N'2023-03-05T17:07:30.6340000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [CompanyId], [ProductName], [Stock], [Price], [Name], [CreatedDate]) VALUES (3, 1, N'koltuk', 6, 20, N'esya', CAST(N'2023-03-05T17:10:17.3170000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [CompanyId], [ProductName], [Stock], [Price], [Name], [CreatedDate]) VALUES (4, 1, N'fhgf', 2, 56, N'fth', CAST(N'2023-03-05T20:27:01.9400000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[CompanyOrder]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOrder_Companies_CompaniesId] FOREIGN KEY([CompaniesId])
REFERENCES [dbo].[Companies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyOrder] CHECK CONSTRAINT [FK_CompanyOrder_Companies_CompaniesId]
GO
ALTER TABLE [dbo].[CompanyOrder]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOrder_Orders_OrdersId] FOREIGN KEY([OrdersId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyOrder] CHECK CONSTRAINT [FK_CompanyOrder_Orders_OrdersId]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Orders_OrdersId] FOREIGN KEY([OrdersId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Orders_OrdersId]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Products_ProductsId] FOREIGN KEY([ProductsId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Products_ProductsId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Companies_CompanyId]
GO

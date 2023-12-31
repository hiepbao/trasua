USE [WebTraSua]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/17/2023 3:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/17/2023 3:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CusID] [int] IDENTITY(1,1) NOT NULL,
	[CusPhone] [int] NULL,
	[CusName] [varchar](50) NULL,
	[CusPass] [varchar](50) NULL,
	[CusEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/17/2023 3:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NULL,
	[CusID] [int] NULL,
	[Addres] [nvarchar](50) NULL,
	[TotalValue] [int] NULL,
	[ProID] [int] NULL,
	[QuantityOrder] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/17/2023 3:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProID] [int] IDENTITY(1,1) NOT NULL,
	[ProName] [nvarchar](50) NULL,
	[ProImg] [varchar](max) NULL,
	[DeScription] [nvarchar](max) NULL,
	[CreatedDate] [date] NULL,
	[CatID] [int] NULL,
	[SupID] [int] NULL,
	[SizeID] [int] NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 11/17/2023 3:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [int] NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppelier]    Script Date: 11/17/2023 3:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppelier](
	[SupID] [int] IDENTITY(1,1) NOT NULL,
	[SupName] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Suppelier] PRIMARY KEY CLUSTERED 
(
	[SupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/17/2023 3:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [varchar](50) NULL,
	[Password] [varchar](max) NULL,
	[Role] [varchar](10) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CatID], [CatName]) VALUES (1, N'trân châu1')
INSERT [dbo].[Category] ([CatID], [CatName]) VALUES (2, N'không')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CusID], [CusPhone], [CusName], [CusPass], [CusEmail]) VALUES (1, 12345, N'cus1', N'1', N'a@gmail.com')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderDate], [CusID], [Addres], [TotalValue], [ProID], [QuantityOrder]) VALUES (2, NULL, 1, N'asc', 123, 2, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CusID], [Addres], [TotalValue], [ProID], [QuantityOrder]) VALUES (3, NULL, 1, N'asd', 456, 3, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CusID], [Addres], [TotalValue], [ProID], [QuantityOrder]) VALUES (4, CAST(N'2023-11-17' AS Date), 1, N'asd', NULL, 2, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CusID], [Addres], [TotalValue], [ProID], [QuantityOrder]) VALUES (5, CAST(N'2023-11-17' AS Date), 1, N'asd', 123000, 2, 123)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CusID], [Addres], [TotalValue], [ProID], [QuantityOrder]) VALUES (6, CAST(N'2023-11-17' AS Date), 1, N'asd', 246000, 3, 123)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProID], [ProName], [ProImg], [DeScription], [CreatedDate], [CatID], [SupID], [SizeID], [Price], [Quantity]) VALUES (2, N'hongtra', N'https://abcsport.com.vn/image/catalog/2023/T01/mot-ly-tra-sua-bao-nhieu-calo-1.jpg', N'ngon', NULL, 1, 2, 4, 1000, 20)
INSERT [dbo].[Product] ([ProID], [ProName], [ProImg], [DeScription], [CreatedDate], [CatID], [SupID], [SizeID], [Price], [Quantity]) VALUES (3, N'hoanhai', N'https://abcsport.com.vn/image/catalog/2023/T01/mot-ly-tra-sua-bao-nhieu-calo-1.jpg', N'khong', NULL, 2, 1, 5, 2000, 30)
INSERT [dbo].[Product] ([ProID], [ProName], [ProImg], [DeScription], [CreatedDate], [CatID], [SupID], [SizeID], [Price], [Quantity]) VALUES (7, N'a1', N'https://abcsport.com.vn/image/catalog/2023/T01/mot-ly-tra-sua-bao-nhieu-calo-1.jpg', NULL, CAST(N'2023-11-17' AS Date), 1, 1, 4, NULL, NULL)
INSERT [dbo].[Product] ([ProID], [ProName], [ProImg], [DeScription], [CreatedDate], [CatID], [SupID], [SizeID], [Price], [Quantity]) VALUES (8, N'a2', N'https://abcsport.com.vn/image/catalog/2023/T01/mot-ly-tra-sua-bao-nhieu-calo-1.jpg', NULL, CAST(N'2023-11-17' AS Date), 1, 1, 4, NULL, NULL)
INSERT [dbo].[Product] ([ProID], [ProName], [ProImg], [DeScription], [CreatedDate], [CatID], [SupID], [SizeID], [Price], [Quantity]) VALUES (9, N'a3', N'https://s3-bucket.s3.cloud.cmctelecom.vn/1361517694/banners/1686033595-1678953962_z4186685627955_e9e1523596410b90b86e1ecb1e08cf78.jpg', NULL, CAST(N'2023-11-17' AS Date), 1, 1, 4, NULL, NULL)
INSERT [dbo].[Product] ([ProID], [ProName], [ProImg], [DeScription], [CreatedDate], [CatID], [SupID], [SizeID], [Price], [Quantity]) VALUES (10, N'a4', N'https://abcsport.com.vn/image/catalog/2023/T01/mot-ly-tra-sua-bao-nhieu-calo-1.jpg', NULL, CAST(N'2023-11-17' AS Date), 1, 1, 4, NULL, NULL)
INSERT [dbo].[Product] ([ProID], [ProName], [ProImg], [DeScription], [CreatedDate], [CatID], [SupID], [SizeID], [Price], [Quantity]) VALUES (11, N'a51', NULL, NULL, CAST(N'2023-11-17' AS Date), 1, 1, 4, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (4, 12)
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (5, 14)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppelier] ON 

INSERT [dbo].[Suppelier] ([SupID], [SupName], [Address]) VALUES (1, N'hongkong', N'asd')
INSERT [dbo].[Suppelier] ([SupID], [SupName], [Address]) VALUES (2, N'trungquoc', N'asd')
SET IDENTITY_INSERT [dbo].[Suppelier] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserName], [Password], [Role], [ID]) VALUES (N'com1', N'1', N'Admin', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CusID])
REFERENCES [dbo].[Customer] ([CusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ProID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product] FOREIGN KEY([CatID])
REFERENCES [dbo].[Category] ([CatID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Size]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Suppelier] FOREIGN KEY([SupID])
REFERENCES [dbo].[Suppelier] ([SupID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Suppelier]
GO

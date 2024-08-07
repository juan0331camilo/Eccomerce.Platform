/****** Object:  Table [dbo].[Order]    Script Date: 28/06/2024 07:54:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[CustomerEmail] [nvarchar](100) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Total] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 28/06/2024 07:54:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
	[Subtotal]  AS ([Quantity]*[UnitPrice]) PERSISTED,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 28/06/2024 07:54:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [CustomerName], [CustomerEmail], [OrderDate], [Total]) VALUES (1, N'Juan Camilo', N'juancamilo@gmail.com', CAST(N'2024-06-29T00:47:03.030' AS DateTime), CAST(251961.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (1, 1, 1, 2, CAST(194506.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (2, 1, 7, 1, CAST(57455.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (1, N'Handmade Concrete Table', N'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', CAST(97253.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (2, N'Small Fresh Chair', N'The Football Is Good For Training And Recreational Purposes', CAST(83444.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (3, N'Refined Cotton Table', N'Bostons most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', CAST(39326.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (4, N'Fantastic Concrete Bike', N'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', CAST(23739.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (5, N'Modern Rubber Fish', N'Bostons most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', CAST(34325.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (6, N'Bespoke Frozen Ball', N'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', CAST(14769.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (7, N'Small Fresh Salad', N'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', CAST(57455.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (8, N'Generic Fresh Chips', N'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', CAST(54603.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (9, N'Ergonomic Bronze Computer', N'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', CAST(34888.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (10, N'Fantastic Concrete Salad', N'Bostons most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', CAST(41656.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (11, N'Sleek Fresh Chicken', N'Bostons most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', CAST(85377.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (12, N'Licensed Concrete Bacon', N'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', CAST(29835.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (13, N'Modern Bronze Towels', N'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', CAST(88090.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (14, N'Oriental Granite Pants', N'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', CAST(45016.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (15, N'Ergonomic Plastic Salad', N'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', CAST(84420.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (16, N'Intelligent Rubber Cheese', N'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', CAST(92388.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (17, N'Licensed Cotton Bacon', N'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', CAST(81757.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (18, N'Intelligent Steel Salad', N'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', CAST(72948.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (19, N'Oriental Concrete Chicken', N'The Football Is Good For Training And Recreational Purposes', CAST(82895.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (20, N'Oriental Soft Cheese', N'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', CAST(21566.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (21, N'Bespoke Concrete Gloves', N'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', CAST(79592.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (22, N'Bespoke Steel Tuna', N'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', CAST(30431.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (23, N'Generic Steel Cheese', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(2563.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (24, N'Elegant Bronze Soap', N'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', CAST(26999.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (25, N'Bespoke Granite Shirt', N'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', CAST(6576.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (26, N'Unbranded Cotton Sausages', N'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', CAST(79449.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (27, N'Modern Steel Fish', N'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', CAST(73192.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (28, N'Incredible Fresh Towels', N'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', CAST(46201.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (29, N'Gorgeous Granite Chips', N'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', CAST(13814.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (30, N'Bespoke Rubber Chair', N'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', CAST(30756.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (31, N'Fantastic Soft Computer', N'Bostons most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', CAST(36264.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (32, N'Licensed Metal Tuna', N'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', CAST(68381.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (33, N'Handcrafted Granite Keyboard', N'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', CAST(79238.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (34, N'Fantastic Fresh Table', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(31923.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (35, N'Small Fresh Table', N'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', CAST(34837.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (36, N'Sleek Metal Fish', N'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', CAST(46228.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (37, N'Awesome Concrete Table', N'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', CAST(41499.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (38, N'Small Fresh Chair', N'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', CAST(52288.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (39, N'Recycled Bronze Mouse', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(53603.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (40, N'Oriental Cotton Car', N'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', CAST(80429.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (41, N'Awesome Wooden Table', N'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', CAST(18133.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (42, N'Practical Bronze Bacon', N'The Football Is Good For Training And Recreational Purposes', CAST(85881.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (43, N'Unbranded Rubber Computer', N'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', CAST(84966.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (44, N'Refined Wooden Chicken', N'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', CAST(90756.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (45, N'Gorgeous Wooden Tuna', N'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', CAST(51841.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (46, N'Gorgeous Cotton Car', N'Bostons most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', CAST(57922.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (47, N'Unbranded Rubber Soap', N'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', CAST(88488.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (48, N'Intelligent Bronze Tuna', N'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', CAST(32196.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (49, N'Small Fresh Ball', N'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', CAST(18448.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (50, N'Recycled Fresh Cheese', N'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', CAST(24850.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (51, N'Luxurious Granite Keyboard', N'Bostons most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', CAST(78372.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (52, N'Gorgeous Bronze Ball', N'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', CAST(19395.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (53, N'Licensed Wooden Cheese', N'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', CAST(9672.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (54, N'Unbranded Frozen Chair', N'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', CAST(80304.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (55, N'Refined Rubber Salad', N'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', CAST(21152.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (56, N'Generic Frozen Cheese', N'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', CAST(93603.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (57, N'Electronic Plastic Ball', N'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', CAST(77169.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (58, N'Sleek Soft Mouse', N'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', CAST(59194.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (59, N'Modern Frozen Chips', N'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', CAST(32845.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (60, N'Tasty Bronze Hat', N'The Football Is Good For Training And Recreational Purposes', CAST(18314.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (61, N'Gorgeous Granite Soap', N'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', CAST(33561.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (62, N'Modern Fresh Computer', N'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', CAST(43576.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (63, N'Unbranded Soft Shoes', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(64906.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (64, N'Elegant Cotton Towels', N'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', CAST(54728.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (65, N'Refined Granite Keyboard', N'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', CAST(79504.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (66, N'Oriental Metal Fish', N'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', CAST(33821.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (67, N'Sleek Metal Table', N'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', CAST(25047.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (68, N'Recycled Fresh Keyboard', N'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', CAST(92638.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (69, N'Awesome Cotton Cheese', N'Bostons most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', CAST(2179.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (70, N'Gorgeous Plastic Computer', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(19210.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (71, N'Elegant Wooden Car', N'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', CAST(13766.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (72, N'Ergonomic Steel Mouse', N'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', CAST(10534.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (73, N'Awesome Steel Chair', N'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', CAST(78233.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (74, N'Handmade Plastic Salad', N'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', CAST(36244.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (75, N'Sleek Fresh Gloves', N'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', CAST(7414.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (76, N'Gorgeous Wooden Chips', N'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', CAST(58075.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (77, N'Rustic Plastic Chicken', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(53319.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (78, N'Modern Frozen Car', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(57774.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (79, N'Rustic Concrete Salad', N'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', CAST(68541.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (80, N'Small Cotton Gloves', N'The Football Is Good For Training And Recreational Purposes', CAST(24499.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (81, N'Small Rubber Car', N'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', CAST(63105.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (82, N'Handmade Metal Keyboard', N'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', CAST(48108.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (83, N'Handcrafted Fresh Gloves', N'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', CAST(94504.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (84, N'Oriental Steel Pants', N'The Football Is Good For Training And Recreational Purposes', CAST(88203.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (85, N'Practical Bronze Keyboard', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(94992.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (86, N'Gorgeous Metal Towels', N'The Football Is Good For Training And Recreational Purposes', CAST(29671.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (87, N'Awesome Plastic Tuna', N'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', CAST(13684.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (88, N'Sleek Wooden Tuna', N'The Football Is Good For Training And Recreational Purposes', CAST(92094.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (89, N'Handcrafted Rubber Chair', N'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', CAST(40775.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (90, N'Luxurious Frozen Pizza', N'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', CAST(50992.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (91, N'Rustic Metal Gloves', N'The Football Is Good For Training And Recreational Purposes', CAST(58116.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (92, N'Small Wooden Hat', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(38092.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (93, N'Handmade Bronze Soap', N'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', CAST(24774.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (94, N'Incredible Concrete Bacon', N'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', CAST(49032.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (95, N'Modern Steel Table', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(39291.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (96, N'Unbranded Frozen Salad', N'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', CAST(23696.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (97, N'Licensed Soft Table', N'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', CAST(50702.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (98, N'Electronic Fresh Computer', N'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', CAST(45355.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (99, N'Incredible Plastic Soap', N'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', CAST(41621.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price]) VALUES (100, N'Awesome Bronze Hat', N'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', CAST(47135.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO

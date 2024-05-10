USE [ExampleSQL]
GO

/****** Object:  Table [dbo].[orders]    Script Date: 5/11/2024 2:30:29 AM ******/
DROP TABLE [dbo].[orders]
GO

/****** Object:  Table [dbo].[customers]    Script Date: 5/11/2024 2:30:29 AM ******/
DROP TABLE [dbo].[customers]
GO

/****** Object:  Table [dbo].[customers]    Script Date: 5/11/2024 2:30:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](20) NULL,
	[lname] [varchar](50) NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 5/11/2024 2:30:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NULL,
	[qty] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[customers] ON 
GO
INSERT [dbo].[customers] ([id], [fname], [lname]) VALUES (1, N'John Doe', N'john.doe@example.com')
GO
INSERT [dbo].[customers] ([id], [fname], [lname]) VALUES (2, N'Jane Smith', N'jane.smith@example.com')
GO
INSERT [dbo].[customers] ([id], [fname], [lname]) VALUES (3, N'Alice Johnson', N'alice.johnson@example.com')
GO
INSERT [dbo].[customers] ([id], [fname], [lname]) VALUES (4, N'Bob Williams', N'bob.williams@example.com')
GO
INSERT [dbo].[customers] ([id], [fname], [lname]) VALUES (5, N'Emma Brown', N'emma.brown@example.com')
GO
SET IDENTITY_INSERT [dbo].[customers] OFF
GO

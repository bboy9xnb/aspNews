USE [master]
GO
/****** Object:  Database [NewsPlush]    Script Date: 12/19/2018 10:11:06 PM ******/
CREATE DATABASE NewsPlush
 
GO

CREATE TABLE [dbo].[Cars](
	[carId] [nvarchar](50) NOT NULL,
	[carname] [nvarchar](50) NULL,
	[contents] [nvarchar](255) NULL,
	[moneyofday] [float] NULL,
	[seo] [nvarchar](255) NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[carId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 12/19/2018 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Contents] [nvarchar](255) NOT NULL,
	[Images] [nvarchar](50) NULL,
	[Seo] [nvarchar](255) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegisterCar]    Script Date: 12/19/2018 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterCar](
	[id] [int] NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Birthofdate] [date] NULL,
	[Sex] [nvarchar](50) NULL,
	[Contents] [nvarchar](255) NULL,
	[address] [nvarchar](50) NULL,
	[carId] [nvarchar](50) NOT NULL,
	[dateborrowed] [date] NULL,
	[datePay] [date] NULL,
	[money] [float] NULL,
 CONSTRAINT [PK_RegisterCar] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[carId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [NewsPlush] SET  READ_WRITE 
GO

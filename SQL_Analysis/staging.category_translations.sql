USE [Ecommerce_BI_Project]
GO

/****** Object:  Table [staging].[category_translations]    Script Date: 24/02/2026 7:41:00 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [staging].[category_translations](
	[product_category_name] [varchar](max) NULL,
	[product_category_name_english] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



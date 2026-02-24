USE [Ecommerce_BI_Project]
GO

/****** Object:  Table [staging].[order_items]    Script Date: 24/02/2026 7:42:18 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [staging].[order_items](
	[order_id] [varchar](max) NULL,
	[order_item_id] [bigint] NULL,
	[product_id] [varchar](max) NULL,
	[seller_id] [varchar](max) NULL,
	[shipping_limit_date] [varchar](max) NULL,
	[price] [float] NULL,
	[freight_value] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



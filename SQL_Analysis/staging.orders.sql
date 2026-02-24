USE [Ecommerce_BI_Project]
GO

/****** Object:  Table [staging].[orders]    Script Date: 24/02/2026 7:42:45 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [staging].[orders](
	[order_id] [varchar](max) NULL,
	[customer_id] [varchar](max) NULL,
	[order_status] [varchar](max) NULL,
	[order_purchase_timestamp] [varchar](max) NULL,
	[order_approved_at] [varchar](max) NULL,
	[order_delivered_carrier_date] [varchar](max) NULL,
	[order_delivered_customer_date] [varchar](max) NULL,
	[order_estimated_delivery_date] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



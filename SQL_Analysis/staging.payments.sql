USE [Ecommerce_BI_Project]
GO

/****** Object:  Table [staging].[payments]    Script Date: 24/02/2026 7:43:06 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [staging].[payments](
	[order_id] [varchar](max) NULL,
	[payment_sequential] [bigint] NULL,
	[payment_type] [varchar](max) NULL,
	[payment_installments] [bigint] NULL,
	[payment_value] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



USE [Ecommerce_BI_Project]
GO

/****** Object:  Table [staging].[customers]    Script Date: 24/02/2026 7:41:32 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [staging].[customers](
	[customer_id] [varchar](max) NULL,
	[customer_unique_id] [varchar](max) NULL,
	[customer_zip_code_prefix] [bigint] NULL,
	[customer_city] [varchar](max) NULL,
	[customer_state] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



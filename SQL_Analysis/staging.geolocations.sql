USE [Ecommerce_BI_Project]
GO

/****** Object:  Table [staging].[geolocations]    Script Date: 24/02/2026 7:41:55 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [staging].[geolocations](
	[geolocation_zip_code_prefix] [bigint] NULL,
	[geolocation_lat] [float] NULL,
	[geolocation_lng] [float] NULL,
	[geolocation_city] [varchar](max) NULL,
	[geolocation_state] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



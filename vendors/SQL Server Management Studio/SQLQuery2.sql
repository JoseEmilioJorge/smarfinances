-- Create the database SHDatabaseDB

CREATE DATABASE SHDatabaseDB;
GO

-- Use the database SHDatabase

USE SHDatabaseDB
GO


-- CHANNELS TABLEDB


DROP TABLE [CHANNELS];

CREATE TABLE [CHANNELS](
	[CHANNEL_ID] [float] NOT NULL,
	[CHANNEL_DESC] [nvarchar](255) NOT NULL,
	[CHANNEL_CLASS] [nvarchar](255) NOT NULL,
	[CHANNEL_CLASS_ID] [float] NOT NULL,
	[CHANNEL_TOTAL] [nvarchar](255) NOT NULL,
	[CHANNEL_TOTAL_ID] [float] NOT NULL,
 CONSTRAINT [PK_CHANNELS] PRIMARY KEY CLUSTERED 
(
	[CHANNEL_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- COUNTRIES TABLE

DROP TABLE [COUNTRIES];

CREATE TABLE [COUNTRIES](
	[COUNTRY_ID] [float] NOT NULL,
	[COUNTRY_ISO_CODE] [nvarchar](255) NOT NULL,
	[COUNTRY_NAME] [nvarchar](255) NOT NULL,
	[COUNTRY_SUBREGION] [nvarchar](255) NOT NULL,
	[COUNTRY_SUBREGION_ID] [float] NOT NULL,
	[COUNTRY_REGION] [nvarchar](255) NOT NULL,
	[COUNTRY_REGION_ID] [float] NOT NULL,
	[COUNTRY_TOTAL] [nvarchar](255) NOT NULL,
	[COUNTRY_TOTAL_ID] [float] NOT NULL,
	[COUNTRY_NAME_HIST] [nvarchar](255) NULL,
 CONSTRAINT [PK_COUNTRIES] PRIMARY KEY CLUSTERED 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- PRODUCTS TABLE

DROP TABLE [PRODUCTS];

CREATE TABLE [PRODUCTS](
	[PROD_ID] [float] NOT NULL,
	[PROD_NAME] [nvarchar](255) NOT NULL,
	[PROD_DESC] [nvarchar](255) NOT NULL,
	[PROD_SUBCATEGORY] [nvarchar](255) NOT NULL,
	[PROD_SUBCATEGORY_ID] [float] NOT NULL,
	[PROD_SUBCATEGORY_DESC] [nvarchar](255) NOT NULL,
	[PROD_CATEGORY] [nvarchar](255) NOT NULL,
	[PROD_CATEGORY_ID] [float] NOT NULL,
	[PROD_CATEGORY_DESC] [nvarchar](255) NOT NULL,
	[PROD_WEIGHT_CLASS] [float] NOT NULL,
	[PROD_UNIT_OF_MEASURE] [nvarchar](255) NULL,
	[PROD_PACK_SIZE] [nvarchar](255) NOT NULL,
	[SUPPLIER_ID] [float] NOT NULL,
	[PROD_STATUS] [nvarchar](255) NOT NULL,
	[PROD_LIST_PRICE] [float] NOT NULL,
	[PROD_MIN_PRICE] [float] NOT NULL,
	[PROD_TOTAL] [nvarchar](255) NOT NULL,
	[PROD_TOTAL_ID] [float] NOT NULL,
	[PROD_SRC_ID] [nvarchar](255) NULL,
	[PROD_EFF_FROM] [nvarchar](255) NULL,
	[PROD_EFF_TO] [nvarchar](255) NULL,
	[PROD_VALID] [nvarchar](255) NULL,
 CONSTRAINT [PK_PRODUCTS] PRIMARY KEY CLUSTERED 
(
	[PROD_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- PROMOTIONS TABLE

DROP TABLE [PROMOTIONS];

CREATE TABLE [PROMOTIONS](
	[PROMO_ID] [float] NOT NULL,
	[PROMO_NAME] [nvarchar](255) NOT NULL,
	[PROMO_SUBCATEGORY] [nvarchar](255) NOT NULL,
	[PROMO_SUBCATEGORY_ID] [float] NOT NULL,
	[PROMO_CATEGORY] [nvarchar](255) NOT NULL,
	[PROMO_CATEGORY_ID] [float] NOT NULL,
	[PROMO_COST] [float] NOT NULL,
	[PROMO_BEGIN_DATE] [nvarchar](255) NOT NULL,
	[PROMO_END_DATE] [nvarchar](255) NOT NULL,
	[PROMO_TOTAL] [nvarchar](255) NOT NULL,
	[PROMO_TOTAL_ID] [float] NOT NULL,
 CONSTRAINT [PK_PROMOTIONS] PRIMARY KEY CLUSTERED 
(
	[PROMO_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- TIMES TABLE

DROP TABLE [TIMES];

CREATE TABLE [TIMES](
	[TIME_ID] [nvarchar](255) NOT NULL,
	[DAY_NAME] [nvarchar](255) NOT NULL,
	[DAY_NUMBER_IN_WEEK] [float] NOT NULL,
	[DAY_NUMBER_IN_MONTH] [float] NOT NULL,
	[CALENDAR_WEEK_NUMBER] [float] NOT NULL,
	[FISCAL_WEEK_NUMBER] [float] NOT NULL,
	[WEEK_ENDING_DAY] [nvarchar](255) NOT NULL,
	[WEEK_ENDING_DAY_ID] [float] NOT NULL,
	[CALENDAR_MONTH_NUMBER] [float] NOT NULL,
	[FISCAL_MONTH_NUMBER] [float] NOT NULL,
	[CALENDAR_MONTH_DESC] [nvarchar](255) NOT NULL,
	[CALENDAR_MONTH_ID] [float] NOT NULL,
	[FISCAL_MONTH_DESC] [nvarchar](255) NOT NULL,
	[FISCAL_MONTH_ID] [float] NOT NULL,
	[DAYS_IN_CAL_MONTH] [float] NOT NULL,
	[DAYS_IN_FIS_MONTH] [float] NOT NULL,
	[END_OF_CAL_MONTH] [nvarchar](255) NOT NULL,
	[END_OF_FIS_MONTH] [nvarchar](255) NOT NULL,
	[CALENDAR_MONTH_NAME] [nvarchar](255) NOT NULL,
	[FISCAL_MONTH_NAME] [nvarchar](255) NOT NULL,
	[CALENDAR_QUARTER_DESC] [nvarchar](255) NOT NULL,
	[CALENDAR_QUARTER_ID] [float] NOT NULL,
	[FISCAL_QUARTER_DESC] [nvarchar](255) NOT NULL,
	[FISCAL_QUARTER_ID] [float] NOT NULL,
	[DAYS_IN_CAL_QUARTER] [float] NOT NULL,
	[DAYS_IN_FIS_QUARTER] [float] NOT NULL,
	[END_OF_CAL_QUARTER] [nvarchar](255) NOT NULL,
	[END_OF_FIS_QUARTER] [nvarchar](255) NOT NULL,
	[CALENDAR_QUARTER_NUMBER] [float] NOT NULL,
	[FISCAL_QUARTER_NUMBER] [float] NOT NULL,
	[CALENDAR_YEAR] [float] NOT NULL,
	[CALENDAR_YEAR_ID] [float] NOT NULL,
	[FISCAL_YEAR] [float] NOT NULL,
	[FISCAL_YEAR_ID] [float] NOT NULL,
	[DAYS_IN_CAL_YEAR] [float] NOT NULL,
	[DAYS_IN_FIS_YEAR] [float] NOT NULL,
	[END_OF_CAL_YEAR] [nvarchar](255) NOT NULL,
	[END_OF_FIS_YEAR] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_TIMES] PRIMARY KEY CLUSTERED 
(
	[TIME_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];


-- CUSTOMERS TABLE

DROP TABLE [CUSTOMERS];

CREATE TABLE [CUSTOMERS](
	[CUST_ID] [float] NOT NULL,
	[CUST_FIRST_NAME] [nvarchar](255) NOT NULL,
	[CUST_LAST_NAME] [nvarchar](255) NOT NULL,
	[CUST_GENDER] [nvarchar](255) NOT NULL,
	[CUST_YEAR_OF_BIRTH] [float] NOT NULL,
	[CUST_MARITAL_STATUS] [nvarchar](255) NULL,
	[CUST_STREET_ADDRESS] [nvarchar](255) NOT NULL,
	[CUST_POSTAL_CODE] [nvarchar](255) NOT NULL,
	[CUST_CITY] [nvarchar](255) NOT NULL,
	[CUST_CITY_ID] [float] NOT NULL,
	[CUST_STATE_PROVINCE] [nvarchar](255) NOT NULL,
	[CUST_STATE_PROVINCE_ID] [float] NOT NULL,
	[COUNTRY_ID] [float] NOT NULL,
	[CUST_MAIN_PHONE_NUMBER] [nvarchar](255) NOT NULL,
	[CUST_INCOME_LEVEL] [nvarchar](255) NULL,
	[CUST_CREDIT_LIMIT] [float] NULL,
	[CUST_EMAIL] [nvarchar](255) NULL,
	[CUST_TOTAL] [nvarchar](255) NOT NULL,
	[CUST_TOTAL_ID] [float] NOT NULL,
	[CUST_SRC_ID] [nvarchar](255) NULL,
	[CUST_EFF_FROM] [nvarchar](255) NULL,
	[CUST_EFF_TO] [nvarchar](255) NULL,
	[CUST_VALID] [nvarchar](255) NULL,
 CONSTRAINT [PK_CUSTOMERS] PRIMARY KEY CLUSTERED 
(
	[CUST_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

ALTER TABLE [CUSTOMERS]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMERS_COUNTRIES] FOREIGN KEY([COUNTRY_ID])
REFERENCES [COUNTRIES] ([COUNTRY_ID]);

ALTER TABLE [CUSTOMERS] CHECK CONSTRAINT [FK_CUSTOMERS_COUNTRIES];


-- COSTS TABLE

DROP TABLE [COSTS];

CREATE TABLE [COSTS](
	[PROD_ID] [float] NOT NULL,
	[TIME_ID] [nvarchar](255) NOT NULL,
	[PROMO_ID] [float] NOT NULL,
	[CHANNEL_ID] [float] NOT NULL,
	[UNIT_COST] [float] NOT NULL,
	[UNIT_PRICE] [float] NOT NULL
) ON [PRIMARY];

ALTER TABLE [COSTS]  WITH CHECK ADD  CONSTRAINT [FK_COSTS_CHANNELS] FOREIGN KEY([CHANNEL_ID])
REFERENCES [CHANNELS] ([CHANNEL_ID]);

ALTER TABLE [COSTS] CHECK CONSTRAINT [FK_COSTS_CHANNELS];

ALTER TABLE [COSTS]  WITH CHECK ADD  CONSTRAINT [FK_COSTS_PRODUCTS] FOREIGN KEY([PROD_ID])
REFERENCES [PRODUCTS] ([PROD_ID]);

ALTER TABLE [COSTS] CHECK CONSTRAINT [FK_COSTS_PRODUCTS];

ALTER TABLE [COSTS]  WITH CHECK ADD  CONSTRAINT [FK_COSTS_PROMOTIONS] FOREIGN KEY([PROMO_ID])
REFERENCES [PROMOTIONS] ([PROMO_ID]);

ALTER TABLE [COSTS] CHECK CONSTRAINT [FK_COSTS_PROMOTIONS];

ALTER TABLE [COSTS]  WITH CHECK ADD  CONSTRAINT [FK_COSTS_TIMES] FOREIGN KEY([TIME_ID])
REFERENCES [TIMES] ([TIME_ID]);

ALTER TABLE [COSTS] CHECK CONSTRAINT [FK_COSTS_TIMES];

-- SALES TABLE

DROP TABLE [SALES];

CREATE TABLE [SALES](
	[PROD_ID] [float] NOT NULL,
	[CUST_ID] [float] NOT NULL,
	[TIME_ID] [nvarchar](255) NOT NULL,
	[CHANNEL_ID] [float] NOT NULL,
	[PROMO_ID] [float] NOT NULL,
	[QUANTITY_SOLD] [float] NOT NULL,
	[AMOUNT_SOLD] [float] NOT NULL
) ON [PRIMARY];

ALTER TABLE [SALES]  WITH CHECK ADD  CONSTRAINT [FK_SALES_CHANNELS] FOREIGN KEY([CHANNEL_ID])
REFERENCES [CHANNELS] ([CHANNEL_ID]);

ALTER TABLE [SALES] CHECK CONSTRAINT [FK_SALES_CHANNELS];

ALTER TABLE [SALES]  WITH CHECK ADD  CONSTRAINT [FK_SALES_CUSTOMERS] FOREIGN KEY([CUST_ID])
REFERENCES [CUSTOMERS] ([CUST_ID]);

ALTER TABLE [SALES] CHECK CONSTRAINT [FK_SALES_CUSTOMERS];

ALTER TABLE [SALES]  WITH CHECK ADD  CONSTRAINT [FK_SALES_PRODUCTS] FOREIGN KEY([PROD_ID])
REFERENCES [PRODUCTS] ([PROD_ID]);

ALTER TABLE [SALES] CHECK CONSTRAINT [FK_SALES_PRODUCTS];

ALTER TABLE [SALES]  WITH CHECK ADD  CONSTRAINT [FK_SALES_PROMOTIONS] FOREIGN KEY([PROMO_ID])
REFERENCES [PROMOTIONS] ([PROMO_ID]);

ALTER TABLE [SALES] CHECK CONSTRAINT [FK_SALES_PROMOTIONS];

ALTER TABLE [SALES]  WITH CHECK ADD  CONSTRAINT [FK_SALES_TIMES] FOREIGN KEY([TIME_ID])
REFERENCES [TIMES] ([TIME_ID]);

ALTER TABLE [SALES] CHECKCONSTRAINT [FK_SALES_TIMES];
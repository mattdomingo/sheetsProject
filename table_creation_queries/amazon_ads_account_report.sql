-- Amazon Ads Account Report table creation query
-- Contains daily performance metrics at the account level
CREATE OR REPLACE TABLE `sheets_base_schema.amazon_ads_account_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if unioning functionality is being used'),
  `date_day` DATE OPTIONS(description = 'The date of the record'),
  `account_id` STRING OPTIONS(description = 'The Amazon Ads account ID'),
  `account_name` STRING OPTIONS(description = 'The name of the Amazon Ads account'),
  `account_status` STRING OPTIONS(description = 'The status of the account'),
  `currency_code` STRING OPTIONS(description = 'The currency used for the account'),
  `impressions` INTEGER OPTIONS(description = 'Count of ad impressions'),
  `clicks` INTEGER OPTIONS(description = 'Count of ad clicks'),
  `cost` FLOAT64 OPTIONS(description = 'Cost of the ads in account currency'),
  `purchases_30_d` INTEGER OPTIONS(description = 'Number of purchases within 30 days of click'),
  `sales_30_d` FLOAT64 OPTIONS(description = 'Revenue generated within 30 days of click')
)
OPTIONS (description = 'Daily performance metrics at the Amazon Ads account level'); 
-- Google Ads Account Report table creation query
-- Contains daily performance metrics at the account level
CREATE OR REPLACE TABLE `sheets_base_schema.google_ads_account_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if unioning functionality is being used'),
  `date_day` DATE OPTIONS(description = 'The date of the record'),
  `account_id` INT64 OPTIONS(description = 'The Google Ads account ID'),
  `account_name` STRING OPTIONS(description = 'The name of the Google Ads account'),
  `account_status` STRING OPTIONS(description = 'The status of the account (enabled, paused, removed)'),
  `currency_code` STRING OPTIONS(description = 'The currency used for the account'),
  `impressions` INTEGER OPTIONS(description = 'Count of ad impressions'),
  `clicks` INTEGER OPTIONS(description = 'Count of ad clicks'),
  `spend` FLOAT64 OPTIONS(description = 'Spend amount in account currency'),
  `cost` NUMERIC OPTIONS(description = 'Cost of the ads in account currency'),
  `conversions` FLOAT64 OPTIONS(description = 'Count of conversions'),
  `conversion_value` FLOAT64 OPTIONS(description = 'Value of conversions'),
  `view_through_conversions` NUMERIC OPTIONS(description = 'Count of view-through conversions'),
  `ctr` NUMERIC OPTIONS(description = 'Click-through rate (clicks/impressions)'),
  `cpc` NUMERIC OPTIONS(description = 'Average cost per click'),
  `cpm` NUMERIC OPTIONS(description = 'Average cost per thousand impressions'),
  `cvr` NUMERIC OPTIONS(description = 'Conversion rate (conversions/clicks)'),
  `cpa` NUMERIC OPTIONS(description = 'Cost per acquisition (cost/conversions)'),
  `roas` NUMERIC OPTIONS(description = 'Return on ad spend (conversion_value/cost)')
)
OPTIONS (description = 'Daily performance metrics at the Google Ads account level'); 
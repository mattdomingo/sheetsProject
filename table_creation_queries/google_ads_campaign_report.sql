-- Google Ads Campaign Report table creation query
-- Contains daily performance metrics at the campaign level
CREATE OR REPLACE TABLE `sheets_base_schema.google_ads_campaign_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if unioning functionality is being used'),
  `date_day` DATE OPTIONS(description = 'The date of the record'),
  `account_id` INT64 OPTIONS(description = 'The Google Ads account ID'),
  `account_name` STRING OPTIONS(description = 'The name of the Google Ads account'),
  `campaign_id` INT64 OPTIONS(description = 'The ID of the campaign'),
  `campaign_name` STRING OPTIONS(description = 'The name of the campaign'),
  `campaign_status` STRING OPTIONS(description = 'The status of the campaign (enabled, paused, removed)'),
  `advertising_channel_type` STRING OPTIONS(description = 'The channel type (Search, Display, Video, etc.)'),
  `advertising_channel_subtype` STRING OPTIONS(description = 'The channel subtype when applicable'),
  `campaign_start_date` DATE OPTIONS(description = 'The start date of the campaign'),
  `campaign_end_date` DATE OPTIONS(description = 'The end date of the campaign if applicable'),
  `budget_id` STRING OPTIONS(description = 'The ID of the budget associated with the campaign'),
  `budget_name` STRING OPTIONS(description = 'The name of the budget'),
  `budget_amount` NUMERIC OPTIONS(description = 'The budget amount in account currency'),
  `budget_type` STRING OPTIONS(description = 'The type of budget (daily, total)'),
  `impressions` INTEGER OPTIONS(description = 'Count of ad impressions'),
  `clicks` INTEGER OPTIONS(description = 'Count of ad clicks'),
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
OPTIONS (description = 'Daily performance metrics at the Google Ads campaign level');
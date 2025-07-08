-- Amazon Ads Keyword Report table creation query
-- Contains daily performance metrics at the keyword level
CREATE OR REPLACE TABLE `sheets_base_schema.amazon_ads_keyword_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if unioning functionality is being used'),
  `date_day` DATE OPTIONS(description = 'The date of the report'),
  `account_name` STRING OPTIONS(description = 'Account Name. Not currently populated for sellers'),
  `account_id` STRING OPTIONS(description = 'Identifier for sellers and vendors'),
  `country_code` STRING OPTIONS(description = 'The code for a given country'),
  `profile_id` STRING OPTIONS(description = 'The profile ID associated with your Amazon Ads account'),
  `portfolio_name` STRING OPTIONS(description = 'The name of the Portfolio'),
  `portfolio_id` STRING OPTIONS(description = 'The ID of the Portfolio'),
  `campaign_name` STRING OPTIONS(description = 'The name of the Campaign'),
  `campaign_id` STRING OPTIONS(description = 'The ID of the Campaign'),
  `ad_group_name` STRING OPTIONS(description = 'The name of the AdGroup'),
  `ad_group_id` STRING OPTIONS(description = 'The ID of the AdGroup'),
  `keyword_id` STRING OPTIONS(description = 'The ID of the keyword'),
  `keyword_text` STRING OPTIONS(description = 'The exact text for the keyword'),
  `serving_status` STRING OPTIONS(description = 'The current serving status of the record'),
  `state` STRING OPTIONS(description = 'The state of the record (enabled, paused, or archived)'),
  `keyword_bid` FLOAT64 OPTIONS(description = 'Bid associated with a keyword or targeting expression'),
  `keyword_type` STRING OPTIONS(description = 'Type of matching for the keyword used in bid'),
  `match_type` STRING OPTIONS(description = 'Type of matching for the keyword used in bid'),
  `cost` FLOAT64 OPTIONS(description = 'Total cost of ad clicks'),
  `clicks` INTEGER OPTIONS(description = 'Total number of ad clicks'),
  `impressions` INTEGER OPTIONS(description = 'Total number of ad impressions'),
  `purchases_30_d` INTEGER OPTIONS(description = 'Number of attributed conversion events occurring within 30 days of an ad click'),
  `sales_30_d` FLOAT64 OPTIONS(description = 'Total value of sales occurring within 30 days of an ad click')
)
OPTIONS (description = 'Daily performance metrics at the Amazon Ads keyword level');
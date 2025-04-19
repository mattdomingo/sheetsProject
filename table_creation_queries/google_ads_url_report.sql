-- Google Ads URL Report table creation query
-- Contains daily performance metrics at the URL level
CREATE OR REPLACE TABLE `sheets_base_schema.google_ads_url_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if unioning functionality is being used'),
  `date_day` DATE OPTIONS(description = 'The date of the record'),
  `account_id` INT64 OPTIONS(description = 'The Google Ads account ID'),
  `account_name` STRING OPTIONS(description = 'The name of the Google Ads account'),
  `campaign_id` INT64 OPTIONS(description = 'The ID of the campaign'),
  `campaign_name` STRING OPTIONS(description = 'The name of the campaign'),
  `ad_group_id` STRING OPTIONS(description = 'The ID of the ad group'),
  `ad_group_name` STRING OPTIONS(description = 'The name of the ad group'),
  `ad_id` INT64 OPTIONS(description = 'The ID of the ad'),
  `final_url` STRING OPTIONS(description = 'The final URL of the ad'),
  `utm_source` STRING OPTIONS(description = 'UTM source parameter'),
  `utm_medium` STRING OPTIONS(description = 'UTM medium parameter'),
  `utm_campaign` STRING OPTIONS(description = 'UTM campaign parameter'),
  `utm_content` STRING OPTIONS(description = 'UTM content parameter'),
  `utm_term` STRING OPTIONS(description = 'UTM term parameter'),
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
OPTIONS (description = 'Daily performance metrics at the Google Ads URL level with UTM parameter tracking'); 
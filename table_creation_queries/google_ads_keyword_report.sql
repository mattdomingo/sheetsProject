-- Google Ads Keyword Report table creation query
-- Contains daily performance metrics at the keyword level
CREATE OR REPLACE TABLE `sheets_base_schema.google_ads_keyword_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if unioning functionality is being used'),
  `date_day` DATE OPTIONS(description = 'The date of the record'),
  `account_id` INT64 OPTIONS(description = 'The Google Ads account ID'),
  `account_name` STRING OPTIONS(description = 'The name of the Google Ads account'),
  `campaign_id` INT64 OPTIONS(description = 'The ID of the campaign'),
  `campaign_name` STRING OPTIONS(description = 'The name of the campaign'),
  `ad_group_id` STRING OPTIONS(description = 'The ID of the ad group'),
  `ad_group_name` STRING OPTIONS(description = 'The name of the ad group'),
  `criterion_id` INT64 OPTIONS(description = 'The ID of the keyword criterion'),
  `keyword_match_type` STRING OPTIONS(description = 'The match type of the keyword (exact, phrase, broad)'),
  `keyword_text` STRING OPTIONS(description = 'The text of the keyword'),
  `keyword_status` STRING OPTIONS(description = 'The status of the keyword (enabled, paused, removed)'),
  `quality_score` INTEGER OPTIONS(description = 'The quality score of the keyword (1-10)'),
  `search_predicted_ctr` STRING OPTIONS(description = 'Predicted CTR of the keyword (above average, average, below average)'),
  `search_landing_page_experience` STRING OPTIONS(description = 'Quality of landing page experience (above average, average, below average)'),
  `search_ad_relevance` STRING OPTIONS(description = 'Relevance of ad to search (above average, average, below average)'),
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
OPTIONS (description = 'Daily performance metrics at the Google Ads keyword level'); 
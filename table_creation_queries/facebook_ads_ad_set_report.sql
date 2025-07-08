-- Facebook Ads Ad Set Report table creation query
-- Contains daily performance metrics at the ad set level
CREATE OR REPLACE TABLE `sheets_base_schema.facebook_ads__ad_set_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be empty.'),
  `date_day` DATE OPTIONS(description = 'The date of the performance.'),
  `account_id` INT64 OPTIONS(description = 'The ID of the related account.'),
  `account_name` STRING OPTIONS(description = 'The name of the related account.'),
  `campaign_id` INT64 OPTIONS(description = 'The ID of the related campaign.'),
  `campaign_name` STRING OPTIONS(description = 'The name of the related campaign.'),
  `ad_set_id` INT64 OPTIONS(description = 'The ID of the related ad set.'),
  `ad_set_name` STRING OPTIONS(description = 'The name of the related ad set.'),
  `start_at` TIMESTAMP OPTIONS(description = 'Timestamp of designated ad set start time.'),
  `end_at` TIMESTAMP OPTIONS(description = 'Timestamp of designated ad set end time.'),
  `bid_strategy` STRING OPTIONS(description = 'Bid strategy values are - \'LOWEST_COST_WITHOUT_CAP\', \'LOWEST_COST_WITH_BID_CAP\', \'COST_CAP\', \'LOWEST_COST_WITH_MIN_ROAS\'.'),
  `daily_budget` INT64 OPTIONS(description = 'Daily budget of ad set.'),
  `budget_remaining` INT64 OPTIONS(description = 'Remaining budget of ad set.'),
  `optimization_goal` STRING OPTIONS(description = 'The optimization goal this ad set is using. Possible values defined [here](https://developers.facebook.com/docs/marketing-api/reference/ad-campaign/#fields).'),
  `clicks` INT64 OPTIONS(description = 'The number of clicks the ad had on the given day.'),
  `impressions` INT64 OPTIONS(description = 'The number of impressions the ad had on the given day.'),
  `spend` FLOAT64 OPTIONS(description = 'The spend on the ad in the given day.'),
  `conversions` FLOAT64 OPTIONS(description = 'Total number of conversions using the default attribution window on the given day.'),
  `conversions_value` FLOAT64 OPTIONS(description = 'Total monetary of conversions using the default attribution window on the given day.')
)
OPTIONS (description = 'Daily performance metrics at the Facebook Ads ad set level'); 
-- Creates the target table for Facebook Ads (or similar) Ad Report with column descriptions
CREATE OR REPLACE TABLE `sheets_base_schema.facebook_ads_ad_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be empty.'),
  `date_day` DATE OPTIONS(description = 'The date of the performance.'),
  `account_id` INT64 OPTIONS(description = 'The ID of the related account.'),
  `account_name` STRING OPTIONS(description = 'The name of the related account.'),
  `campaign_id` INT64 OPTIONS(description = 'The ID of the related campaign.'),
  `campaign_name` STRING OPTIONS(description = 'The name of the related campaign.'),
  `ad_set_id` INT64 OPTIONS(description = 'The ID of the related ad set.'),
  `ad_set_name` STRING OPTIONS(description = 'The name of the related ad set.'),
  `ad_id` INT64 OPTIONS(description = 'The ID of the related ad.'),
  `ad_name` STRING OPTIONS(description = 'The name of the related ad.'),
  `conversion_domain` STRING OPTIONS(description = 'The domain you\'ve configured the ad to convert to.'),
  `clicks` INT64 OPTIONS(description = 'The number of clicks the ad had on the given day.'),
  `impressions` INT64 OPTIONS(description = 'The number of impressions the ad had on the given day.'),
  `spend` FLOAT64 OPTIONS(description = 'The spend on the ad in the given day.'),
  `conversions` FLOAT64 OPTIONS(description = 'Total number of conversions using the default attribution window on the given day.'),
  `conversions_value` FLOAT64 OPTIONS(description = 'Total monetary of conversions using the default attribution window on the given day.')
)
OPTIONS (description = 'Contains daily ad performance metrics from Facebook Ads (or similar platform).'); -- TODO: Update table description

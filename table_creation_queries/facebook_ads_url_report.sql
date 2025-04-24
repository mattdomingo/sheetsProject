-- Facebook Ads URL Report table creation query
-- Contains daily performance metrics at the URL level
CREATE OR REPLACE TABLE `sheets_base_schema.facebook_ads__url_report` (
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
  `creative_id` INT64 OPTIONS(description = 'The ID of the related creative.'),
  `creative_name` STRING OPTIONS(description = 'The name of the related creative.'),
  `base_url` STRING OPTIONS(description = 'The base URL of the ad, extracted from the page_link and template_page_link.'),
  `url_host` STRING OPTIONS(description = 'The URL host of the ad, extracted from the page_link and template_page_link.'),
  `url_path` STRING OPTIONS(description = 'The URL path of the ad, extracted from the page_link and template_page_link.'),
  `utm_source` STRING OPTIONS(description = 'The utm_source parameter of the ad, extracted from the page_link and template_page_link.'),
  `utm_medium` STRING OPTIONS(description = 'The utm_medium parameter of the ad, extracted from the page_link and template_page_link.'),
  `utm_campaign` STRING OPTIONS(description = 'The utm_campaign parameter of the ad, extracted from the page_link and template_page_link.'),
  `utm_content` STRING OPTIONS(description = 'The utm_content parameter of the ad, extracted from the page_link and template_page_link.'),
  `utm_term` STRING OPTIONS(description = 'The utm_term parameter of the ad, extracted from the page_link and template_page_link.'),
  `clicks` INT64 OPTIONS(description = 'The number of clicks the ad had on the given day.'),
  `impressions` INT64 OPTIONS(description = 'The number of impressions the ad had on the given day.'),
  `spend` FLOAT64 OPTIONS(description = 'The spend on the ad in the given day.'),
  `conversions` FLOAT64 OPTIONS(description = 'Total number of conversions using the default attribution window on the given day.'),
  `conversions_value` FLOAT64 OPTIONS(description = 'Total monetary of conversions using the default attribution window on the given day.')
)
OPTIONS (description = 'Daily performance metrics at the Facebook Ads URL level'); 
-- Facebook Ads Campaign Report table creation query
-- Contains daily performance metrics at the campaign level
CREATE OR REPLACE TABLE `sheets_base_schema.facebook_ads__campaign_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be empty.'),
  `date_day` DATE OPTIONS(description = 'The date of the performance.'),
  `account_id` INT64 OPTIONS(description = 'The ID of the related account.'),
  `account_name` STRING OPTIONS(description = 'The name of the related account.'),
  `campaign_id` INT64 OPTIONS(description = 'The ID of the related campaign.'),
  `campaign_name` STRING OPTIONS(description = 'The name of the related campaign.'),
  `start_at` TIMESTAMP OPTIONS(description = 'Timestamp of designated campaign start time.'),
  `end_at` TIMESTAMP OPTIONS(description = 'Timestamp of designated campaign end time.'),
  `status` STRING OPTIONS(description = 'Status values are - \'ACTIVE\', \'PAUSED\', \'DELETED\', \'ARCHIVED\'.'),
  `daily_budget` INT64 OPTIONS(description = 'Daily budget of campaign.'),
  `lifetime_budget` INT64 OPTIONS(description = 'Lifetime budget of the campaign.'),
  `budget_remaining` FLOAT64 OPTIONS(description = 'Remaining budget of campaign.'),
  `clicks` INT64 OPTIONS(description = 'The number of clicks the ad had on the given day.'),
  `impressions` INT64 OPTIONS(description = 'The number of impressions the ad had on the given day.'),
  `spend` FLOAT64 OPTIONS(description = 'The spend on the ad in the given day.'),
  `conversions` FLOAT64 OPTIONS(description = 'Total number of conversions using the default attribution window on the given day.'),
  `conversions_value` FLOAT64 OPTIONS(description = 'Total monetary of conversions using the default attribution window on the given day.')
)
OPTIONS (description = 'Daily performance metrics at the Facebook Ads campaign level'); 
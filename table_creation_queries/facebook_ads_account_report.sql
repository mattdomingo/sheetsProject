-- Facebook Ads Account Report table creation query
-- Contains daily performance metrics at the account level
CREATE OR REPLACE TABLE `sheets_base_schema.facebook_ads__account_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be empty.'),
  `date_day` DATE OPTIONS(description = 'The date of the performance.'),
  `account_id` INT64 OPTIONS(description = 'The ID of the related account.'),
  `account_name` STRING OPTIONS(description = 'The name of the related account.'),
  `account_status` STRING OPTIONS(description = 'Current status of account.'),
  `business_country_code` STRING OPTIONS(description = 'Country code of business associated to account.'),
  `created_at` TIMESTAMP OPTIONS(description = 'The time account was created.'),
  `currency` STRING OPTIONS(description = 'Currency associated with account.'),
  `timezone_name` STRING OPTIONS(description = 'Timezone associated with account.'),
  `clicks` INT64 OPTIONS(description = 'The number of clicks the ad had on the given day.'),
  `impressions` INT64 OPTIONS(description = 'The number of impressions the ad had on the given day.'),
  `spend` FLOAT64 OPTIONS(description = 'The spend on the ad in the given day.'),
  `conversions` FLOAT64 OPTIONS(description = 'Total number of conversions using the default attribution window on the given day.'),
  `conversions_value` FLOAT64 OPTIONS(description = 'Total monetary of conversions using the default attribution window on the given day.')
)
OPTIONS (description = 'Daily performance metrics at the Facebook Ads account level'); 
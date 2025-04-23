-- Amazon Ads Portfolio Report table creation query
-- Contains daily performance metrics at the portfolio level
CREATE OR REPLACE TABLE `sheets_base_schema.amazon_ads_portfolio_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if unioning functionality is being used'),
  `date_day` DATE OPTIONS(description = 'The date of the report'),
  `account_name` STRING OPTIONS(description = 'Account Name. Not currently populated for sellers'),
  `account_id` STRING OPTIONS(description = 'Identifier for sellers and vendors'),
  `country_code` STRING OPTIONS(description = 'The code for a given country'),
  `profile_id` STRING OPTIONS(description = 'The profile ID associated with your Amazon Ads account'),
  `portfolio_name` STRING OPTIONS(description = 'The name of the Portfolio'),
  `portfolio_id` STRING OPTIONS(description = 'The ID of the Portfolio'),
  `budget_amount` INT64 OPTIONS(description = 'The budget amount associated with the portfolio'),
  `budget_currency_code` INT64 OPTIONS(description = 'The currency used for all monetary values'),
  `budget_start_date` INT64 OPTIONS(description = 'The starting date in YYYYMMDD format to which the budget is applied'),
  `budget_end_date` INT64 OPTIONS(description = 'The end date after which the budget is no longer applied'),
  `budget_policy` INT64 OPTIONS(description = 'The budget policy'),
  `in_budget` BOOL OPTIONS(description = 'Indicates the current budget status of the portfolio'),
  `serving_status` STRING OPTIONS(description = 'The current serving status of the record'),
  `state` STRING OPTIONS(description = 'The state of the record (enabled, paused, or archived)'),
  `cost` FLOAT64 OPTIONS(description = 'Total cost of ad clicks'),
  `clicks` INTEGER OPTIONS(description = 'Total number of ad clicks'),
  `impressions` INTEGER OPTIONS(description = 'Total number of ad impressions'),
  `purchases_30_d` INTEGER OPTIONS(description = 'Number of attributed conversion events occurring within 30 days of an ad click'),
  `sales_30_d` INT64 OPTIONS(description = 'Total value of sales occurring within 30 days of an ad click')
)
OPTIONS (description = 'Daily performance metrics at the Amazon Ads portfolio level'); 
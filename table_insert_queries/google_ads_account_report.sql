-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.google_ads_account_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.google_ads_account_report` (
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  --`account_status`,
  `currency_code`,
  `impressions`,
  `clicks`,
  `spend`,
  --`cost`,
  `conversions`,
  `conversion_value`,
  `view_through_conversions`
  --`ctr`,
  --`cpc`,
  --`cpm`,
  --`cvr`,
  --`cpa`,
  --`roas`
)
SELECT
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  --`account_status`,
  `currency_code`,
  `impressions`,
  `clicks`,
  `spend`,
  --`cost`,
  `conversions`,
  `conversions_value`,
  `view_through_conversions`
  --`ctr`,
  --`cpc`,
  --`cpm`,
  --`cvr`,
  --`cpa`,
  --`roas`
FROM
  `google_ads_google_ads.google_ads__account_report`;
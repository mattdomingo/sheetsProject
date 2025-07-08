-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.facebook_ads__account_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.facebook_ads__account_report` (
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  `account_status`,
  `business_country_code`,
  `created_at`,
  `currency`,
  `timezone_name`,
  `clicks`,
  `impressions`,
  `spend`,
  `conversions`,
  `conversions_value`
)
SELECT
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  `account_status`,
  `business_country_code`,
  `created_at`,
  `currency`,
  `timezone_name`,
  `clicks`,
  `impressions`,
  `spend`,
  `conversions`,
  `conversions_value`
FROM
  `facebook_ads_facebook_ads.facebook_ads__account_report`; 
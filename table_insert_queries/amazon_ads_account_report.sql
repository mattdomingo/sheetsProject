-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.amazon_ads_account_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.amazon_ads_account_report` (
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  --`account_status`,
  --`currency_code`,
  `impressions`,
  `clicks`,
  `cost`,
  `purchases_30_d`,
  `sales_30_d`
)
SELECT
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  --`account_status`,
  --`currency_code`,
  `impressions`,
  `clicks`,
  `cost`,
  `purchases_30_d`,
  `sales_30_d`
FROM
  `amazon_ads_amazon_ads.amazon_ads__account_report`; 
-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.amazon_ads_portfolio_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.amazon_ads_portfolio_report` (
  `source_relation`,
  `date_day`,
  `account_name`,
  `account_id`,
  `country_code`,
  `profile_id`,
  `portfolio_name`,
  `portfolio_id`,
  `budget_amount`,
  `budget_currency_code`,
  `budget_start_date`,
  `budget_end_date`,
  `budget_policy`,
  `in_budget`,
  `serving_status`,
  `state`,
  `cost`,
  `clicks`,
  `impressions`,
  `purchases_30_d`,
  `sales_30_d`
)
SELECT
  `source_relation`,
  `date_day`,
  `account_name`,
  `account_id`,
  `country_code`,
  `profile_id`,
  `portfolio_name`,
  `portfolio_id`,
  `budget_amount`,
  `budget_currency_code`,
  `budget_start_date`,
  `budget_end_date`,
  `budget_policy`,
  `in_budget`,
  `serving_status`,
  `state`,
  `cost`,
  `clicks`,
  `impressions`,
  `purchases_30_d`,
  `sales_30_d`
FROM
  `amazon_ads_amazon_ads.amazon_ads__portfolio_report`; 
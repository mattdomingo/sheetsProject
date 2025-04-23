-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.amazon_ads_campaign_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.amazon_ads_campaign_report` (
  `source_relation`,
  `date_day`,
  `account_name`,
  `account_id`,
  `country_code`,
  `profile_id`,
  `portfolio_name`,
  `portfolio_id`,
  `campaign_name`,
  `campaign_id`,
  `campaign_bidding_strategy`,
  `campaign_budget_amount`,
  `campaign_budget_currency_code`,
  `campaign_budget_type`,
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
  `campaign_name`,
  `campaign_id`,
  `campaign_bidding_strategy`,
  `campaign_budget_amount`,
  `campaign_budget_currency_code`,
  `campaign_budget_type`,
  `cost`,
  `clicks`,
  `impressions`,
  `purchases_30_d`,
  `sales_30_d`
FROM
  `amazon_ads_amazon_ads.amazon_ads__campaign_report`; 
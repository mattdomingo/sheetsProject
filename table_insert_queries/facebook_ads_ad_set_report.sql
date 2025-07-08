-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.facebook_ads__ad_set_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.facebook_ads__ad_set_report` (
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  `campaign_id`,
  `campaign_name`,
  `ad_set_id`,
  `ad_set_name`,
  `start_at`,
  `end_at`,
  `bid_strategy`,
  `daily_budget`,
  `budget_remaining`,
  `optimization_goal`,
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
  `campaign_id`,
  `campaign_name`,
  `ad_set_id`,
  `ad_set_name`,
  `start_at`,
  `end_at`,
  `bid_strategy`,
  `daily_budget`,
  `budget_remaining`,
  `optimization_goal`,
  `clicks`,
  `impressions`,
  `spend`,
  `conversions`,
  `conversions_value`
FROM
  `facebook_ads_facebook_ads.facebook_ads__ad_set_report`; 
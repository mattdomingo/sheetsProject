-- ----------------------------------------------------------------------------
-- Script to load data from source to target Google Ads Ad Report table
-- ----------------------------------------------------------------------------

-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.google_ads_ad_report`;

-- Insert data from the source table into the target table
-- Assumes a 1:1 mapping for all columns defined in the CREATE TABLE statement
-- !! IMPORTANT: Verify the source table name in the FROM clause below !!
INSERT INTO `sheets_base_schema.google_ads_ad_report` (
  `source_relation`,
  `date_day`,
  `account_name`,
  `account_id`,
  `currency_code`,
  `campaign_name`,
  `campaign_id`,
  `ad_group_name`,
  `ad_group_id`,
  `ad_id`,
  `ad_name`,
  `ad_status`,
  `ad_type`,
  `display_url`,
  `source_final_urls`,
  `spend`,
  `clicks`,
  `impressions`,
  `conversions`,
  `conversions_value`,
  `view_through_conversions`
)
SELECT
  `source_relation`,
  `date_day`,
  `account_name`,
  `account_id`,
  `currency_code`,
  `campaign_name`,
  `campaign_id`,
  `ad_group_name`,
  `ad_group_id`,
  `ad_id`,
  `ad_name`,
  `ad_status`,
  `ad_type`,
  `display_url`,
  `source_final_urls`,
  `spend`,
  `clicks`,
  `impressions`,
  `conversions`,
  `conversions_value`,
  `view_through_conversions`
FROM
  `google_ads_google_ads.google_ads__ad_report`;

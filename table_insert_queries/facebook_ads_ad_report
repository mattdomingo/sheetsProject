-- ----------------------------------------------------------------------------
-- Script to load data from source to target Facebook Ads Ad Report table
-- ----------------------------------------------------------------------------

-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.facebook_ads_ad_report`;

-- Insert data from the source table into the target table
-- Assumes a 1:1 mapping for all columns defined in the CREATE TABLE statement
-- !! IMPORTANT: Verify the source table name in the FROM clause below !!
INSERT INTO `sheets_base_schema.facebook_ads_ad_report` (
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  `campaign_id`,
  `campaign_name`,
  `ad_set_id`,
  `ad_set_name`,
  `ad_id`,
  `ad_name`,
  `conversion_domain`,
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
  `ad_id`,
  `ad_name`,
  `conversion_domain`,
  `clicks`,
  `impressions`,
  `spend`,
  `conversions`,
  `conversions_value`
FROM
  `facebook_ads_facebook_ads.facebook_ads__ad_report`; -- <-- VERIFY THIS SOURCE TABLE NAME

-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.google_ads_ad_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.google_ads_ad_report` (
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  `campaign_id`,
  `campaign_name`,
  `ad_group_id`,
  `ad_group_name`,
  `ad_id`,
  `ad_status`,
  `ad_type`,
  --`headline_part_1`,
  --`headline_part_2`,
  --`headline_part_3`,
  --`description`,
  --`description_2`,
  --`path_1`,
  --`path_2`,
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
)
SELECT
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  `campaign_id`,
  `campaign_name`,
  `ad_group_id`,
  `ad_group_name`,
  `ad_id`,
  `ad_status`,
  `ad_type`,
  --`headline_part_1`,
  --`headline_part_2`,
  --`headline_part_3`,
  --`description`,
  --`description_2`,
  --`path_1`,
  --`path_2`,
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
  `google_ads_google_ads.google_ads__ad_report`;
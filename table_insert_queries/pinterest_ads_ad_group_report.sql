-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.pinterest_ads__ad_group_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.pinterest_ads__ad_group_report` (
  `source_relation`,
  `date_day`,
  `advertiser_name`,
  `advertiser_id`,
  `campaign_name`,
  `campaign_status`,
  `campaign_id`,
  `ad_group_name`,
  `ad_group_id`,
  `created_at`,
  `start_time`,
  `end_time`,
  `ad_group_status`,
  `spend`,
  `clicks`,
  `impressions`,
  `total_conversions`,
  `total_conversions_quantity`,
  `total_conversions_value`
)
SELECT
  `source_relation`,
  `date_day`,
  `advertiser_name`,
  `advertiser_id`,
  `campaign_name`,
  `campaign_status`,
  `campaign_id`,
  `ad_group_name`,
  `ad_group_id`,
  `created_at`,
  `start_time`,
  `end_time`,
  `ad_group_status`,
  `spend`,
  `clicks`,
  `impressions`,
  `total_conversions`,
  `total_conversions_quantity`,
  `total_conversions_value`
FROM
  `pinterest_ads_pinterest_ads.pinterest_ads__ad_group_report`; 
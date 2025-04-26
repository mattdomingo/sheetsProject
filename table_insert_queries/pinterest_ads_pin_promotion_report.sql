-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.pinterest_ads__pin_promotion_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.pinterest_ads__pin_promotion_report` (
  `source_relation`,
  `date_day`,
  `advertiser_id`,
  `advertiser_name`,
  `campaign_id`,
  `campaign_name`,
  `campaign_status`,
  `ad_group_id`,
  `ad_group_name`,
  `ad_group_status`,
  `creative_type`,
  `pin_promotion_id`,
  `pin_name`,
  `pin_status`,
  `destination_url`,
  `base_url`,
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
  `advertiser_id`,
  `advertiser_name`,
  `campaign_id`,
  `campaign_name`,
  `campaign_status`,
  `ad_group_id`,
  `ad_group_name`,
  `ad_group_status`,
  `creative_type`,
  `pin_promotion_id`,
  `pin_name`,
  `pin_status`,
  `destination_url`,
  `base_url`,
  `spend`,
  `clicks`,
  `impressions`,
  `total_conversions`,
  `total_conversions_quantity`,
  `total_conversions_value`
FROM
  `pinterest_ads_pinterest_ads.pinterest_ads__pin_promotion_report`; 
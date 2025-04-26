-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.pinterest_ads__advertiser_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.pinterest_ads__advertiser_report` (
  `source_relation`,
  `date_day`,
  `advertiser_name`,
  `advertiser_id`,
  `currency_code`,
  `country`,
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
  `currency_code`,
  `country`,
  `spend`,
  `clicks`,
  `impressions`,
  `total_conversions`,
  `total_conversions_quantity`,
  `total_conversions_value`
FROM
  `pinterest_ads_pinterest_ads.pinterest_ads__advertiser_report`; 
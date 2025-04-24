-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.facebook_ads__url_tags`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.facebook_ads__url_tags` (
  `source_relation`,
  `_fivetran_id`,
  `creative_id`,
  `key`,
  `value`,
  `type`
)
SELECT
  `source_relation`,
  `_fivetran_id`,
  `creative_id`,
  `key`,
  `value`,
  `type`
FROM
  `facebook_ads_facebook_ads.facebook_ads__url_tags`; 
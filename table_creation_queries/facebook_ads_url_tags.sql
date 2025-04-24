-- Facebook Ads URL Tags table creation query
-- Contains information about URL tags used in ads
CREATE OR REPLACE TABLE `sheets_base_schema.facebook_ads__url_tags` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be empty.'),
  `_fivetran_id` STRING OPTIONS(description = 'The unique fivetran ID for this record.'),
  `creative_id` INT64 OPTIONS(description = 'The associated creative_id for this record.'),
  `key` STRING OPTIONS(description = 'The url tag object name e.g. utm_source associated with this record.'),
  `value` STRING OPTIONS(description = 'The value assigned to the url tag object associated with this record.'),
  `type` STRING OPTIONS(description = 'The type assigned to the url tag object e.g. \'AD_VIDEO\'.')
)
OPTIONS (description = 'Information about URL tags used in Facebook Ads'); 
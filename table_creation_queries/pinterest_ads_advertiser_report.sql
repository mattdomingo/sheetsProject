-- Pinterest Ads Advertiser Report table creation query
-- Contains daily performance metrics at the advertiser level
CREATE OR REPLACE TABLE `sheets_base_schema.pinterest_ads__advertiser_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be empty.'),
  `date_day` DATE OPTIONS(description = 'The performance date of the record.'),
  `advertiser_name` STRING OPTIONS(description = 'Name of the advertiser.'),
  `advertiser_id` STRING OPTIONS(description = 'The ID of the related Advertiser.'),
  `currency_code` STRING OPTIONS(description = 'The currency code which the advertiser is set up using.'),
  `country` STRING OPTIONS(description = 'The country code where the advertiser is located.'),
  `spend` FLOAT64 OPTIONS(description = 'The amount of spend that occurred on the day of the record.'),
  `clicks` INT64 OPTIONS(description = 'The number of paid and earned clicks that occurred on the day of the record.'),
  `impressions` INT64 OPTIONS(description = 'The number of paid and earned impressions that occurred on the day of the record.'),
  `total_conversions` INT64 OPTIONS(description = 'This is the sum of all website conversions, otherwise known as the number of conversion events. For example, if you track sign-ups and checkouts on your website, it's the sum of all sign-ups and checkouts attributed from clicks, engagements, and views on Pinterest. Example: If a user clicks on a Pinterest ad and completes two different conversion actions (e.g., signs up and checks out), this would be counted as 2 total conversions.'),
  `total_conversions_quantity` INT64 OPTIONS(description = 'Refers to the total count of items or units involved in the conversions. This metric is often more granular and relates to the specific quantity of products or services purchased or actions taken. Example: If a single checkout includes three items, the total_conversions_quantity would be 3, even though it counts as one total_conversion.'),
  `total_conversions_value` FLOAT64 OPTIONS(description = 'Total conversions order value. The total value of the conversions, calculated by summing up the revenue or order values attributed to conversions. Converted from the source `total_conversions_value_in_micro_dollar` field.')
)
OPTIONS (description = 'Daily performance metrics at the Pinterest Ads advertiser level'); 
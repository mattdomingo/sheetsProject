-- Creates the target table for Google Ads Ad Report with column descriptions
CREATE OR REPLACE TABLE `sheets_base_schema.google_ads_ad_report` (
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be empty.'),
  `date_day` DATE OPTIONS(description = 'The date being reported on.'),
  `account_name` STRING OPTIONS(description = 'The descriptive name of the Customer account.'),
  `account_id` INT64 OPTIONS(description = 'The Customer ID.'),
  `currency_code` STRING OPTIONS(description = 'The currency which the account uses.'),
  `campaign_name` STRING OPTIONS(description = 'The name of the Campaign.'),
  `campaign_id` INT64 OPTIONS(description = 'The ID of the Campaign.'),
  `ad_group_name` STRING OPTIONS(description = 'The name of the AdGroup.'),
  `ad_group_id` STRING OPTIONS(description = 'The ID of the AdGroup.'),
  `ad_id` INT64 OPTIONS(description = 'The unique identifier of the ad.'),
  `ad_name` STRING OPTIONS(description = 'The name of the ad.'),
  `ad_status` STRING OPTIONS(description = 'The status of the ad.'),
  `ad_type` STRING OPTIONS(description = 'The type of the ad that is being served.'),
  `display_url` STRING OPTIONS(description = 'The url which is displayed with the ad.'),
  `source_final_urls` STRING OPTIONS(description = 'The final urls that are used within the ad.'),
  `spend` FLOAT64 OPTIONS(description = 'The sum of your cost-per-click (CPC) and cost-per-thousand impressions (CPM) costs during this period.'),
  `clicks` INT64 OPTIONS(description = 'The number of clicks.'),
  `impressions` INT64 OPTIONS(description = 'Count of how often your ad has appeared on a search results page or website on the Google Network.'),
  `conversions` FLOAT64 OPTIONS(description = 'The number of conversions you\'ve received, across your conversion actions. Conversions are measured with conversion tracking and may include [modeled](https://support.google.com/google-ads/answer/10081327?sjid=12862894247631803415-NC) conversions in cases where you are not able to observe all conversions that took place. You can use this column to see how often your ads led customers to actions that you’ve defined as valuable for your business.'),
  `conversions_value` FLOAT64 OPTIONS(description = 'The sum of monetary values for your `conversions`. You have to enter a value in the Google Ads UI for your conversion actions to make this metric useful.'),
  `view_through_conversions` FLOAT64 OPTIONS(description = 'For video campaigns, view-through conversions tell you when an _impression_ of your video ad leads to a conversion on your site. The last impression of a video ad will get credit for the view-through conversion. Keep in mind: An impression is different than a “view” of a video ad. A “view” is counted when someone watches 30 seconds (or the whole ad if it’s shorter than 30 seconds) or clicks on a part of the ad. A “view” that leads to a conversion is counted in the `conversions` column.')
)
OPTIONS (description = 'Contains daily ad performance metrics from Google Ads.'); -- TODO: Update table description

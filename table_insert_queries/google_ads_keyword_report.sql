-- ----------------------------------------------------------------------------
-- Script to load data from source to target Google Ads Keyword Report table
-- ----------------------------------------------------------------------------

-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.google_ads_keyword_report`;

-- Insert data from the source table into the target table
INSERT INTO `sheets_base_schema.google_ads_keyword_report` (
  `source_relation`,
  `date_day`,
  `account_id`,
  `account_name`,
  `campaign_id`,
  `campaign_name`,
  `ad_group_id`,
  `ad_group_name`,
  `criterion_id`,
  `keyword_match_type`,
  `keyword_text`,
  --`keyword_status`,
  --`quality_score`,
  --`search_predicted_ctr`,
  --`search_landing_page_experience`,
  --`search_ad_relevance`,
  `impressions`,
  `clicks`,
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
  `criterion_id`,
  `keyword_match_type`,
  `keyword_text`,
  --`keyword_status`,
  --`quality_score`,
  --`search_predicted_ctr`,
  --`search_landing_page_experience`,
  --`search_ad_relevance`,
  `impressions`,
  `clicks`,
  --`cost`,
  `conversions`,
  `conversion_value`,
  `view_through_conversions`
  --`ctr`,
  --`cpc`,
  --`cpm`,
  --`cvr`,
  --`cpa`,
  --`roas`
FROM
  `google_ads_google_ads.google_ads__keyword_report`; 
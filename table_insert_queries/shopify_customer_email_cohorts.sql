TRUNCATE TABLE `sheets_base_schema.shopify_customer_email_cohorts`;

INSERT INTO `sheets_base_schema.shopify_customer_email_cohorts` (
  `date_month`,
  `email`,
  `first_order_timestamp`,
  `cohort_month`,
  `source_relation`,
  `order_count_in_month`,
  `total_price_in_month`,
  `line_item_count_in_month`,
  `total_price_lifetime`,
  `order_count_lifetime`,
  `line_item_count_lifetime`,
  `cohort_month_number`,
  `customer_cohort_id`
)
SELECT
  `date_month`,
  `email`,
  `first_order_timestamp`,
  `cohort_month`,
  `source_relation`,
  `order_count_in_month`,
  `total_price_in_month`,
  `line_item_count_in_month`,
  `total_price_lifetime`,
  `order_count_lifetime`,
  `line_item_count_lifetime`,
  `cohort_month_number`,
  `customer_cohort_id`
FROM
  `shopify_shopify.shopify__customer_email_cohorts`; 
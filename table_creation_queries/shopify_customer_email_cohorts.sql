-- Creates the target table for Shopify Customer Email Cohorts with column descriptions
CREATE OR REPLACE TABLE `sheets_base_schema.shopify_customer_email_cohorts` (
  `date_month` DATE OPTIONS(description = 'The calendar month the customer stats relate to.'),
  `email` STRING OPTIONS(description = 'The ID of the related customer.'),
  `first_order_timestamp` TIMESTAMP OPTIONS(description = "The timestamp of the customer's first order."),
  `cohort_month` TIMESTAMP OPTIONS(description = 'The month the cohort belongs to, i.e the first month the customer had an order.'),
  `source_relation` STRING OPTIONS(description = 'The schema or database this record came from if you are making use of the `shopify_union_schemas` or `shopify_union_databases` variables, respectively. Empty string if you are not using either of these variables to union together multiple Shopify connectors.'),
  `order_count_in_month` INT64 OPTIONS(description = 'Number of orders purchased in the `date_month`'),
  `total_price_in_month` FLOAT64 OPTIONS(description = 'Total amount (in shop currency) purchased in the `date_month`'),
  `line_item_count_in_month` INT64 OPTIONS(description = 'Number of line items purchased in the `date_month`'),
  `total_price_lifetime` FLOAT64 OPTIONS(description = 'Total amount (in shop currency) up until and including this `date_month`.'),
  `order_count_lifetime` INT64 OPTIONS(description = 'Number of orders purchased up until and including this `date_month`.'),
  `line_item_count_lifetime` INT64 OPTIONS(description = 'Number of line items purchased up until and including this `date_month`.'),
  `cohort_month_number` INT64 OPTIONS(description = 'The number of the `date_month` of the record, i.e. how many months from their start month this cohort occurred'),
  `customer_cohort_id` STRING OPTIONS(description = 'Unique key representing a customer in a given month. Hashed on date_month,email, and source_relation.')
)
OPTIONS (description = 'Tracks customer purchase behavior over time organized by monthly cohorts, enabling analysis of customer retention and spending patterns across different customer acquisition periods.'); 


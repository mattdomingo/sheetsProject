
-- ----------------------------------------------------------------------------
-- Script to load data from source to target products table
-- ----------------------------------------------------------------------------

-- Clear the target table before inserting new data
TRUNCATE TABLE `sheets_base_schema.shopify_products`;

-- Insert data from the source table into the target table
-- Assumes a 1:1 mapping for all columns defined in the CREATE TABLE statement
INSERT INTO `sheets_base_schema.shopify_products` (
  `product_id`,
  `handle`,
  `product_type`,
  `published_scope`,
  `title`,
  `vendor`,
  `status`,
  `is_deleted`,
  `created_timestamp`,
  `updated_timestamp`,
  `published_timestamp`,
  `_fivetran_synced`,
  `source_relation`,
  `collections`,
  `tags`,
  `count_variants`,
  `has_product_image`,
  `total_quantity_sold`,
  `subtotal_sold`,
  `quantity_sold_net_refunds`,
  `subtotal_sold_net_refunds`,
  `first_order_timestamp`,
  `most_recent_order_timestamp`,
  `avg_quantity_per_order_line`,
  `product_total_discount`,
  `product_avg_discount_per_order_line`,
  `product_total_tax`,
  `product_avg_tax_per_order_line`
)
SELECT
  `product_id`,
  `handle`,
  `product_type`,
  `published_scope`,
  `title`,
  `vendor`,
  `status`,
  `is_deleted`,
  `created_timestamp`,
  `updated_timestamp`,
  `published_timestamp`,
  `_fivetran_synced`,
  `source_relation`,
  `collections`,
  `tags`,
  `count_variants`,
  `has_product_image`,
  `total_quantity_sold`,
  `subtotal_sold`,
  `quantity_sold_net_refunds`,
  `subtotal_sold_net_refunds`,
  `first_order_timestamp`,
  `most_recent_order_timestamp`,
  `avg_quantity_per_order_line`,
  `product_total_discount`,
  `product_avg_discount_per_order_line`,
  `product_total_tax`,
  `product_avg_tax_per_order_line`
FROM
  `shopify_shopify.shopify__products`;

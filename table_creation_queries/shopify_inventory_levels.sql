-- Creates the target table for Shopify inventory levels with a limited set of columns and specified types
CREATE OR REPLACE TABLE `sheets_base_schema.shopify_inventory_levels` (
  `phone` STRING OPTIONS(description = 'The phone number of the location. This value can contain special characters, such as - or +.'),
  `zip` STRING OPTIONS(description = 'The zip or postal code.'),
  `location_created_at` TIMESTAMP OPTIONS(description = 'The date and time (ISO 8601 format) when the location was created.'),
  `location_updated_at` TIMESTAMP OPTIONS(description = 'The date and time (ISO 8601 format) when the location was last updated.'),
  `variant_id` INT64 OPTIONS(description = 'The unique numeric identifier for the product variant.'),
  `product_id` INT64 OPTIONS(description = 'The unique numeric identifier for the product.'),
  `variant_title` STRING OPTIONS(description = 'The title of the product variant. The title field is a concatenation of the option1, option2, and option3 fields. You can only update title indirectly using the option fields.'),
  `variant_inventory_policy` STRING OPTIONS(description = 'Whether customers are allowed to place an order for the product variant when it\'s out of stock.'),
  `variant_price` FLOAT64 OPTIONS(description = 'The price of the product variant in shop currency.'),
  `variant_image_id` INT64 OPTIONS(description = 'The unique numeric identifier for a product\'s image. The image must be associated to the same product as the variant.'),
  `variant_fulfillment_service` STRING OPTIONS(description = '(DEPRECATED 2025-01-06) The fulfillment service associated with the product variant.'),
  `variant_inventory_management` STRING OPTIONS(description = '(DEPRECATED 2025-01-06) The fulfillment service that tracks the number of items in stock for the product variant.'),
  `is_variant_taxable` BOOLEAN OPTIONS(description = 'Whether a tax is charged when the product variant is sold.'),
  `variant_barcode` STRING OPTIONS(description = 'The barcode, UPC, or ISBN number for the product.'),
  `variant_grams` FLOAT64 OPTIONS(description = '(DEPRECATED 2025-01-06) The weight of the product variant in grams.'),
  `variant_inventory_quantity` INT64 OPTIONS(description = 'An aggregate of inventory across all locations. To adjust inventory at a specific location, use the InventoryLevel resource.'),
  `variant_weight` FLOAT64 OPTIONS(description = '(DEPRECATED 2025-01-06) The weight of the product variant in the unit system specified with weight_unit.'),
  `variant_weight_unit` STRING OPTIONS(description = '(DEPRECATED 2025-01-06) The unit of measurement that applies to the product variant\'s weight. If you don\'t specify a value for weight_unit, then the shop\'s default unit of measurement is applied. Valid values: g, kg, oz, and lb.'),
  `variant_option_1` STRING OPTIONS(description = '(DEPRECATED 2025-01-06) The custom properties that a shop owner uses to define product variants. You can define three options for a product variant: option1, option2, option3.'),
  `variant_option_2` STRING OPTIONS(description = '(DEPRECATED 2025-01-06) The custom properties that a shop owner uses to define product variants. You can define three options for a product variant: option1, option2, option3.'),
  `variant_option_3` STRING OPTIONS(description = '(DEPRECATED 2025-01-06) The custom properties that a shop owner uses to define product variants. You can define three options for a product variant: option1, option2, option3.'),
  `variant_tax_code` STRING OPTIONS(description = 'This parameter applies only to the stores that have the Avalara AvaTax app installed. Specifies the Avalara tax code for the product variant.'),
  `variant_created_at` TIMESTAMP OPTIONS(description = 'The date and time (ISO 8601 format) when the product variant was created.'),
  `variant_updated_at` TIMESTAMP OPTIONS(description = 'The date and time when the product variant was last modified. Gets returned in ISO 8601 format.'),
  `variant_is_available_for_sale` BOOLEAN OPTIONS(description = 'Indicates whether the product variant is available for sale.'),
  `variant_display_name` STRING OPTIONS(description = 'The display name of the variant, based on the product\'s title and variant\'s title.'),
  `variant_legacy_resource_id` INT64 OPTIONS(description = 'The ID of the corresponding resource in the REST Admin API.'),
  `variant_has_components_required` BOOLEAN OPTIONS(description = 'Indicates whether a product variant requires components.'),
  `variant_sellable_online_quantity` INT64 OPTIONS(description = 'The total sellable quantity of the variant for online channels.'),
  `subtotal_sold` FLOAT64 OPTIONS(description = 'Total amount (monetary, in shop currency) sold from the inventory level. Includes refunds.'),
  `quantity_sold` INT64 OPTIONS(description = 'Total quantity sold from the inventory level. Includes refunds.'),
  `count_distinct_orders` INT64 OPTIONS(description = 'The number of distinct orders placed from this inventory level.'),
  `count_distinct_customers` INT64 OPTIONS(description = 'The number of distinct customers (based on customer_id) that have placed orders against this inventory level.'),
  `count_distinct_customer_emails` INT64 OPTIONS(description = 'The number of distinct customer emails that have placed orders against this inventory level.'),
  `first_order_timestamp` TIMESTAMP OPTIONS(description = 'The timetamp of the first order against this inventory level.'),
  `last_order_timestamp` TIMESTAMP OPTIONS(description = 'The timestamp of the first order against this inventory level.'),
  `subtotal_sold_refunds` FLOAT64 OPTIONS(description = 'The monetary amount (in shop currency) of inventory level goods that have been refunded.'),
  `quantity_sold_refunds` FLOAT64 OPTIONS(description = 'The quantity of inventory level goods that have been refunded.'),
  `count_fulfillment_pending` INT64 OPTIONS(description = 'Count of currently pending distinct fulfillments for this inventory level. "Pending" = Shopify has created the fulfillment and is waiting for the third-party fulfillment service to transition it to \'open\' or \'success\'.'),
  `count_fulfillment_open` INT64 OPTIONS(description = 'Count of currently open distinct fulfillments for this inventory level. "Open" = The fulfillment has been acknowledged by the service and is in processing.'),
  `count_fulfillment_success` INT64 OPTIONS(description = 'Count of successful distinct fulfillments for this inventory level. "Success" = The fulfillment was successful.'),
  `count_fulfillment_cancelled` INT64 OPTIONS(description = 'Count of cancelled distinct fulfillments for this inventory level. "Cancelled" = The fulfillment was cancelled.'),
  `count_fulfillment_error` INT64 OPTIONS(description = 'Count of distinct fulfillments for this inventory level that encountered an error. "Error" = There was an error with the fulfillment request.'),
  `count_fulfillment_failure` INT64 OPTIONS(description = 'Count of distinct fulfillments for this inventory level that failed. "Failure" = The fulfillment request failed.'),
  `incoming_quantity` INT64 OPTIONS(description = 'The incoming quantity on its way to a merchant\'s location. Returns null if the inventory item is not tracked.'),
  `on_hand_quantity` INT64 OPTIONS(description = 'The total number of units that are physically at a location. The `on_hand` state equals the sum of inventory quantities that are in the `available`, `committed`, `reserved`, `damaged`, `safety_stock`, and `quality_control` states. Returns null if the inventory item is not tracked.'),
  `available_quantity` INT64 OPTIONS(description = 'The available quantity that a merchant can sell, determined by coalescing the `quantity` where inventory_state_name = \'available\' from `stg_shopify__inventory_quantity`and `available_quantity` from the deprecated `stg_shopify__inventory_level`. Returns null if the inventory item is not tracked.'),
  `committed_quantity` INT64 OPTIONS(description = 'The number of units that are part of a placed order but aren\'t fulfilled. When a draft order is created, the inventory isn\'t committed until the draft order is completed and an order is created. Returns null if the inventory item is not tracked.'),
  `reserved_quantity` INT64 OPTIONS(description = 'The on-hand units that are temporarily set aside. Returns null if the inventory item is not tracked.'),
  `damaged_quantity` INT64 OPTIONS(description = 'The on-hand units that aren\'t sellable or usable due to damage. Returns null if the inventory item is not tracked.'),
  `safety_stock_quantity` INT64 OPTIONS(description = 'The on-hand units that are set aside to help guard against overselling. Returns null if the inventory item is not tracked.'),
  `quality_control_quantity` INT64 OPTIONS(description = 'The on-hand units that aren\'t sellable because they\'re currently in inspection for quality purposes. Returns null if the inventory item is not tracked.'),
  `net_subtotal_sold` FLOAT64 OPTIONS(description = 'Net monetary amount sold (in shop currency) from the inventory level. Excludes refunds.'),
  `net_quantity_sold` FLOAT64 OPTIONS(description = 'Net quantity sold from this inventory level. Excludes refunds.')
)
OPTIONS (description = 'Contains processed inventory level data from Shopify (limited columns, specific types).');

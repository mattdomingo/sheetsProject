-- Creates the target table for Shopify Daily Shop with column descriptions
CREATE OR REPLACE TABLE `sheets_base_schema.shopify_daily_shop` (
  `date_day` DATE OPTIONS(description = 'Day for which the shop activity is being measured.'),
  `shop_id` FLOAT64 OPTIONS(description = 'The ID for the shop. A 64-bit unsigned integer.'),
  `name` STRING OPTIONS(description = 'The name of the shop.'),
  `domain` STRING OPTIONS(description = "The shop's domain."),
  `is_deleted` BOOL OPTIONS(description = 'Boolean representing whether the record was soft-deleted in Shopify.'),
  `currency` STRING OPTIONS(description = "The three-letter code (ISO 4217 format) for the shop's default currency."),
  `enabled_presentment_currencies` STRING OPTIONS(description = 'An array of of enabled currencies (ISO 4217 format) that the shop accepts. Merchants can enable currencies from their Shopify Payments settings in the Shopify Admin.'),
  `iana_timezone` STRING OPTIONS(description = 'The name of the timezone assigned by the [IANA](https://www.iana.org/time-zones).'),
  `created_at` TIMESTAMP OPTIONS(description = 'The date and time (ISO 8601) when the shop was created.'),
  `source_relation` STRING OPTIONS(description = 'The schema or database this record came from if you are making use of the `shopify_union_schemas` or `shopify_union_databases` variables, respectively. Empty string if you are not using either of these variables to union together multiple Shopify connectors.'),
  `count_orders` FLOAT64 OPTIONS(description = 'Count of the distinct orders placed on this day.'),
  `count_line_items` FLOAT64 OPTIONS(description = 'Count of the line items included in orders placed on this day.'),
  `avg_line_item_count` FLOAT64 OPTIONS(description = 'Average line item count for orders placed on this day.'),
  `count_customers` FLOAT64 OPTIONS(description = 'Count of distinct customers who placed an order on this day.'),
  `count_customer_emails` FLOAT64 OPTIONS(description = 'Count of distinct customer email addresses who placed an order on this day.'),
  `order_adjusted_total` FLOAT64 OPTIONS(description = 'Order total adjusted for refunds and other adjustments. The calculation used for this field is as follows: total price listed on the original order (including shipping costs and discounts) + adjustments + adjustments tax - total refunds - refunds tax The order_adjusted_total will equate to the total sales - refunds listed within the transactions table for the order (after currency exchange).'),
  `avg_order_value` FLOAT64 OPTIONS(description = 'Average adjusted total per order placed on this day (in shop currency).'),
  `shipping_cost` FLOAT64 OPTIONS(description = 'The shipping cost of the orders placed on this day (in shop currency).'),
  `order_adjustment_amount` FLOAT64 OPTIONS(description = 'Total adjustment amount (in shop currency) applied to the orders placed on this day.'),
  `order_adjustment_tax_amount` FLOAT64 OPTIONS(description = 'Total tax applied to adjustments (in shop currency) on the orders placed on this day.'),
  `refund_subtotal` FLOAT64 OPTIONS(description = 'Total refund amount applied to the orders placed on this day.'),
  `refund_total_tax` FLOAT64 OPTIONS(description = 'Total tax applied to the refund on the orders placed on this day (in shop currency).'),
  `total_discounts` FLOAT64 OPTIONS(description = "The total amount of the discount allocated to this day's orders in the shop's currency."),
  `avg_discount` FLOAT64 OPTIONS(description = 'Average total discount placed on orders on this day (in shop currency).'),
  `shipping_discount_amount` FLOAT64 OPTIONS(description = 'The total amount of discount (in shop currency) allocated toward shipping for orders placed on this day.'),
  `avg_shipping_discount_amount` FLOAT64 OPTIONS(description = 'Average discount amount (in shop currency) allocated toward shipping on orders placed on this day.'),
  `percentage_calc_discount_amount` FLOAT64 OPTIONS(description = 'The total amount of discount (in shop currency) allocated via a percentage-based discount for orders placed on this day.'),
  `avg_percentage_calc_discount_amount` FLOAT64 OPTIONS(description = 'Average discount amount (in shop currency) allocated via a percentage-based-discount on orders placed on this day.'),
  `fixed_amount_discount_amount` FLOAT64 OPTIONS(description = 'The total amount of discount (in shop currency) allocated via a fixed-amount discount for orders placed on this day.'),
  `avg_fixed_amount_discount_amount` FLOAT64 OPTIONS(description = 'Average discount amount (in shop currency) allocated via a fixed-amount-discount on orders placed on this day.'),
  `count_discount_codes_applied` FLOAT64 OPTIONS(description = 'Distinct discount codes applied by customers on orders for this day.'),
  `count_locations_ordered_from` FLOAT64 OPTIONS(description = 'Distinct locations with orders placed against them on this day.'),
  `count_orders_with_discounts` FLOAT64 OPTIONS(description = 'Count of orders in which a discount was applied.'),
  `count_orders_with_refunds` FLOAT64 OPTIONS(description = 'Count of orders in which there was a refund.'),
  `first_order_timestamp` TIMESTAMP OPTIONS(description = 'Timestamp of the first order of the day for the shop.'),
  `last_order_timestamp` TIMESTAMP OPTIONS(description = 'Timestamp of the last order of the day for the shop.'),
  `quantity_sold` FLOAT64 OPTIONS(description = 'Total quantity sold from the inventory level. Includes refunds.'),
  `quantity_refunded` FLOAT64 OPTIONS(description = 'The quantity of goods ORDERED on this day that have been refunded.'),
  `quantity_net` FLOAT64 OPTIONS(description = 'Net quantity sold from this shop on this day. Excludes refunds.'),
  `avg_quantity_sold` FLOAT64 OPTIONS(description = 'Average quantity sold per order on this day. Includes refunds. (in shop currency)'),
  `avg_quantity_net` FLOAT64 OPTIONS(description = 'Average net quantity sold per order on this day. Excludes refunds. (in shop currency)'),
  `count_variants_sold` FLOAT64 OPTIONS(description = 'Distinct product variants sold on this day (includes refunds).'),
  `count_products_sold` FLOAT64 OPTIONS(description = 'Distinct products sold on this day (includes refunds).'),
  `quantity_gift_cards_sold` FLOAT64 OPTIONS(description = 'Quantity of gift cards sold on this day.'),
  `quantity_requiring_shipping` FLOAT64 OPTIONS(description = 'Quantity of goods sold on this day that require shipping.'),
  `count_abandoned_checkouts` FLOAT64 OPTIONS(description = 'Count of abandoned checkouts on this day.'),
  `count_customers_abandoned_checkout` FLOAT64 OPTIONS(description = 'Count of distinct customers who abandoned checkouts on this day.'),
  `count_customer_emails_abandoned_checkout` FLOAT64 OPTIONS(description = 'Count of distinct customer emails who abandoned checkouts on this day.'),
  `count_fulfillment_attempted_delivery` FLOAT64 OPTIONS(description = 'Count of distinct fulfillments on this day where the delivery of the shipment was attempted, but unable to be completed.'),
  `count_fulfillment_delayed` FLOAT64 OPTIONS(description = 'Count of delayed distinct fulfillments.'),
  `count_fulfillment_delivered` FLOAT64 OPTIONS(description = 'Count of successful distinct fulfillments successfully delivered on this day.'),
  `count_fulfillment_failure` FLOAT64 OPTIONS(description = 'Count of failed distinct fulfillments on this day. Something went wrong when pulling tracking information for the shipment, such as the tracking number was invalid or the shipment was canceled.'),
  `count_fulfillment_in_transit` FLOAT64 OPTIONS(description = 'Count of distinct fulfillments in transit on this day. Each shipment is being transported between shipping facilities on the way to its destination.'),
  `count_fulfillment_out_for_delivery` FLOAT64 OPTIONS(description = 'Count of distinct fulfillments being delivered to their final destination.'),
  `count_fulfillment_ready_for_pickup` FLOAT64 OPTIONS(description = 'Count of distinct fulfillments ready for pickup at a shipping depot.'),
  `count_fulfillment_picked_up` FLOAT64 OPTIONS(description = 'Count of distinct fulfillments successfully picked up on this day.'),
  `count_fulfillment_label_printed` FLOAT64 OPTIONS(description = 'Count of distinct fulfillments for which a purchased shipping label has been printed on this day.'),
  `count_fulfillment_label_purchased` FLOAT64 OPTIONS(description = 'Count of distinct fulfillments for which a shipping label has been purchased (but not printed yet) on this day.'),
  `count_fulfillment_confirmed` FLOAT64 OPTIONS(description = 'Count of confirmed distinct fulfillments. This is the default status when no other information is available about a fulfillment.')
)
OPTIONS (description = 'Provides daily aggregated metrics for each Shopify shop, including order counts, sales figures, fulfillment statistics, and customer engagement metrics. Useful for tracking shop performance over time.'); 

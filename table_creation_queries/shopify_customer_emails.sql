-- Creates the target table for Shopify Customer Emails with column descriptions
CREATE OR REPLACE TABLE `sheets_base_schema.shopify_customer_emails` (
  `email` STRING OPTIONS(description = 'The unique email address of the customer.'),
  `source_relation` STRING OPTIONS(description = 'The schema or database this record came from, if you are unioning multiple connectors. Null if not.'),
  `customer_ids` STRING OPTIONS(description = 'Comma-separated list of customer IDs associated with the email.'),
  `phone_numbers` STRING OPTIONS(description = 'Comma-separated list of phone numbers associated with this email.'),
  `customer_tags` STRING OPTIONS(description = 'A string aggregated list of all tags associated with a customer.'),
  `first_account_created_at` TIMESTAMP OPTIONS(description = 'Timestamp of when the first account associated with this email was created.'),
  `last_account_created_at` TIMESTAMP OPTIONS(description = 'Timestamp of when the last account associated with this email was created.'),
  `last_updated_at` TIMESTAMP OPTIONS(description = 'The date and time when the customer information was last updated.'),
  `marketing_consent_updated_at` TIMESTAMP OPTIONS(description = 'The date and time when the customer consented to receive marketing material by email. If no date is provided, then the date and time when the consent information was sent is used.'),
  `last_fivetran_synced` TIMESTAMP OPTIONS(description = 'The time when a record was last updated by Fivetran.'),
  `is_tax_exempt` BOOL OPTIONS(description = "Whether the customer is exempt from paying taxes on their order. If true, then taxes won't be applied to an order at checkout. If false, then taxes will be applied at checkout."),
  `is_verified_email` BOOL OPTIONS(description = 'Whether the customer has verified their email address.'),
  `first_name` STRING OPTIONS(description = "The customer's first name."),
  `last_name` STRING OPTIONS(description = "The customer's last name."),
  `default_address_id` NUMERIC OPTIONS(description = 'The default address for the customer.'),
  `account_state` STRING OPTIONS(description = "The state of the customer's account with a shop."),
  `note` STRING OPTIONS(description = 'A note about the customer.'),
  `currency` STRING OPTIONS(description = 'The three-letter code (ISO 4217 format) for the currency that the customer used when they paid for their last order. Defaults to the shop currency. Returns the shop currency for test orders.'),
  `marketing_consent_state` STRING OPTIONS(description = "Field indicating if the customer has consented to receive marketing material via email. Coalescing of the new `email_marketing_consent_state` field and the deprecated `accepts_marketing` field. Records with the old field will be marked with '(legacy)'."),
  `marketing_opt_in_level` STRING OPTIONS(description = 'The marketing subscription opt-in level, as described in the M3AAWG Sender Best Common Practices, that the customer gave when they consented to receive marketing material by email.'),
  `lifetime_abandoned_checkouts` NUMERIC OPTIONS(description = 'Total number of abandoned checkouts abandoned by the customer.'),
  `first_order_timestamp` TIMESTAMP OPTIONS(description = 'The timestamp the customer completed their first order.'),
  `most_recent_order_timestamp` TIMESTAMP OPTIONS(description = 'The timestamp the customer completed their most recent order.'),
  `avg_order_value` FLOAT64 OPTIONS(description = 'The average order value for the customer.'),
  `lifetime_total_spent` FLOAT64 OPTIONS(description = 'The total amount of money that the customer has spent on orders across their order history (in shop currency).'),
  `lifetime_total_refunded` FLOAT64 OPTIONS(description = 'The total amount of money that the customer has been refunded on orders across their order history.'),
  `lifetime_total_net` FLOAT64 OPTIONS(description = 'The total amount of money (minus refunds) that the customer has spent across their order history.'),
  `lifetime_count_orders` NUMERIC OPTIONS(description = 'The number of orders associated with this customer.'),
  `avg_quantity_per_order` FLOAT64 OPTIONS(description = 'Average quantity of items per order customer orders.'),
  `lifetime_total_tax` FLOAT64 OPTIONS(description = 'Total amount of tax attributed to the customer.'),
  `avg_tax_per_order` FLOAT64 OPTIONS(description = 'Average tax per order attributed to the customer.'),
  `lifetime_total_discount` FLOAT64 OPTIONS(description = 'Total discounts attributed to the customer.'),
  `avg_discount_per_order` FLOAT64 OPTIONS(description = 'Average discount per order attributed to the customer.'),
  `lifetime_total_shipping` FLOAT64 OPTIONS(description = 'Total shipping costs attributed to the customer.'),
  `avg_shipping_per_order` FLOAT64 OPTIONS(description = 'Average shipping cost per order attributed to the customer.'),
  `lifetime_total_shipping_with_discounts` FLOAT64 OPTIONS(description = 'Total shipping costs after discounts attributed to the customer.'),
  `avg_shipping_with_discounts_per_order` FLOAT64 OPTIONS(description = 'Average shipping costs after discounts per order attributed to the customer.'),
  `lifetime_total_shipping_tax` FLOAT64 OPTIONS(description = 'Total shipping tax attributed to the customer.'),
  `avg_shipping_tax_per_order` FLOAT64 OPTIONS(description = 'Average shipping tax per order attributed to the customer.')
)
OPTIONS (description = 'Provides a consolidated view of customer information organized by email address, including contact details, purchase history, and lifetime metrics. Useful for customer analysis and marketing campaigns.'); 

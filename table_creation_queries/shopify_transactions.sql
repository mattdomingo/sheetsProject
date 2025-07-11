-- Creates the target table for Shopify transactions with a limited set of columns and specified types
CREATE OR REPLACE TABLE `sheets_base_schema.shopify_transactions` (
  `transaction_id` INT64 OPTIONS(description = 'The ID for the transaction.'),
  `order_id` INT64 OPTIONS(description = 'The ID for the order that the transaction is associated with.'),
  `refund_id` INT64 OPTIONS(description = 'The ID associated with a refund in the refund table.'),
  `amount` FLOAT64 OPTIONS(description = 'The amount of money included in the transaction in shop currency.'),
  `device_id` STRING OPTIONS(description = 'The ID for the device.'),
  `gateway` STRING OPTIONS(description = 'The name of the gateway the transaction was issued through.'),
  `source_name` STRING OPTIONS(description = 'The origin of the transaction.'),
  `message` STRING OPTIONS(description = 'A string generated by the payment provider with additional information about why the transaction succeeded or failed.'),
  `currency` STRING OPTIONS(description = 'The three-letter code (ISO 4217 format) for the currency used for the payment.'),
  `location_id` INT64 OPTIONS(description = 'The ID of the physical location where the transaction was processed.'),
  `parent_id` INT64 OPTIONS(description = 'The ID of an associated transaction.'),
  `payment_avs_result_code` STRING OPTIONS(description = 'The response code from the address verification system.'),
  `payment_credit_card_bin` STRING OPTIONS(description = 'The issuer identification number (IIN), formerly known as bank identification number (BIN) of the customer\'s credit card.'),
  `payment_cvv_result_code` STRING OPTIONS(description = 'The response code from the credit card company indicating whether the customer entered the card security code, or card verification value, correctly.'),
  `payment_credit_card_number` STRING OPTIONS(description = 'The customer\'s credit card number, with most of the leading digits redacted.'),
  `payment_credit_card_company` STRING OPTIONS(description = 'The name of the company that issued the customer\'s credit card.'),
  `kind` STRING OPTIONS(description = 'The transaction\'s type.'),
  `receipt` STRING OPTIONS(description = 'A transaction receipt attached to the transaction by the gateway.'),
  `currency_exchange_id` INT64 OPTIONS(description = 'The ID of the adjustment.'),
  `currency_exchange_adjustment` FLOAT64 OPTIONS(description = 'The difference between the amounts on the associated transaction and the parent transaction.'),
  `currency_exchange_original_amount` FLOAT64 OPTIONS(description = 'The amount of the parent transaction in the shop currency.'),
  `currency_exchange_final_amount` FLOAT64 OPTIONS(description = 'The amount of the associated transaction in the shop currency.'),
  `currency_exchange_currency` STRING OPTIONS(description = 'The shop currency.'),
  `error_code` STRING OPTIONS(description = 'A standardized error code, independent of the payment provider.'),
  `status` STRING OPTIONS(description = 'The status of the transaction.'),
  `user_id` STRING OPTIONS(description = 'The ID for the user who was logged into the Shopify POS device when the order was processed, if applicable.'),
  `authorization_code` STRING OPTIONS(description = 'The authorization code associated with the transaction.'),
  `created_timestamp` TIMESTAMP OPTIONS(description = 'The date and time when the transaction was created.'),
  `processed_timestamp` TIMESTAMP OPTIONS(description = 'The date and time when a transaction was processed.'),
  `authorization_expires_at` TIMESTAMP OPTIONS(description = 'Timestamp when the authorization expires.'),
  `_fivetran_synced` TIMESTAMP OPTIONS(description = 'Timestamp of the date the record was synced by Fivetran.'),
  `source_relation` STRING OPTIONS(description = 'The schema or database this record came from, if you are unioning multiple connectors. Null if not.'),
  `transactions_unique_id` STRING OPTIONS(description = 'Unique key representing a transaction. Hashed on \'transaction_id\' and \'source_relation\'.'),
  `payment_method` STRING OPTIONS(description = 'Method of payment.'),
  `parent_created_timestamp` TIMESTAMP OPTIONS(description = 'Created on timestamp of the parent transaction.'),
  `parent_kind` STRING OPTIONS(description = 'Kind of the parent transaction.'),
  `parent_amount` FLOAT64 OPTIONS(description = 'Amount of the parent transaction.'),
  `parent_status` STRING OPTIONS(description = 'Status of the parent transaction.'),
  `exchange_rate` NUMERIC OPTIONS(description = 'The exchange rate between the home currency and the currency of sale at the time of the transaction.'),
  `currency_exchange_calculated_amount` FLOAT64 OPTIONS(description = 'The total amount of the transaction with the currency exchange rate applied.')
)
OPTIONS (description = 'Contains processed transaction data from Shopify (limited columns, specific types).')

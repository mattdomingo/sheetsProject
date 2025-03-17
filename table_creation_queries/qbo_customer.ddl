CREATE TABLE `sheets_base_schema.qbo_customer` (
  `id` STRING OPTIONS(description = 'Unique identifier for the customer.'),
  `active` BOOLEAN OPTIONS(description = 'Indicates whether the customer is currently active.'),
  `balance` STRING OPTIONS(description = 'Balance for the customer.'),
  `company_name` STRING OPTIONS(description = 'Name of the company associated with the customer.'),
  `display_name` STRING OPTIONS(description = 'Display name of the customer.'),
  `email` STRING OPTIONS(description = 'Email associated with the customer.'),
  `mobile_number` STRING OPTIONS(description = 'Mobile number of the customer.'),
  `phone_number` STRING OPTIONS(description = 'Phone number of the customer.'),
  `title` STRING OPTIONS(description = 'Title of the customer.')
)
OPTIONS (description = 'This table contains customer information from QuickBooks.');

CREATE TABLE `sheets_base_schema.qbo_vendor` (
    `id` STRING OPTIONS(description = 'Unique identifier for the account.'),
    `active` BOOLEAN OPTIONS(description = 'Indicates whether the vendor is currently active.'),
    `company_name` STRING OPTIONS(description = 'Name of the company associated with the account.'),
    `display_name` STRING OPTIONS(description = 'Display name of the account.'),
    `email` STRING OPTIONS(description = 'Email associated with the account.')
)
OPTIONS (description = 'This table contains vendor information from QuickBooks.');

-- Creates the target table for QuickBooks Profit and Loss with column descriptions
CREATE OR REPLACE TABLE `sheets_base_schema.qbo_profit_and_loss` (
  `calendar_date` DATE OPTIONS(description = 'Timestamp of the first calendar date of the month. This is slated to be deprecated, and the fields `period_first_day` and `period_last_day` are both offered as replacements, depending on how your company performs their financial reporting.'),
  `period_first_day` DATE OPTIONS(description = 'Timestamp of the first date of the month.'),
  `period_last_day` DATE OPTIONS(description = 'Timestamp of the last date of the month.'),
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be null.'),
  `account_class` STRING OPTIONS(description = 'Class of the account associated with the profit and loss line.'),
  `class_id` STRING OPTIONS(description = 'Reference to the class associated with the record.'),
  `is_sub_account` BOOLEAN OPTIONS(description = 'Boolean indicating whether the account is a sub account (true) or a parent account (false).'),
  `parent_account_number` STRING OPTIONS(description = 'The parent account number. If the account is the parent account then the account number is recorded.'),
  `parent_account_name` STRING OPTIONS(description = 'The parent account name. If the account is the parent account then the account name is recorded.'),
  `account_type` STRING OPTIONS(description = 'The type of account associated with the profit and loss line.'),
  `account_sub_type` STRING OPTIONS(description = 'Sub type of the account associated with the profit and loss line.'),
  `account_number` STRING OPTIONS(description = 'User defined number of the account.'),
  `account_id` STRING OPTIONS(description = 'The identifier of the account associated with the record.'),
  `account_name` STRING OPTIONS(description = 'Name of the account associated with the profit and loss line.'),
  `amount` BIGNUMERIC OPTIONS(description = 'The total period net change for the period.'),
  `converted_amount` BIGNUMERIC OPTIONS(description = 'The total period net change for the period, converted with exchange rates applied if available.'),
  `account_ordinal` INT64 OPTIONS(description = 'Integer value to order the account within final financial statement reporting. The customer can also configure the ordinal; [see the README for details](https://github.com/fivetran/dbt_quickbooks/blob/main/README.md#customize-the-account-ordering-of-your-profit-loss-and-balance-sheet-models)')
)
OPTIONS (description = 'Contains all revenue and expense account classes by calendar year and month enriched with account type, class, and parent information, as well as ordering configuration. This table can be used to generate a profit and loss statement for your business.'); 
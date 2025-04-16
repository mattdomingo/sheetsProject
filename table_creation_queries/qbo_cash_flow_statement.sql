-- Creates the target table for QuickBooks Cash Flow Statement with column descriptions
CREATE OR REPLACE TABLE `sheets_base_schema.qbo_cash_flow_statement` (
  `cash_flow_period` DATE OPTIONS(description = 'Timestamp of the first date for the cash flow period.'),
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be null.'),
  `account_class` STRING OPTIONS(description = 'Class of the account associated with the cash flow line.'),
  `class_id` STRING OPTIONS(description = 'Reference to the class associated with the account.'),
  `is_sub_account` BOOLEAN OPTIONS(description = 'Boolean indicating whether the account is a sub account (true) or a parent account (false).'),
  `parent_account_number` STRING OPTIONS(description = 'The parent account number. If the account is the parent account then the account number is recorded.'),
  `parent_account_name` STRING OPTIONS(description = 'The parent account name. If the account is the parent account then the account name is recorded.'),
  `account_type` STRING OPTIONS(description = 'The type of account associated with the cash flow line.'),
  `account_sub_type` STRING OPTIONS(description = 'Sub type of the account associated with the cash flow line.'),
  `account_number` STRING OPTIONS(description = 'User defined number of the account.'),
  `account_id` STRING OPTIONS(description = 'The identifier of the account associated with the cash flow line.'),
  `account_name` STRING OPTIONS(description = 'Name of the account associated with the cash flow line.'),
  `cash_ending_period` BIGNUMERIC OPTIONS(description = 'The total ending period balance cash for every cash flow account line.'),
  `cash_converted_ending_period` BIGNUMERIC OPTIONS(description = 'The total ending period balance cash, converted with exchange rates applied if available, for every cash flow account line.'),
  `account_unique_id` STRING OPTIONS(description = 'Unique identifier of the cash flow statement account line, dependent on account_id, class_id, source_relation and calendar_date.'),
  `cash_flow_type` STRING OPTIONS(description = 'The type of cash flow (Defaults are Cash or Cash Equivalents, Investing, Operating, Financing). The customer can also configure the cash flow type; [see the README for details](https://github.com/fivetran/dbt_quickbooks/blob/main/README.md#customize-the-cash-flow-model).'),
  `cash_flow_ordinal` INT64 OPTIONS(description = 'Integer value to order the account within final cash flow statement reporting. The customer can also configure the ordinal; [see the README for details](https://github.com/fivetran/dbt_quickbooks/blob/main/README.md#customize-the-cash-flow-model).'),
  `cash_beginning_period` BIGNUMERIC OPTIONS(description = 'The total beginning period balance cash for every cash flow account line.'),
  `cash_net_period` BIGNUMERIC OPTIONS(description = 'The net cash change from the beginning to the end of the period for every cash flow account line.'),
  `cash_converted_beginning_period` BIGNUMERIC OPTIONS(description = 'The total beginning period balance cash, converted with exchange rates applied if available, for every cash flow account line.'),
  `cash_converted_net_period` BIGNUMERIC OPTIONS(description = 'The net cash change, converted with exchange rates applied if available, from the beginning to the end of the period for every cash flow account line.')
)
OPTIONS (description = 'Contains all cash or cash equivalents, investing, operating, and financing cash flow types by calendar year and month enriched with account information. This table can be used to generate a cash flow statement for your business.'); 
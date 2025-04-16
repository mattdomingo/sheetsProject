-- Creates the target table for QuickBooks General Ledger By Period with column descriptions
CREATE OR REPLACE TABLE `sheets_base_schema.qbo_general_ledger_by_period` (
  `account_id` STRING OPTIONS(description = 'The identifier of the account associated with the period balance transactions.'),
  `source_relation` STRING OPTIONS(description = 'The source of the record if the unioning functionality is being used. If not this field will be null.'),
  `account_number` STRING OPTIONS(description = 'User defined number of the account. with the account.'),
  `account_name` STRING OPTIONS(description = 'Name of the account associated with the period balance transactions.'),
  `is_sub_account` BOOLEAN OPTIONS(description = 'Boolean indicating whether the account is a sub account (true) or a parent account (false).'),
  `parent_account_number` STRING OPTIONS(description = 'The parent account number. If the account is the parent account then the account number is recorded.'),
  `parent_account_name` STRING OPTIONS(description = 'The parent account name. If the account is the parent account then the account name is recorded.'),
  `account_type` STRING OPTIONS(description = 'The type of account associated with the period balance transactions.'),
  `account_sub_type` STRING OPTIONS(description = 'Sub type of the account associated with the period balance transactions.'),
  `account_class` STRING OPTIONS(description = 'Class of the account associated with the period balance transactions.'),
  `class_id` STRING OPTIONS(description = 'Reference to the class associated with the period balance transactions.'),
  `financial_statement_helper` STRING OPTIONS(description = 'Helper field identifying whether the account impacts the balances sheet or income statement.'),
  `date_year` DATE OPTIONS(description = 'Timestamp of the year.'),
  `period_first_day` DATE OPTIONS(description = 'Timestamp of the first date of the month.'),
  `period_last_day` DATE OPTIONS(description = 'Timestamp of the last date of the month.'),
  `period_net_change` BIGNUMERIC OPTIONS(description = 'Account balance difference from the beginning and ending of the period.'),
  `period_beginning_balance` BIGNUMERIC OPTIONS(description = 'Balance of the account as of the first date of the period.'),
  `period_ending_balance` BIGNUMERIC OPTIONS(description = 'Sum of all transaction line adjusted_balances of the account for the period.'),
  `period_net_converted_change` BIGNUMERIC OPTIONS(description = 'Account balance difference, converted with exchange rates applied if available, from the beginning and ending of the period.'),
  `period_beginning_converted_balance` BIGNUMERIC OPTIONS(description = 'Balance of the account, converted with exchange rates applied if available, as of the first date of the period.'),
  `period_ending_converted_balance` BIGNUMERIC OPTIONS(description = 'Sum of all transaction line adjusted_balances of the account for the period, converted with exchange rates applied if available.'),
  `account_ordinal` INT64 OPTIONS(description = 'Integer value to order the account within final financial statement reporting. The customer can also configure the ordinal; [see the README for details](https://github.com/fivetran/dbt_quickbooks/blob/main/README.md#customize-the-account-ordering-of-your-profit-loss-and-balance-sheet-models)')
)
OPTIONS (description = 'Contains the beginning balance, ending balance, and net change of amounts for each account by month since the first transaction. This table can be used to generate balance sheets and income statements.'); 
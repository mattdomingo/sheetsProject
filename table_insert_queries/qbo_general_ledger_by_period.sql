TRUNCATE TABLE `sheets_base_schema.qbo_general_ledger_by_period`;

-- Insert data from the source table into the target table
-- Assumes a 1:1 mapping for all columns defined in the CREATE TABLE statement
-- !! IMPORTANT: Verify the source table name in the FROM clause below !!
INSERT INTO `sheets_base_schema.qbo_general_ledger_by_period` (
  `account_id`,
  `source_relation`,
  `account_number`,
  `account_name`,
  `is_sub_account`,
  `parent_account_number`,
  `parent_account_name`,
  `account_type`,
  `account_sub_type`,
  `account_class`,
  `class_id`,
  `financial_statement_helper`,
  `date_year`,
  `period_first_day`,
  `period_last_day`,
  `period_net_change`,
  `period_beginning_balance`,
  `period_ending_balance`,
  `period_net_converted_change`,
  `period_beginning_converted_balance`,
  `period_ending_converted_balance`,
  `account_ordinal`
)
SELECT
  `account_id`,
  `source_relation`,
  `account_number`,
  `account_name`,
  `is_sub_account`,
  `parent_account_number`,
  `parent_account_name`,
  `account_type`,
  `account_sub_type`,
  `account_class`,
  `class_id`,
  `financial_statement_helper`,
  `date_year`,
  `period_first_day`,
  `period_last_day`,
  `period_net_change`,
  `period_beginning_balance`,
  `period_ending_balance`,
  `period_net_converted_change`,
  `period_beginning_converted_balance`,
  `period_ending_converted_balance`,
  `account_ordinal`
FROM
  `quickbooks_quickbooks.quickbooks__general_ledger_by_period`;
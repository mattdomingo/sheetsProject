TRUNCATE TABLE `sheets_base_schema.qbo_general_ledger`;

-- Insert data from the source table into the target table
-- Assumes a 1:1 mapping for all columns defined in the CREATE TABLE statement
-- !! IMPORTANT: Verify the source table name in the FROM clause below !!
INSERT INTO `sheets_base_schema.qbo_general_ledger` (
  `source_relation`,
  `transaction_id`,
  `transaction_type`,
  `transaction_date`,
  `transaction_index`,
  `document_number`,
  `memo`,
  `is_adjustment`,
  `is_closing`,
  `account_id`,
  `account_name`,
  `account_type`,
  `account_sub_type`,
  `account_number`,
  `customer_id`,
  `customer_name`,
  `vendor_id`,
  `vendor_name`,
  `transaction_amount`,
  `transaction_amount_base`,
  `non_posting_transaction`
)
SELECT
  `source_relation`,
  `transaction_id`,
  `transaction_type`,
  `transaction_date`,
  `transaction_index`,
  `document_number`,
  `memo`,
  `is_adjustment`,
  `is_closing`,
  `account_id`,
  `account_name`,
  `account_type`,
  `account_sub_type`,
  `account_number`,
  `customer_id`,
  `customer_name`,
  `vendor_id`,
  `vendor_name`,
  `transaction_amount`,
  `transaction_amount_base`,
  `non_posting_transaction`
FROM
  `quickbooks_quickbooks.quickbooks__general_ledger`;
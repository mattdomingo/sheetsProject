TRUNCATE TABLE `sheets_base_schema.qbo_vendor`;

INSERT INTO `sheets_base_schema.qbo_vendor` (
  id,
  active,
  company_name,
  display_name,
  email
)
SELECT
  id,
  active,
  company_name,
  display_name,
  email
FROM
  `quickbooks.vendor`;

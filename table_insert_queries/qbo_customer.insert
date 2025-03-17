TRUNCATE TABLE `sheets_base_schema.qbo_customer`;

INSERT INTO `sheets_base_schema.qbo_customer` (
  `id`,
  `active`,
  `balance`,
  `company_name`,
  `display_name`,
  `email`,
  `mobile_number`,
  `phone_number`,
  `title`
)
SELECT
  id,
  active,
  balance,
  company_name,
  display_name,
  email,
  mobile_number,
  phone_number,
  title
FROM `quickbooks.customer`

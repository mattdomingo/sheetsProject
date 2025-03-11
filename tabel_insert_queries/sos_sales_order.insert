TRUNCATE TABLE `sheets_base_schema.sos_sales_order`;

INSERT INTO `sheets_base_schema.sos_sales_order`
SELECT 
  TRIM(JSON_EXTRACT_SCALAR(so.id, "$")) AS id,
  TRIM(JSON_EXTRACT_SCALAR(customer_name, "$")) AS customer_name,
  TIMESTAMP(JSON_EXTRACT_SCALAR(so.date, "$")) AS submission_date,
  CASE 
    WHEN JSON_EXTRACT_SCALAR(so.earliestDueDate, "$") = "" THEN TIMESTAMP(JSON_EXTRACT_SCALAR(so.date, "$"))
    ELSE TIMESTAMP(JSON_EXTRACT_SCALAR(so.earliestDueDate, "$"))
  END AS due_date,
  TRIM(JSON_EXTRACT_SCALAR(so.terms_name, "$")) AS terms,
  TRIM(JSON_EXTRACT_SCALAR(so.customerNotes, "$")) AS cust_notes,
  CAST(TRIM(JSON_EXTRACT_SCALAR(so.subTotal, "$")) as FLOAT64) AS subtotal,
  CAST(TRIM(JSON_EXTRACT_SCALAR(so.discountAmount, "$")) as FLOAT64) AS discount_amt,
  CAST(TRIM(JSON_EXTRACT_SCALAR(so.taxAmount, "$")) as FLOAT64) AS tax_amt,
  CAST(TRIM(JSON_EXTRACT_SCALAR(so.shippingAmount, "$")) as FLOAT64) AS shipping_amt,
  CAST(TRIM(JSON_EXTRACT_SCALAR(so.total, "$")) as FLOAT64) AS total,
  TRIM(JSON_EXTRACT_SCALAR(so.closed, "$")) AS closed_status
FROM `sos_inventory.vw_sales_order` AS so


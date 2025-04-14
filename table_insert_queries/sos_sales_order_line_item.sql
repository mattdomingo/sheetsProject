TRUNCATE TABLE `sheets_base_schema.sos_sales_order_line_item`;

INSERT INTO `sheets_base_schema.sos_sales_order_line_item`
SELECT 
  CAST(TRIM(JSON_EXTRACT_SCALAR(line.id, "$")) as STRING) AS id,
  CAST(TRIM(JSON_EXTRACT_SCALAR(so.id, "$")) as STRING) AS order_id,
  CAST(JSON_EXTRACT_SCALAR(line.amount, "$") AS FLOAT64) AS amount,
  TRIM(JSON_EXTRACT_SCALAR(line.description, "$")) AS description,
  CASE 
    WHEN TRIM(JSON_EXTRACT_SCALAR(line.duedate, "$")) = "" OR JSON_EXTRACT_SCALAR(line.duedate, "$") IS NULL THEN NULL
    ELSE TIMESTAMP(JSON_EXTRACT_SCALAR(line.duedate, "$"))
  END AS due_date,
  CAST(SAFE_CAST(JSON_EXTRACT_SCALAR(line.invoiced, "$") AS FLOAT64) AS INT64) as invoiced,
  CAST(SAFE_CAST(JSON_EXTRACT_SCALAR(line.quantity, "$") AS FLOAT64) AS INT64) as quantity,
  CAST(JSON_EXTRACT_SCALAR(line.unitprice, "$") AS FLOAT64) as unitprice,
  CAST(JSON_EXTRACT_SCALAR(line.item, "$.id") AS STRING) AS item_id,
  TRIM(JSON_EXTRACT_SCALAR(line.item, "$.name")) AS item_name
FROM `sos_inventory.vw_sales_order` AS so,
UNNEST(JSON_EXTRACT_ARRAY(so.lines, "$")) AS line;

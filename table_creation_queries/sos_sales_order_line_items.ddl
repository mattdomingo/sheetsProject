CREATE TABLE `sheets_base_schema.sales_order_line_item` (
  `id` STRING OPTIONS(description = 'this is a unique identifier of the individual line item in SOS'),
  `order_id` STRING OPTIONS(description = 'this is a unique identifier for the overal order of which this row is a sub-component of. This ties to the parent order via this key'),
  `amount` FLOAT64 OPTIONS (description = 'this is the total USD value of the product on this line item and in the parent order'),
  `description` STRING OPTIONS (description = 'this is the description used by the company to identify the product being sold'),
  `due_date` TIMESTAMP OPTIONS (description = 'this is the date of which the parent order is due by to the purchaser. At times, the line items will have different due dates than the parent order, but this is only caused by delays in product availability'),
  `invoiced` INT64 OPTIONS (description = 'this is the number of units of the SKU / item that were invoiced to the customer'),
  `quantity` INT64 OPTIONS (description = 'this is the number of units of the SKU / item that were requested by the customer'),
  `unitprice` INT64 OPTIONS (description = 'this is the price per unit of the SKU / item that was quoted to the customer'),
  `item_id` STRING OPTIONS (description = 'this is the unique identifier of the product / item that is on the line_item'),
  `item_name` STRING OPTIONS (description = 'this is the name  of the product / item that is on the line_item, it will often match the description field')
  
)
OPTIONS (
  description = 'This table holds data for sales orders that have been input into SOS Inventory, an inventory and order management system. This table has the specific line items / products that are included in the top-level order'
);

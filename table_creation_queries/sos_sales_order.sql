CREATE TABLE `sheets_base_schema.sos_sales_order` (
  `id` STRING OPTIONS(description = 'this is a unique identifier of the individual sales order in SOS'),
  `customer_name` STRING OPTIONS(description = 'this is the name of the customer placing the sales order request'),
  `submission_date` TIMESTAMP OPTIONS (description = 'this is the date that the sales order was input into the system'),
  `due_date` TIMESTAMP OPTIONS (description = 'this is the date of which the order is due by to the purchaser. At times, the line items will have different due dates than the parent order, but this is only caused by delays in product availability'),
  `terms` STRING OPTIONS (description = 'this is payment terms for the customer to pay back the client'),
  `cust_notes` STRING OPTIONS (description = 'these are handwritten notes input by an employee of the client to add context to the order'),
  `subtotal` FLOAT64 OPTIONS (description = 'this is the price of the products on the entire order that was quoted to the customer before discounts and other items are applied. It is calculated by summing the line item amounts.'),
  `discount_amt` FLOAT64 OPTIONS (description = 'this is the dollar amount applied as a discount to the customers order.'),
  `tax_amt` FLOAT64 OPTIONS (description = 'this is the dollar amount applied as a tax to the customers order.'),
  `shipping_amt` FLOAT64 OPTIONS (description = 'this is the dollar amount applied as a cost of shipping to the customers order.'),
  `total` FLOAT64 OPTIONS (description = 'this is the dollar amount that the customer will be billed for. It includes taxes, discounts, shipping, and base prices'),
  `closed_status` STRING OPTIONS (description = 'this is the true / false field that indicates whether the sales order has been delivered and invoiced [true] or if it is still waiting to be fulfilled [false]')
  
)
OPTIONS (
  description = 'This table holds data for sales orders that have been input into SOS Inventory, an inventory and order management system. This table has the top-level orders and have child line items that inform the values of the field on this item'
);

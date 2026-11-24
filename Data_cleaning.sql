SELECT DISTINCT
    Invoice,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    Price,
    "Customer ID" AS CustomerID,
    Country,
    (Quantity * Price) AS TotalRevenue
FROM raw_orders
WHERE "Customer ID" IS NOT NULL
  AND Quantity > 0
  AND Price > 0
  AND Invoice NOT LIKE 'C%';
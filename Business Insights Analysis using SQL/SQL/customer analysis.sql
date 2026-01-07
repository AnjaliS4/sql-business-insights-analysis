
                            -------  Customer-Centric Analysis --------

-- Total Sales per Customer

USE AdventureWorks2019;

 select sc.CustomerID, ISNULL (sum(sd.OrderQty * sd.UnitPrice), 0) as  total_sales
 from Sales.Customer as sc
   LEFT JOIN Sales.SalesOrderHeader so
   on sc.CustomerID = so.CustomerID
      LEFT JOIN Sales.SalesOrderDetail as sd 
    on so.SalesOrderID = sd.SalesOrderID
group by sc.CustomerID; 


-- Average order value per customer 
WITH OrderTotals AS (
    SELECT
        so.CustomerID,
        so.SalesOrderID,
        SUM(sd.OrderQty * sd.UnitPrice) AS order_total
    FROM Sales.SalesOrderHeader so
    JOIN Sales.SalesOrderDetail sd
        ON so.SalesOrderID = sd.SalesOrderID
    GROUP BY so.CustomerID, so.SalesOrderID
)
SELECT
    sc.CustomerID,
    ISNULL(AVG(ot.order_total), 0) AS average_order_value
FROM Sales.Customer sc
LEFT JOIN OrderTotals ot
    ON sc.CustomerID = ot.CustomerID
GROUP BY sc.CustomerID
ORDER BY average_order_value DESC;


-- Customers with No Orders
select sc.CustomerID, sh.SalesOrderID 
from sales.Customer as sc 
left join sales.SalesOrderHeader as sh 
on sc.CustomerID = sh.CustomerID
where sh.SalesOrderID is null
ORDER BY sc.CustomerID; 
   

   
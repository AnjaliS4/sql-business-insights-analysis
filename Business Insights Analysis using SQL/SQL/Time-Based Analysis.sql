                                          ------ Time-Based Analysis: Monthly Sales Trend ------- 
USE AdventureWorks2019;
SELECT
    YEAR(so.OrderDate) AS SalesYear,
    MONTH(so.OrderDate) AS SalesMonth,
    SUM(sd.OrderQty * sd.UnitPrice) AS MonthlyRevenue
FROM Sales.SalesOrderHeader AS so
JOIN Sales.SalesOrderDetail AS sd
    ON so.SalesOrderID = sd.SalesOrderID
GROUP BY
    YEAR(so.OrderDate),
    MONTH(so.OrderDate)
ORDER BY
    SalesYear,
    SalesMonth;



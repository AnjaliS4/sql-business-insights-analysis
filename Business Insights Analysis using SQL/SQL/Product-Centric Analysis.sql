                                                ----- Product-Centric Analysis ----- 

-- Top 5 Products by Revenue per Category
WITH revenue_cte AS (
    SELECT
        sod.ProductID,
        SUM(sod.OrderQty * sod.UnitPrice) AS total_revenue
    FROM Sales.SalesOrderDetail sod
    GROUP BY sod.ProductID
),
ranked_cte AS (
    SELECT
        c.ProductCategoryID,
        c.Name AS CategoryName,
        p.ProductID,
        p.Name AS ProductName,
        cte.total_revenue,
        ROW_NUMBER() OVER (
            PARTITION BY c.ProductCategoryID
            ORDER BY cte.total_revenue DESC
        ) AS rn
    FROM revenue_cte cte
    JOIN Production.Product p
        ON cte.ProductID = p.ProductID
    JOIN Production.ProductSubcategory s
        ON p.ProductSubcategoryID = s.ProductSubcategoryID
    JOIN Production.ProductCategory c
        ON s.ProductCategoryID = c.ProductCategoryID
)
SELECT *
FROM ranked_cte
WHERE rn <= 5
ORDER BY ProductCategoryID, rn;

-- Products without Category and Subcategory
select pp.ProductID, pp.name, ps.Name, pc.Name, pc.ProductCategoryID, ps.ProductSubcategoryID
from Production.Product  as pp 
left join Production.ProductSubcategory as ps 
on pp.ProductSubcategoryID = ps.ProductSubcategoryID
left join Production.ProductCategory as pc 
on ps.ProductCategoryID = pc.ProductCategoryID
where ps.ProductCategoryID is NULL 
or pp.ProductSubcategoryID is NULL 
order by pp.ProductID;
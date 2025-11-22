use master
go

use online_sales
go

create database online_sales
go

--To find the schema of Database
sp_helpdb online_sales
go

select*from sales
go

--To find the schema of Table
sp_help sales	
go

SELECT
    YEAR(order_date) AS [year],
    MONTH(order_date) AS [month],
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM sales
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    YEAR(order_date),
    MONTH(order_date);

	
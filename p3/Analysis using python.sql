SELECT * FROM Sales;
--------------------------
SELECT 
	MONTH(Date) AS 'MONTH' , AVG(TotalPrice) AS 'AVG SALES'
FROM 
	sales
WHERE 
	OrderStatus = 'Delivered'
GROUP BY
	MONTH(Date)
--------------------------------
SELECT 
	MONTH(Date) AS 'MONTH', COUNT(CouponCode) AS 'COUNT OF OFFERS '  , AVG(TotalPrice) AS 'AVG SALES'
FROM 
	sales
WHERE 
	CouponCode != 'No Coupon' AND OrderStatus = 'Delivered'
GROUP BY 
	MONTH(Date)
ORDER BY 
	MONTH(Date) ASC

-------------------------------------
SELECT
	CouponCode,COUNT(OrderID) AS 'ORDERS'
FROM
	Sales
WHERE 
	OrderStatus = 'Delivered'
GROUP BY
	CouponCode
ORDER BY 
	COUNT(OrderID) DESC

--------------------------------------
SELECT
	CouponCode,COUNT(OrderID) AS 'ORDERS'
FROM
	Sales
WHERE 
	OrderStatus != 'Cancelled' AND OrderStatus != 'Returned'
GROUP BY
	CouponCode
ORDER BY 
	COUNT(OrderID) DESC
--------------------------------------------------------------
SELECT 
	MONTH(Date) , Product , AVG(UnitPrice)
FROM 
	sales
GROUP BY 
	MONTH(Date) , Product 
ORDER BY 
	MONTH(Date) ASC
------------------------------------------------------------------
-- WHAT IS THIS DATASET !!!!!!!!!!!!!!!???????????
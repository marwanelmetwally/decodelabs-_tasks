SELECT * FROM Sales;
-----------------------------



--Q1 ) WHAT IS THE BEST YEAR AND WORTHEST YEAR ?

SELECT
	YEAR(DATE) AS 'YEAR',SUM(Quantity) AS 'TOTAL OF QUANTITIES'  ,SUM(TotalPrice) AS 'TOTAL REVENUE' 
FROM 
	sales
WHERE
	OrderStatus = 'Delivered'
GROUP BY
	YEAR(DATE);
-- S1)حصل هبوط رهيب في سنه 2025 بينما كان العواد متقاربه مابين سنه 2023و2024 حصل تطور طبيعي 



--------------------------------------------------------------------------------------------



--Q2 ) WHAT IS THE BEST PRODUCT AND WORTHEST PRODUCT ?

SELECT
	Product ,SUM(Quantity) AS 'TOTAL OF QUANTITIES'  ,SUM(TotalPrice) AS 'TOTAL REVENUE' 
FROM 
	sales
WHERE
	OrderStatus = 'Delivered'
GROUP BY
	Product
ORDER BY 
	'TOTAL REVENUE' DESC;
--S1 ) LAPTOP IS THE BEST , DESK IS THE WORTHEST



----------------------------------------------------------------------------------------------



--Q3 ) WHAT IS THE BEST REFERRAL SOURCE ?
SELECT
	ReferralSource ,SUM(TotalPrice) AS 'TOTAL REVENUE' 
FROM 
	sales
WHERE
	OrderStatus = 'Delivered'
GROUP BY
	ReferralSource
ORDER BY
	'TOTAL REVENUE' DESC;
--S3	EMAIL > FACEBOOK > INSTAGRAM > GOOGLE > REFERRAL 



--------------------------------------------------------------------------------------
--4)  TOP 10 CUSTOMERS ?
SELECT 
	CustomerID , SUM(TotalPrice) AS TOTALSALES 
FROM 
	Sales
GROUP BY 
	CustomerID
ORDER BY 
	TOTALSALES DESC;
-------------------------------------------------------------------------------------
-- WHY 2025 VERY BAD ?


SELECT
	MONTH(DATE) AS 'MONTH25',SUM(Quantity) AS 'TOTAL OF QUANTITIES'  ,SUM(TotalPrice) AS 'TOTAL REVENUE' 
FROM 
	sales
WHERE
	OrderStatus = 'Delivered' AND YEAR(DATE) = 2025
GROUP BY
	MONTH(DATE);




SELECT
	MONTH(DATE) AS 'MONTH25',SUM(Quantity) AS 'TOTAL OF QUANTITIES'  ,SUM(TotalPrice) AS 'TOTAL REVENUE' 
FROM 
	sales
WHERE
	OrderStatus = 'Delivered' AND YEAR(DATE) IN ( 2023,2024)
GROUP BY
	MONTH(DATE);

-- عندي داتا مفقوده في 2025
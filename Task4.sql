SELECT * FROM ecommerece limit 5;

SELECT * FROM ecommerece
WHERE Location = 'Chicago';

SELECT * FROM ecommerece
WHERE Coupon_Status = 'Used';

SELECT *, (Online_Spend + Offline_Spend) AS Total_Spend
FROM ecommerece
ORDER BY Total_Spend DESC
LIMIT 10;

SELECT Product_Category, SUM(Quantity) AS Total_Sold
FROM ecommerece
GROUP BY Product_Category;

SELECT Location, AVG(Online_Spend + Offline_Spend) AS Avg_Total_Spend
FROM ecommerece
GROUP BY Location;

SELECT CustomerID, SUM(Online_Spend + Offline_Spend) AS Total_Spent
FROM ecommerece
GROUP BY CustomerID
HAVING Total_Spent > (
    SELECT AVG(Online_Spend + Offline_Spend)
    FROM ecommerece
);

CREATE VIEW high_spenders AS
SELECT CustomerID, SUM(Online_Spend + Offline_Spend) AS Total_Spend
FROM ecommerece
GROUP BY CustomerID
HAVING Total_Spend > 5000;
SELECT * FROM high_spenders;

CREATE INDEX idx_customer_id ON ecommerece (CustomerID);
CREATE INDEX idx_location ON ecommerece (Location);

SELECT Gender,
       AVG(Online_Spend) AS Avg_Online,
       AVG(Offline_Spend) AS Avg_Offline
FROM ecommerece
GROUP BY Gender;

SELECT 
    t.CustomerID,
    c.First_Name,
    t.Transaction_ID
FROM Transactions t
LEFT JOIN Customers c ON t.CustomerID = c.CustomerID

UNION

SELECT 
    t.CustomerID,
    c.First_Name,
    t.Transaction_ID
FROM Transactions t
RIGHT JOIN Customers c ON t.CustomerID = c.CustomerID;

SELECT 
    c.CustomerID,
    c.First_Name,
    t.Transaction_ID,
    t.Product_SKU
FROM Transactions t
RIGHT JOIN Customers c ON t.CustomerID = c.CustomerID;

SELECT 
    t.Transaction_ID,
    t.CustomerID,
    c.First_Name,
    c.Last_Name,
    t.Product_SKU,
    t.Quantity,
    t.Avg_Price
FROM Transactions t
LEFT JOIN Customers c ON t.CustomerID = c.CustomerID;

SELECT 
    t.CustomerID,
    c.First_Name,
    c.Last_Name,
    t.Transaction_ID,
    t.Product_SKU,
    t.Quantity,
    t.Avg_Price,
    t.Transaction_Date
FROM Transactions t
INNER JOIN Customers c ON t.CustomerID = c.CustomerID;



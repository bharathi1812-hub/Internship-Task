 create database task7;
 use task7;
 CREATE TABLE Customers (CustomerID INT PRIMARY KEY, CustomerName VARCHAR(50));
 CREATE TABLE Orders (OrderID INT PRIMARY KEY,CustomerID INT);
 INSERT INTO Customers (CustomerID, CustomerName) VALUES (1, 'Alice'),(2, 'Bob'),(3, 'Charlie'),(4, 'David');
 INSERT INTO Orders (OrderID, CustomerID) VALUES (101, 1),(102, 2),(105,4);

 SELECT c.CustomerName, o.OrderID FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

 SELECT c.CustomerName, o.OrderID FROM Customers c LEFT JOIN Orders o
 ON c.CustomerID = o.CustomerID;

INSERT INTO Orders (OrderID, CustomerID) VALUES (103, 4);

SELECT o.OrderID, o.CustomerID FROM Orders o LEFT JOIN Customers c
ON o.CustomerID = c.CustomerID WHERE c.CustomerID IS NULL;

SELECT c.CustomerName, o.OrderID FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
UNION
SELECT c.CustomerName, o.OrderID FROM Customers c RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;
INSERT INTO Orders (OrderID, CustomerID) VALUES (104, 1);

SELECT c.CustomerName, COUNT(o.OrderID) AS TotalOrders FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID GROUP BY c.CustomerName;







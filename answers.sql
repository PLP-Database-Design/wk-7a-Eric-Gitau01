--Question 1
CREATE TABLE productDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(50)
);

INSERT INTO productDetail_1NF (OrderID, CustomerName, Product) VALUES
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (101, 'Jane Smith', 'Tablet'),
    (101, 'Jane Smith', 'Keyboard'),
    (101, 'Jane Smith', 'Mouse'),
    (101, 'Emily Clark', 'Phone');

--question 2
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
)

CREATE TABLE OrderDetails_2NF (
    OrderID INT,
    Product VARCHAR(50),
    Quality INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderDetails_2NF (OrderID, Product, Quality) VALUES
    (101, 'laptop', 2),
    (101, 'Mouse', 1),
    (101, 'Tablet', 3),
    (101, 'Keyboard', 1),
    (101, 'Mouse', 2),
    (101, 'Mouse', 2),
    (101, 'Phone', 2);
CREATE TABLE Sales (
    SalesID INT PRIMARY KEY IDENTITY(1,1),
    DateKey INT NOT NULL,
    ProductKey INT NOT NULL,
    StoreKey INT NOT NULL,
    SalesAmount MONEY NOT NULL
);

CREATE TABLE Date (
    DateKey INT PRIMARY KEY,
    Date DATE NOT NULL
);

CREATE TABLE Product (
    ProductKey INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL
);

CREATE TABLE Store (
    StoreKey INT PRIMARY KEY,
    StoreName VARCHAR(100) NOT NULL
);

ALTER TABLE Sales 
ADD CONSTRAINT FK_Sales_Date 
    FOREIGN KEY (DateKey) 
    REFERENCES Date (DateKey);

ALTER TABLE Sales 
ADD CONSTRAINT FK_Sales_Product 
    FOREIGN KEY (ProductKey) 
    REFERENCES Product (ProductKey);

ALTER TABLE Sales 
ADD CONSTRAINT FK_Sales_Store 
    FOREIGN KEY (StoreKey) 
    REFERENCES Store (StoreKey);

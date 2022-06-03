-- Create a new table called '[Customers]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Customers]', 'U') IS NOT NULL
DROP TABLE [dbo].[Customers]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Customers]
(
    [Id] INT IDENTITY(1,1) PRIMARY KEY, -- Primary Key column
    [FirstName] NVARCHAR(50) NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL,
    [Address] NVARCHAR(50) NOT NULL,
    [ZipCode] NVARCHAR(50) NOT NULL,
    [AreaCode] NVARCHAR(50) NOT NULL,
    [PhoneNumber] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO
 
-- Create a new table called '[OrderList1]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[OrderList1]', 'U') IS NOT NULL
DROP TABLE [dbo].[OrderList1]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[OrderList1]
(
    Id INT REFERENCES Customers(Id),
    [OrderNumber] NVARCHAR(50) NOT NULL,
    [Product] NVARCHAR(50) NOT NULL,
    [Price] NVARCHAR(50) NOT NULL,
    [Quantity] NVARCHAR(50) NOT NULL,
    [ProductId] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO
 
-- Create a new table called '[OrderList2]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[OrderList2]', 'U') IS NOT NULL
DROP TABLE [dbo].[OrderList2]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[OrderList2]
(
    Id INT REFERENCES Customers(Id),
    [OrderNumber] NVARCHAR(50) NOT NULL,
    [Product] NVARCHAR(50) NOT NULL,
    [Price] NVARCHAR(50) NOT NULL,
    [Quantity] NVARCHAR(50) NOT NULL,
    [ProductId] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO
 
-- Create a new table called '[OrderList3]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[OrderList3]', 'U') IS NOT NULL
DROP TABLE [dbo].[OrderList3]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[OrderList3]
(
    Id INT REFERENCES Customers(Id),
    [OrderNumber] NVARCHAR(50) NOT NULL,
    [Product] NVARCHAR(50) NOT NULL,
    [Price] NVARCHAR(50) NOT NULL,
    [Quantity] NVARCHAR(50) NOT NULL,
    [ProductId] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO
 
-- Create a new table called '[OrderList4]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[OrderList4]', 'U') IS NOT NULL
DROP TABLE [dbo].[OrderList4]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[OrderList4]
(
    Id INT REFERENCES Customers(Id),
    [OrderNumber] NVARCHAR(50) NOT NULL,
    [Product] NVARCHAR(50) NOT NULL,
    [Price] NVARCHAR(50) NOT NULL,
    [Quantity] NVARCHAR(50) NOT NULL,
    [ProductId] NVARCHAR(50) NOT NULL
);
GO
 
-- Create a new table called '[OrderList5]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[OrderList5]', 'U') IS NOT NULL
DROP TABLE [dbo].[OrderList5]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[OrderList5]
(
    Id INT REFERENCES Customers(Id),
    [OrderNumber] NVARCHAR(50) NOT NULL,
    [Product] NVARCHAR(50) NOT NULL,
    [Price] NVARCHAR(50) NOT NULL,
    [Quantity] NVARCHAR(50) NOT NULL,
    [ProductId] NVARCHAR(50) NOT NULL
);
GO
 
-- Create a new table called '[Payment]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Payment]', 'U') IS NOT NULL
DROP TABLE [dbo].[Payment]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Payment]
(
    Id INT REFERENCES Customers(Id),
    [OrderNumber] NVARCHAR(50) NOT NULL,
    [CardType] NVARCHAR(50) NOT NULL,
    [SecurityCode] NVARCHAR(50) NOT NULL,
    [CardNumber] NVARCHAR(50) NOT NULL,
    [ExpMonth] NVARCHAR(50) NOT NULL,
    [ExpYear] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO

-- Create a new table called '[Invoice]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Invoice]', 'U') IS NOT NULL
DROP TABLE [dbo].[Invoice]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Invoice]
(
    Id INT REFERENCES Customers(Id),
    [FirstName] NVARCHAR(50) NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL,
    [Product] NVARCHAR(50) NOT NULL,
    [Quantity] NVARCHAR(50) NOT NULL,
    [Price] NVARCHAR(50) NOT NULL,
    [BaseFee] INT,
    [Subtotal] DECIMAL
    -- Specify more columns here
);
GO

-- Create a new table called '[Profit]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Profit]', 'U') IS NOT NULL
DROP TABLE [dbo].[Profit]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Profit]
(
    Id INT REFERENCES Customers(Id), 
    [Subtotal] DECIMAL,
    [CommissionRate] DECIMAL NOT NULL,
    [Profit] DECIMAL
    -- Specify more columns here
);
GO
 
-- Insert rows into table 'Customers' in schema '[dbo]'
INSERT INTO [dbo].[Customers]
( -- Columns to insert data into
 [FirstName], [LastName], [Email], [Address], [ZipCode], [AreaCode], [PhoneNumber]
)
VALUES
( -- First row: values for the columns in the list above
 'Michael', 'Roberts', 'mrobertson@mc.com', '17 Farburn Terrace', '75056', '214', '3365214'
),
( -- Second row: values for the columns in the list above
 'Doug', 'Derrick', 'dderrick@timepath.co.uk', '99 Shire Oak Road', '97223', '541', '9988541'
),
(
    'Jessie', 'Marlowe', 'jmarlowe@aperture.us', '27 Cheshire Street', '36528', '256', '3315426'
),
(
    'Stan', 'Hamm', 'shamm@sugarwell.org', '10 Dam Road', '21076', '410', '1246225'
),
(
    'Michelle', 'Norton', 'mnorton@aperture.us', '13 White Rabbit Street',  '40507', '270', '3125456'
)
-- Add more rows here
GO
 
-- Insert rows into table 'Payment' in schema '[dbo]'
INSERT INTO [dbo].[Payment]
( -- Columns to insert data into
 [Id], [OrderNumber], [CardType], [SecurityCode], [CardNumber], [ExpMonth], [ExpYear]
)
VALUES
( -- First row: values for the columns in the list above
 1, '1001', 'Visa', '695', '5489379018766045', '05', '2020'
),
( -- Second row: values for the columns in the list above
 2, '1002', 'Visa', '968', '4556672519789149', '06', '2020'
),
(
    3, '1003', 'Visa', '347', '4530197605106694', '07', '2020'
),
(
    4, '1004', 'Visa', '179', '4072172700076005', '08', '2020' 
),
(
    5, '1005', 'Visa', '864', '5136713099660775', '09', '2020' 
)
-- Add more rows here
GO
 
-- Insert rows into table 'OrderList1' in schema '[dbo]'
INSERT INTO [dbo].[OrderList1]
( -- Columns to insert data into
 [Id], [OrderNumber], [Product], [Price], [Quantity], [ProductId]
)
VALUES
( -- First row: values for the columns in the list above
 1, '1001', 'Aniseed Syrup', '10.00', '1', '3'
),
( -- Second row: values for the columns in the list above
 1, '1001', 'Northwoods Cranberry Sauce', '40.00', '1', '8'
),
(
    1, '1001', 'Veggie Spread', '43.90', '1', '63'
),
(
    1, '1001', 'Gula Malacca', '19.46', '1', '44'
),
(
    1, '1001', 'Genen Shouyu', '15.50', '1', '15'
)
-- Add more rows here
GO
 
-- Insert rows into table 'OrderList2' in schema '[dbo]'
INSERT INTO [dbo].[OrderList2]
( -- Columns to insert data into
 [Id], [OrderNumber], [Product], [Price], [Quantity], [ProductId]
)
VALUES
( -- First row: values for the columns in the list above
 2, '1002', 'Ipoh Coffee', '46.00', '1', '43'
),
( -- Second row: values for the columns in the list above
 2, '1002', 'Chang', '19.00', '1', '2'
),
(
    2, '1002', 'Guarana Fantastica', '4.50', '1', '24'
),
(
    2, '1002', 'Cote de Blaye', '263.50', '1', '38'
),
(
    2, '1002', 'Lakkalikorri', '18.00', '1', '76'
)
-- Add more rows here
GO
 
-- Insert rows into table 'OrderList3' in schema '[dbo]'
INSERT INTO [dbo].[OrderList3]
( -- Columns to insert data into
 [Id], [OrderNumber], [Product], [Price], [Quantity], [ProductId]
)
VALUES
( -- First row: values for the columns in the list above
 3, '1003', 'Northwoods Cranberry Sauce', '40.00', '1', '8'
),
( -- Second row: values for the columns in the list above
 3, '1003', 'Louisiana Hot Spiced Okra', '17.00', '1', '66'
),
(
    3, '1003', 'Genen Shouyu', '15.50', '1', '15'
),
(
    3, '1003', 'Original Frankfurter Grune SoBe', '13.00', '1', '77'
),
(
    3, '1003', 'Louisiana Fiery Hot Pepper Sauce', '21.06', '1', '65'
)
-- Add more rows here
GO
 
-- Insert rows into table 'OrderList4' in schema '[dbo]'
INSERT INTO [dbo].[OrderList4]
( -- Columns to insert data into
 [Id], [OrderNumber], [Product], [Price], [Quantity], [ProductId]
)
VALUES
(
    4, '1004', 'Original Frankfurter Grune SoBe', '13.00', '1', '77'
),
(
    4, '1004', 'Gula Malacca', '19.46', '1', '44'
),
(
    4, '1004', 'Louisiana Fiery Hot Pepper Sauce', '21.06', '1', '65'
),
(
    4, '1004', 'Aniseed Syrup', '10.00', '1', '3'
),
(
    4, '1004', 'Veggie Spread', '43.90', '1', '63'
)
-- Add more rows here
GO
 
-- Insert rows into table 'OrderList5' in schema '[dbo]'
INSERT INTO [dbo].[OrderList5]
( -- Columns to insert data into
 [Id], [OrderNumber], [Product], [Price], [Quantity], [ProductId]
)
VALUES
(
    5, '1005', 'Rhonbrau Klosterbier', '7.76', '1', '75'
),
(
    5, '1005', 'Outback Lager', '15.00', '1', '70'
),
(
    5, '1005', 'Steeleye Stout', '18.00', '1', '35'
),
(
    5, '1005', 'Sasquatch Ale', '14.00', '1', '34'
),
(
    5, '1005', 'Laughing Lumberjack Lager', '14.00', '1', '67'
)
-- Add more rows here
GO


-- Insert rows into table 'Invoice' in schema '[dbo]'
INSERT INTO [dbo].[Invoice]
( -- Columns to insert data into
 [Id], [FirstName], [LastName], [Product], [Quantity], [Price], [Subtotal]
)
VALUES
( -- First row: values for the columns in the list above
 1, 'Michael', 'Roberts', ColumnValue3
),
( -- Second row: values for the columns in the list above
 ColumnValue1, ColumnValue2, ColumnValue3
)
-- Add more rows here
GO

-- Insert rows into table 'Profit' in schema '[dbo]'
INSERT INTO [dbo].[Profit]
( -- Columns to insert data into
 [Id], [Subtotal], [CommissionRate], [Profit]
)
VALUES
( -- First row: values for the columns in the list above
 1, ColumnValue2, ColumnValue3
),
( -- Second row: values for the columns in the list above
 2, ColumnValue1, ColumnValue2, ColumnValue3
),
(
    3,
),
(
    4,
),
(
    5,
)
-- Add more rows here
GO

SELECT * FROM Invoice;
select * from OrderList1;
select * from Profit;
SELECT * from Customers;
SELECT * from Payment;
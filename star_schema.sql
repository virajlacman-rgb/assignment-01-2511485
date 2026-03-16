-- Dimension: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    month INT NOT NULL,
    year INT NOT NULL
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    store_city VARCHAR(50) NOT NULL
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL
);

-- Fact Table
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    total_sales DECIMAL(10,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert Date Dimension
INSERT INTO dim_date VALUES
(1,'2024-01-01',1,2024),
(2,'2024-01-02',1,2024),
(3,'2024-02-01',2,2024);

-- Insert Store Dimension
INSERT INTO dim_store VALUES
(1,'Store A','Mumbai'),
(2,'Store B','Delhi'),
(3,'Store C','Bangalore');

-- Insert Product Dimension
INSERT INTO dim_product VALUES
(1,'Laptop','Electronics'),
(2,'T-Shirt','Clothing'),
(3,'Rice','Groceries');

-- Insert Fact Sales
INSERT INTO fact_sales VALUES
(1,1,1,1,2,50000,100000),
(2,1,2,2,5,500,2500),
(3,2,3,3,10,60,600),
(4,2,1,2,3,500,1500),
(5,3,2,1,1,50000,50000),
(6,3,3,3,6,60,360),
(7,1,1,3,8,60,480),
(8,2,2,2,4,500,2000),
(9,3,3,1,2,50000,100000),
(10,1,2,3,12,60,720);

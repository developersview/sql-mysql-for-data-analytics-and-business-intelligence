/*----------------Create tables--------------------*/
-- sales table
CREATE TABLE sales (
    purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY (purchase_number)
);

-- customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT
);

-- items table
CREATE TABLE items (
    item_code VARCHAR(10) NOT NULL,
    item VARCHAR(255),
    unit_price NUMERIC(10 , 2 ),
    company_id VARCHAR(255),
    PRIMARY KEY (item_code)
);

-- companies table
CREATE TABLE companies (
    company_id VARCHAR(255) NOT NULL,
    company_name VARCHAR(255),
    headquaters_phone_number NUMERIC(12),
    PRIMARY KEY (company_id)
);


/*--------------Select from tables---------------*/
SELECT * FROM sales.sales;
SELECT * FROM sales.customers;    
SELECT * FROM sales.items;
SELECT * FROM sales.companies;

/*----------------Drop tables--------------------*/
DROP TABLE customers;
DROP TABLE sales;
DROP TABLE items;
DROP TABLE companies;
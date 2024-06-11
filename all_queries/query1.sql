/*----------------Create tables--------------------*/
-- sales table
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY (purchase_number),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
        ON DELETE CASCADE
);

-- customers table
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY(customer_id)
);

-- items table
DROP TABLE IF EXISTS items;
CREATE TABLE items (
    item_code VARCHAR(10) NOT NULL,
    item VARCHAR(255),
    unit_price NUMERIC(10 , 2 ),
    company_id VARCHAR(255),
    PRIMARY KEY (item_code)
);

-- companies table
DROP TABLE IF EXISTS companies;
CREATE TABLE companies (
    company_id VARCHAR(255) NOT NULL,
    company_name VARCHAR(255),
    headquaters_phone_number NUMERIC(12),
    PRIMARY KEY (company_id)
);

/*--------------Alter tables---------------*/
ALTER TABLE sales 
ADD FOREIGN KEY(item_code) REFERENCES items(item_code);

ALTER TABLE items
ADD FOREIGN KEY(company_id) REFERENCES companies(company_id);

ALTER TABLE customers
ADD UNIQUE KEY(email_address);

ALTER TABLE customers
DROP INDEX email_address;

ALTER TABLE customers
ADD COLUMN gender ENUM ('M','F') AFTER last_name;

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT;

ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) DEFAULT 'X',
CHANGE COLUMN headquaters_phone_number headquaters_phone_number NUMERIC(12) DEFAULT 0;
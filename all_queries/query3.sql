/*--------------insert into tables---------------*/
INSERT INTO customers(first_name, last_name, gender, email_address)
VALUES ('Pranoy','Chakraborty','M','pranoy1729@gmail.com');

INSERT INTO customers(first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('Pranoy','Chakraborty','M','pranoy8086@gmail.com',0),
	   ('Alice','McPhee','M','alicemp@gmail.com',2),
       ('Donald','Trump','M','donaldtrump@gmail.com',3),
       ('Natasha','Romanoff','F','natroma@outlook.com',1);
       
INSERT INTO companies(company_id, company_name, headquaters_phone_number)
VALUES ('6234H','CGI','+1-582-5818515'),
	   ('9629T','DXC','+1-859-7849226'),
       ('7805T','TCS','+91-7815878942');

/*--------------Truncate table with foreign key constraint---------------*/
SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE table customers; 
SET FOREIGN_KEY_CHECKS = 1;

/*--------------DELETE FROM table with foreign key constraint---------------*/
SET SQL_SAFE_UPDATES = 0;
DELETE FROM companies;
SET SQL_SAFE_UPDATES = 1;

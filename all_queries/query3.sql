/*--------------insert into tables---------------*/
INSERT INTO customers(first_name, last_name, gender, email_address)
VALUES ('Pranoy','Chakraborty','M','pranoy1729@gmail.com');

INSERT INTO customers(first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('Pranoy','Chakraborty','M','pranoy8086@gmail.com',0),
	   ('Alice','McPhee','M','alicemp@gmail.com',2),
       ('Donald','Trump','M','donaldtrump@gmail.com',3),
       ('Natasha','Romanoff','F','natroma@outlook.com',1);

/*--------------Truncate table with foreign key constraint---------------*/
SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE table customers; 
SET FOREIGN_KEY_CHECKS = 1;

DELETE FROM customers;
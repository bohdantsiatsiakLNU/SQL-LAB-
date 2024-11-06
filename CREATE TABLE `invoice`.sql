USE company;

CREATE TABLE IF NOT EXISTS `invoice` (
	`invoice_id` bigint(15) NOT NULL,
	`employee_id` int(11) NOT NULL,
	`customer_id` int(11) NOT NULL,
	`payment_method` int(11) NOT NULL,
	`transaction_moment` datetime,
	`status` varchar(10)
    ); 

-- ALTER TABLE - ADD Column

ALTER TABLE 
    orders
ADD 
    invoice_id bigint(15) NOT NULL; 

ALTER TABLE 
    orders
ADD 
    order_datetime DATETIME NOT NULL;
    
ALTER TABLE 
    orders
ADD 
    quantity INT NOT NULL;
     
-- ALTER TABLE - DROP Column

ALTER TABLE 
    orders
DROP COLUMN 
    transaction_type;
    
ALTER TABLE 
    orders
DROP COLUMN 
    transaction_moment;
    
ALTER TABLE 
    orders
DROP COLUMN 
    amount;
    
-- ALTER TABLE - MODIFY COLUMN
ALTER TABLE 
    customer
MODIFY COLUMN 
    phone_number BIGINT(15) NOT NULL;
    
ALTER TABLE 
    employee
MODIFY COLUMN 
    position varchar(30) NOT NULL;    

ALTER TABLE 
    department
MODIFY COLUMN 
    street varchar(50) NOT NULL;

ALTER TABLE 
    department
MODIFY COLUMN 
    building_no INT(4);

ALTER TABLE
    invoice
ADD PRIMARY KEY (invoice_id);

ALTER TABLE 
    orders
DROP FOREIGN KEY orders_fk0;

ALTER TABLE 
    orders
DROP FOREIGN KEY orders_fk2;

ALTER TABLE 
    orders
ADD CONSTRAINT 
    orders_fk3
FOREIGN KEY 
    (invoice_id)
REFERENCES 
    invoice(invoice_id);
    
ALTER TABLE 
    invoice
ADD CONSTRAINT 
    invoice_fk0
FOREIGN KEY 
    (employee_id)
REFERENCES 
    employee(employee_id);
    
ALTER TABLE 
    department
ALTER 
    city
SET DEFAULT 
    'Lviv';
    
ALTER TABLE 
    employee
ADD UNIQUE 
    (user_name);

    






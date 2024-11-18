USE company;

SELECT 
	*
FROM
    customer
ORDER BY 
    last_name;

SELECT DISTINCT 
	manufacture
FROM 
    product
ORDER BY 
    manufacture ASC;

SELECT
	product_name,
    manufacture,
    category,
    product_type,
    price
FROM 
    product
WHERE 
    manufacture = 'DELL'
ORDER By
    product_name ASC;
    
SELECT 
	first_name,
    last_name,
    genger,
    birth_date,
    phone_number
FROM 
    customer
WHERE
	genger = 'F'
AND
(
    birth_date >= '1990-01-01'
and
    birth_date <= '2000-12-31'
)
ORDER By
    last_name ASC;
    
SELECT 
    * 
FROM 
	product 
WHERE
    category = 'NOTEBOOK' 
AND
    product_description LIKE '%512GB%';
    
SELECT 
	*
FROM
	product
WHERE 
(
	category = 'NOTEBOOK' 
OR 
    category = 'Desktops'
)
AND
(
    product_description LIKE '%512%'
or
    product_description LIKE '%1TB%'
);

SELECT 
    *
FROM
    invoice
WHERE 
    customer_id IS NULL;
USE company;

SELECT
    employee_id "Manager ID",
    last_name "Manager Last Name",
    first_name 'Manager First Name',
    position 'Manager Title',
    employment_date AS 'Manager Hire Date' 
FROM 
    employee AS Managers
WHERE 
	position IN ('CEO', 'Manager');
    
SELECT
    e.employee_id "Employee ID",
    e.last_name "Employee Last Name",
    e.first_name 'Employee First Name',
    e.position 'Employee Title',
    e.employment_date AS 'Employee Hire Date',
    e.manager_id "Employee Manager ID",
    m.employee_id "Manager ID",
    m.last_name "Manager Last Name",
    m.first_name 'Manager First Name',
    m.position 'Manager Title',
    m.employment_date AS 'Manager Hire Date'
FROM
    employee AS e,
    employee AS m
WHERE 
    e.manager_id = m.employee_id;
    
SELECT
    e.employee_id "Employee ID",
    e.last_name "Employee Last Name",
    e.first_name 'Employee First Name',
    e.position 'Employee Title',
    e.department_id "Employee Department ID",
    d.department_id "Department ID",
    d.department_name "Department name"
FROM
    employee AS e,
    department AS d
WHERE 
	e.department_id = d.department_id;
    
SELECT
    e.employee_id "Employee ID",
    e.last_name "Employee Last Name",
    e.first_name 'Employee First Name',
	e.position 'Employee Title',
	i.employee_id "Invoice Employee ID",
    i.invoice_id 'Invoice',
    i.transaction_moment 'Transaction moment'
FROM
    employee AS e
JOIN
    invoice AS i
ON 
    e.employee_id = i.employee_id
ORDER By
    i.transaction_moment;	


    
    
    
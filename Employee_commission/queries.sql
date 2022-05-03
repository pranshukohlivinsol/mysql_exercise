1.
a.
SELECT e.name, SUM(commission_amount) 
  FROM commissions AS c JOIN employees AS e ON c.employee_id=e.id 
  GROUP BY employee_id LIMIT 1;
  
  
b.(alternative)
SELECT name, max(comm) 
  FROM (
    SELECT e.name AS name, sum(commission_amount) AS comm  
      FROM commissions AS c JOIN employees AS e ON c.employee_id=e.id 
      GROUP BY employee_id
  ) AS A;


2.
SELECT salary 
  FROM employees 
  ORDER BY salary DESC 
  LIMIT 3,1;


3.
SELECT sum(commission_amount) AS comm, e.department_id AS dept_id, d.name as dept_name  
  FROM commissions AS c JOIN employees AS e JOIN departments as d 
  ON c.employee_id=e.id  AND e.department_id=d.id   
  GROUP BY d.id 
  ORDER BY comm DESC
  LIMIT 1;
  
4.
SELECT 
  GROUP_CONCAT(e.name SEPARATOR ', ') AS Employee_Names, 
  c.commission_amount 
FROM employees AS e 
  JOIN commissions as c ON e.id=c.employee_id 
 WHERE c.commission_amount>3000 
 GROUP BY c.commission_amount;


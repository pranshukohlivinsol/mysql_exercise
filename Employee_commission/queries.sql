1.
SELECT e.name, SUM(commission_amount) 
  FROM commissions AS c JOIN employees AS e ON c.employee_id=e.id 
  GROUP BY employee_id LIMIT 1;
  
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
SELECT d.name, max(comm) 
  FROM (
    SELECT e.name AS name, SUM(commission_amount) AS comm, e.department_id AS dept  
    FROM commissions AS c JOIN employees AS e ON c.employee_id=e.id 
    GROUP BY employee_id
  ) AS a JOIN departments AS d ON a.dept=d.id;

1.
SELECT e.name, SUM(commission_amount) 
  FROM commissions AS c JOIN employees AS e ON c.employee_id=e.id 
  GROUP BY employee_id LIMIT 1;
SELECT name, max(comm) FROM (
  SELECT e.name AS name, sum(commission_amount) AS comm  
    FROM commissions AS c JOIN employees AS e ON c.employee_id=e.id 
    GROUP BY employee_id
  ) AS A;

2.


```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might return unexpected results if there are NULL values in the 'salary' column.  The comparison `salary > 100000` will treat NULL as neither greater than nor less than 100000, effectively excluding employees with NULL salaries from the result even if they are in the 'Sales' department.
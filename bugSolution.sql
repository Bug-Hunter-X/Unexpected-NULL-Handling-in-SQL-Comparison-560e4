```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;
```
This revised query explicitly checks for non-NULL salaries using `salary IS NOT NULL`.  This ensures that only employees with salaries greater than 100000 and not having a NULL salary are included in the results, fixing the omission issue.
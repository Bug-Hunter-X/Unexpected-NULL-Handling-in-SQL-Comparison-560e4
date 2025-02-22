# SQL NULL Handling Bug

This repository demonstrates a common SQL bug related to handling NULL values in comparisons.  The `bug.sql` file contains a query that unintentionally omits rows with NULL values in the 'salary' column.  The solution (`bugSolution.sql`) demonstrates how to correctly handle NULLs to get the expected results.  This is a crucial consideration when working with databases as NULL values are often present and can lead to unexpected behaviors if not properly addressed.

**Reproducing the Bug:**
1.  Create a table named 'employees' with columns `department` (VARCHAR) and `salary` (NUMERIC).
2.  Insert some sample data, including rows with NULL salaries.
3.  Execute the query in `bug.sql`.  Note that employees with NULL salaries are not included even if they belong to the 'Sales' department.

**Understanding the Solution:**
The solution utilizes the `IS NOT NULL` check to explicitly include rows where 'salary' is not NULL and combines it with the original condition using `AND`. This ensures that all employees meeting both criteria (department and salary) are included in the result set. 
SELECT
    department_id,
    AVG(salary) AS avg_salary
FROM
    employees
WHERE
    salary > 50000
GROUP BY
    department_id
HAVING
    COUNT(*) > 5
ORDER BY
    avg_salary DESC
LIMIT
    10;


-------------------- [ Execution Order ] --------------------
]
/*
 1- FROM: The query begins by selecting data from the employees table.
 2- WHERE: Rows are filtered based on the condition salary > 50000, only including rows where the salary is greater than $50,000.
 3- GROUP BY: The result set is then grouped by the department_id.
 4- HAVING: Groups are filtered based on the condition COUNT(*) > 5, only including groups with more than 5 employees.
 5- SELECT: Columns department_id and the average salary AVG(salary) within each department are selected for the final result set. The AVG(salary) is aliased as avg_salary.
 6- ORDER BY: The result set is sorted based on the avg_salary in descending order (DESC).
 7- LIMIT: Finally, the result set is limited to the first 10 rows.
 */
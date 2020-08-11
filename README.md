# sql-challenge

## Review data and define relationships between tables

Key consideration: as data covers a relatively long period of time (1980s-1990s), data is historical and therefore is not a snapshot of current status. Hence, it is likely that an employee who stayed long enough with the company will have multiple records across different tables, e.g. working in different deparments or having different due to transfer or promotion

dept_manager 0/many-to-one employees because not every employee is a manager; can be manager at different depts over time (and employees has unique primary key/parent table)

dept_emp many-to-one employees because employees can work at different depts over time (and employees has unique primary key/parent table)

employees one-to-one salaries because each emp_no is unique key

employees many-to-one titles because a title can be used by mnay employees (and titles has unique primary key/parent table)

dept_manager many-to-one departments because a department can have more than one managers (and departments has unique primary key/parent table)

dept_emp many-to-one departments because a department can have more than one employees (and departments has unique primary key/parent table)


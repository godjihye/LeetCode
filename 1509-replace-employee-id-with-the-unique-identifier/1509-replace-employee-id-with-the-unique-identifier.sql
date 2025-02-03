# Write your MySQL query statement below

select uni.unique_id, emp.name
FROM EmployeeUNI uni right outer join Employees emp on uni.id = emp.id

